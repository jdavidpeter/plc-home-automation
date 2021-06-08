PROGRAM HeatingControl
(*Controlling Vaillant Exotec Exclusive heating bioler over VR33 OpenTherm card using tecomat OpenTherm unit.
*)

  VAR
    // Techincals for OpenThem communication
    vaillant_opentherm : fbOpenTherm;
    commEnable : BOOL := true;

    termosztatok : ARRAY [0 .. C_HEATING_ZONES - 1] OF IPidHeatController;
    eloremenoVizhoRequests : ARRAY [0 .. C_HEATING_ZONES - 1] OF REAL;
    
    // Boiler heating state
    heating_inditas : BOOL := false;

    i : INT := 0;
    activeZones : REAL := 0;
    
    downstairsPumpRequest : BOOL := false;
    upstairsPumpRequest : BOOL := false;
    downstairsPumpActivationIdozito: TON;
    upstairsPumpActivationIdozito: TON;
    downstairsPumpDeactivationIdozito : TOF;
    upstairsPumpDeactivationIdozito : TOF;
    pumpActivationDelay : TIME := T#10m;
    pumpDeactivationDelay : TIME := T#1m;
    
  END_VAR

    // Eredõ vezérlés
    SUM_HEATING_REQUIREMENT := false;
    downstairsPumpRequest := false;
    upstairsPumpRequest := false;
    SUM_HEATING_WATER_TEMPERATURE_REQUIREMENT := 0;
    activeZones := 0;
    
    // Keep heating water temperature within limits
    IF HOT_WATER_TEMPERATURE > C_MAXIMUM_HOT_WATER_TEMPERATURE THEN
       HOT_WATER_TEMPERATURE := C_MAXIMUM_HOT_WATER_TEMPERATURE;
    END_IF;
    
    IF HOT_WATER_TEMPERATURE < C_MINIMUM_HOT_WATER_TEMPERATURE THEN
       HOT_WATER_TEMPERATURE := C_MINIMUM_HOT_WATER_TEMPERATURE;
    END_IF;

    FOR i := 0 TO C_HEATING_ZONES - 1 DO
        // avoid unlimited accumlation of integrative error
        IF HEATING_ENABLE THEN
            termosztatok[i](
                actualTemperature := MEASURED_TEMPERATURES[i]^,
                setpoint := DESIRED_TEMPERATURES[i]^,
                actualHeatingTemperature := eloremenoVizhoRequests[i],
                samplingTime := HEATING_CONTROL_SAMPLING_TIME,
                k := IPID_K,
                tI := IPID_TI,
                tD := IPID_TD,
                minimumHeatingTemperature := C_MINIMUM_HEATING_TEMPERATURE,
                maximumHeatingTemparature := C_MAXIMUM_HEATING_TEMPERATURE,
                overshootHisteresis := OVERSHOOT_HISTERESIS
            );
        END_IF;
        // Enable heat request for a zone only if global control flag is enabled
        heatingRequests[i] := termosztatok[i].heatRequest AND HEATING_ENABLE;
        eloremenoVizhoRequests[i] := termosztatok[i].heatingTemperature;
        SUM_HEATING_REQUIREMENT := SUM_HEATING_REQUIREMENT OR heatingRequests[i];
        IF heatingRequests[i] THEN
            SUM_HEATING_WATER_TEMPERATURE_REQUIREMENT := SUM_HEATING_WATER_TEMPERATURE_REQUIREMENT + eloremenoVizhoRequests[i];
            activeZones := activeZones + 1;
        END_IF;

        IF heatingRequests[i] THEN
            IF i < C_DOWNSTAIRS_ZONE_MAX_INDEX_PLUS_ONE THEN
                downstairsPumpRequest := true;
            ELSE
                upstairsPumpRequest := true;
            END_IF;
        END_IF;
    END_FOR;
    
    IF activeZones > 0 THEN
       SUM_HEATING_WATER_TEMPERATURE_REQUIREMENT := SUM_HEATING_WATER_TEMPERATURE_REQUIREMENT / activeZones;
    END_IF;
    
    // Control valves
    FOR i := 0 TO C_HEATING_ZONES - 1 DO
        IF i < C_DOWNSTAIRS_ZONE_MAX_INDEX_PLUS_ONE THEN
            IF i = C_GARAGE_INDEX THEN
                // Tis is a normally closed valve
                VALVE_ACTUATORS[i]^ := heatingRequests[i] AND downstairsPumpRequest;
            ELSE
                VALVE_ACTUATORS[i]^ := NOT heatingRequests[i] AND downstairsPumpRequest;
            END_IF;
        ELSE
            VALVE_ACTUATORS[i]^ := NOT heatingRequests[i] AND upstairsPumpRequest;
        END_IF;
    END_FOR;

    downstairsPumpActivationIdozito(IN := downstairsPumpRequest, PT := pumpActivationDelay);
    downstairsPumpDeactivationIdozito(IN := downstairsPumpActivationIdozito.Q, PT := pumpDeactivationDelay);
    upstairsPumpActivationIdozito(IN := upstairsPumpRequest, PT := pumpActivationDelay);
    upstairsPumpDeactivationIdozito(IN := upstairsPumpActivationIdozito.Q, PT := pumpActivationDelay);

    STORAGE_PUMP := downstairsPumpDeactivationIdozito.Q;
    BOILER_PUMP_PLUG_LEFT := upstairsPumpDeactivationIdozito.Q;
    
    futoviz_temperature := SUM_HEATING_WATER_TEMPERATURE_REQUIREMENT;
    heating_inditas := downstairsPumpActivationIdozito.Q OR upstairsPumpActivationIdozito.Q;

    // Actual OpenTherm communication
    vaillant_opentherm(
      in_communicate := commEnable,
      in_CH_en := heating_inditas AND HEATING_ENABLE,
      in_DHW_en := HOT_WATER_ENABLE,
      in_CH_temp := futoviz_temperature,
      in_max_CH_temp := C_MAXIMUM_HEATING_TEMPERATURE,
      in_DHW_temp := HOT_WATER_TEMPERATURE,
      in_timeOut := T#10s,
      in_timeIdle := T#5s,
      UC1204_IN := void(OPENTHERM_IN),
      UC1204_OUT := void(OPENTHERM_OUT),
      OT_COMM_ARRAY := void(OT_COMM_ARRAY_GEMINOX_THRI)
    ); // Vailant Ecotec Exclusive should support all OT oiperations

    VAILLANT_ACN := vaillant_opentherm.out_ACN;
    VAILLANT_HEATING_TEMP := vaillant_opentherm.out_heating_temp;
    VAILLANT_DWH_TEMP  := vaillant_opentherm.out_DHW_temp;
    VAILLANT_OUTSIDE_TEMP := vaillant_opentherm.out_outside_temp;
    VAILLANT_RETURN_WATER_TEMP := vaillant_opentherm.out_ret_water_temp;
    VAILLANT_MODULATION_LEVEL := vaillant_opentherm.out_modulation_level;
    VAILLANT_PRESSURE_LEVEL := vaillant_opentherm.out_pressure_level;
    VAILLANT_BURNERS_RUNNING := vaillant_opentherm.out_burner_starts;
    VAILLANT_HEATING_ACTIVE := vaillant_opentherm.out_CH_active;
    VAILLANT_DWH_ACTIVE := vaillant_opentherm.out_DHW_active;
    VAILANT_DWH_PRESENT := vaillant_opentherm.out_DHW_present;
    VAILANT_MODULATION_SUPPORT := vaillant_opentherm.out_modulating;
    VAILANT_BURNER_ON := vaillant_opentherm.out_flame;
    VAILANT_ERROR := vaillant_opentherm.out_com_error;
    VAILLANT_DIAG_CODE := vaillant_opentherm.out_diag_code;
    VAILANT_COMMUNICATIONO_ERROR := vaillant_opentherm.out_com_error;


(*
  timer(IN := true, PT := T#5s);
  IF timer.Q THEN
    UcOut.cont.ACN := ack;
    UcOut.MSG_TYPE := 0;
    UcOut.DATA_ID := dataID;
    UcOut.DATA_VAL := 0;
    VAILLANT_OPENTHERM_OUT := UcOut;
    UcIn := VAILLANT_OPENTHERM_IN;
    timer(IN := false, PT := T#5s);
  END_IF;
 *)

   

END_PROGRAM

