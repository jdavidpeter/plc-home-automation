PROGRAM VentillationControl

  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
     commUnit: fbModbusRTUmas2;
     modbusErrorMessage: String;
     
     presenceBasedActivity                : BOOL := FALSE;
     coolingNeeded                        : BOOL := FALSE;

     setPresenceBasedVentillationToZero   : R_TRIG;
     setPresenceBasedVentillationToActive : F_TRIG;
     
     setCoolingBasedVentillationToZero    : F_TRIG;
     setCoolingBasedVentillationToActive  : R_TRIG;
     
     activateBypassVentialltionLevel      : R_TRIG;
     deactivateBypassVentialltionLevel    : F_TRIG;
     
     formerNilanDesiredVentillationLevel : INT := 0;
     formerNilanDesiredTemperature       : INT := 0;
     actualModbusCommandGroup            : USINT := C_NILAN_READ_COMMAND_GROUP;
     
     normalVentillationLevel             : INT := 1;
     bypassVentillationLevel             : INT := 3;
  END_VAR
  VAR_TEMP
  END_VAR
  
  NILAN_DESIRED_TEMPERATURE_SCALED := NILAN_DESIRED_TEMPERATURE*100;
  
  presenceBasedActivity := GONE_FOR_5_HOURS OR (ALARM_ACTIVE AND GONE_FOR_LONG_TIME);
  coolingNeeded := INT_TO_REAL(NILAN_DESIRED_TEMPERATURE) < NILAN_ACTUAL_CONTROLLED_TEMPERATURE;
  
  setPresenceBasedVentillationToZero(CLK := presenceBasedActivity);
  setPresenceBasedVentillationToACtive(CLK := presenceBasedActivity);

  setCoolingBasedVentillationToZero(CLK := coolingNeeded);
  setCoolingBasedVentillationToActive(CLK := coolingNeeded);
  
  activateBypassVentialltionLevel(CLK := NILAN_BYPASS_IS_ENABLED);
  deactivateBypassVentialltionLevel(CLK := NILAN_BYPASS_IS_ENABLED);
  
  // Turn off ventillation when no cooling is required and we're not at home
  IF setPresenceBasedVentillationToZero.Q AND setCoolingBasedVentillationToZero.Q THEN
    NILAN_DESIRED_VENTILLATION_LEVEL := 0;
  // Turn on ventillation someone is at home or we need cooling
  ELSIF setPresenceBasedVentillationToActive.Q OR setCoolingBasedVentillationToActive.Q THEN
    IF NILAN_BYPASS_IS_ENABLED THEN
      NILAN_DESIRED_VENTILLATION_LEVEL := bypassVentillationLevel;
    ELSE
      NILAN_DESIRED_VENTILLATION_LEVEL := normalVentillationLevel;
    END_IF;
  END_IF;
  
  IF activateBypassVentialltionLevel.Q THEN
    IF NILAN_DESIRED_VENTILLATION_LEVEL < bypassVentillationLevel THEN
      NILAN_DESIRED_VENTILLATION_LEVEL := bypassVentillationLevel;
    END_IF;
  END_IF;
  
  IF deactivateBypassVentialltionLevel.Q THEN
    IF NILAN_DESIRED_VENTILLATION_LEVEL > normalVentillationLevel THEN
      NILAN_DESIRED_VENTILLATION_LEVEL := normalVentillationLevel;
    END_IF;
  END_IF;
  
  IF NOT formerNilanDesiredVentillationLevel = NILAN_DESIRED_VENTILLATION_LEVEL THEN

     actualModbusCommandGroup := C_NILAN_SET_VENTILLATION_LEVEL_COMMAND_GROUP;

     IF commUnit.LastCmd = C_NILAN_SET_VENTILLATION_LEVEL_INDEX THEN
       formerNilanDesiredVentillationLevel := NILAN_DESIRED_VENTILLATION_LEVEL;
     END_IF;
     
  ELSIF NOT formerNilanDesiredTemperature = NILAN_DESIRED_TEMPERATURE THEN

     actualModbusCommandGroup := C_NILAN_SET_DESIRED_TEMPERATURE_COMMAND_GROUP;

     IF commUnit.LastCmd = C_NILAN_SET_DESIRED_TEMPERATURE_INDEX THEN
       formerNilanDesiredTemperature := NILAN_DESIRED_TEMPERATURE;
     END_IF;

  ELSE

    actualModbusCommandGroup := C_NILAN_READ_COMMAND_GROUP;

  END_IF;
  
  commUnit(EN := true, GrSel := actualModbusCommandGroup, MaxCmd := C_NUMBER_OF_NILAN_COMMANDS,
             chanCode := CH2_uni, Endian := 0, Commands := NILAN_COMMANDS[1],
             MBtimeOut := T#30s, Delay := T#500ms);

  IF commUnit.ErrCode > 0 THEN
    GetModbusErrTxt(commUnit.ErrCode, modbusErrorMessage);
  END_IF;
  
  IF commUnit.Done THEN
     actualModbusCommandGroup := C_NILAN_READ_COMMAND_GROUP;
  END_IF;
  

  // Copy ventillation telemetry to global storage variables
  NILAN_USER_FUNCTION := INT_TO_BOOL(NILAN_STATUS[1]);
  NILAN_AIR_FILTER_ALARM := INT_TO_BOOL(NILAN_STATUS[2]);
  NILAN_ACTUAL_VENTILLATION_FAN_LEVEL := NILAN_ACTUAL_VENTILLATION[1];
  
  NILAN_CONTROLLER_BOARD_TEMPERATURE := INT_TO_REAL(NILAN_CORE_DIAGNOSTICS[1]) / 100;
  NILAN_FRESH_AIR_INTAKE_TEMPERATURE := INT_TO_REAL(NILAN_CORE_DIAGNOSTICS[2]) / 100;
  NILAN_INLET_TEMPERATURE_BEFORE_HEATER := INT_TO_REAL(NILAN_CORE_DIAGNOSTICS[3]) / 100;
  NILAN_ROOM_EXHAUST_TEMPERATURE := INT_TO_REAL(NILAN_CORE_DIAGNOSTICS[4]) / 100;
  NILAN_OUTLET_TEMPERATURE := INT_TO_REAL(NILAN_CORE_DIAGNOSTICS[5]) / 100;
  NILAN_CONDENSER_TEMPERATURE := INT_TO_REAL(NILAN_CORE_DIAGNOSTICS[6]) / 100;
  NILAN_EVAPORATOR_TEMPERATURE := INT_TO_REAL(NILAN_CORE_DIAGNOSTICS[7]) / 100;
  NILAN_INLET_TEMPERATURE_AFTER_HEATER := INT_TO_REAL(NILAN_CORE_DIAGNOSTICS[8]) / 100;
  NILAN_OUTDOOR_TEMPERATURE := INT_TO_REAL(NILAN_CORE_DIAGNOSTICS[9]) / 100;
  NILAN_HEATING_SURFACE_TEMPERATURE := NILAN_CORE_DIAGNOSTICS[10];
  NILAN_EXTERNAL_ROOM_TEMPERATURE := NILAN_CORE_DIAGNOSTICS[11];
  NILAN_HOT_WATER_TOP_TEMPERATURE := NILAN_CORE_DIAGNOSTICS[12];
  NILAN_HOT_WATER_BOTTOM_TEMPERATURE := NILAN_CORE_DIAGNOSTICS[13];
  NILAN_EK_RETURN_TEMPERATURE := NILAN_CORE_DIAGNOSTICS[14];
  NILAN_EK_SUPPLY_TEMPERATURE := NILAN_CORE_DIAGNOSTICS[15];
  NILAN_USER_PANEL_ROOM_TEMPERATURE := NILAN_CORE_DIAGNOSTICS[16];
  NILAN_AUX_TEMPERATURE_HOTWATER_ANODE := NILAN_CORE_DIAGNOSTICS[17];
  NILAN_PREHEATER_OR_EARTH_TUBE_AIR_INTAKE_TEMPERATURE := NILAN_CORE_DIAGNOSTICS[18];
  NILAN_PRESSURE_PIBE_TEMPERATURE := NILAN_CORE_DIAGNOSTICS[19];
  NILAN_SUCTION_PRESSURE := NILAN_CORE_DIAGNOSTICS[20];
  NILAN_DISCHAGE_PRESSURE := NILAN_CORE_DIAGNOSTICS[21];
  NILAN_HUMIDITY_SENSOR_VALUE := INT_TO_REAL(NILAN_CORE_DIAGNOSTICS[22])/100;
  NILAN_CARBON_DIOXIDE_SENSOR_VALUE := NILAN_CORE_DIAGNOSTICS[23];

  NILAN_DAYS_SINCE_LAST_FILTER_CHANGE := NILAN_ACTUAL_DISPLAY_GROUP_01[7];
  NILAN_BYPASS_IS_ENABLED := INT_TO_BOOL(NILAN_ACTUAL_DISPLAY_GROUP_01[1]);
  
  NILAN_ACTUAL_CONTROLLED_TEMPERATURE := INT_TO_REAL(NILAN_CONTROLLED_TEMPARATURES[3])/100;
  
  // This should by scaled by 100 according to the docs, but then I have 100%+ efficiency
  NILAN_PASSIVE_HEAT_EXCHANGER_EFFICIENCY := INT_TO_REAL(NILAN_CONTROLLED_TEMPARATURES[5])/1000;

  // Flagging errors requiring physical attention
  NILAN_ACTIVE_ERROR := FALSE;

  IF NILAN_USER_FUNCTION THEN
    NILAN_ACTIVE_ERROR := TRUE;
  END_IF;

END_PROGRAM


