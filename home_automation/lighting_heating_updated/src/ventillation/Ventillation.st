PROGRAM VentillationControl

  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
     commUnit: fbModbusRTUmas2;
     modbusErrorMessage: String;
     
     setPresenceBasedVentillationToZero : R_TRIG;
     setPresenceBasedVentillationToACtive : F_TRIG;
     presenceBasedActivity              : BOOL := FALSE;
     
     formerDesiredVentillationLevel : INT := 0;
     actualModbusCommandGroup : USINT := C_NILAN_READ_COMMAND_GROUP;
  END_VAR
  VAR_TEMP
  END_VAR
  
  presenceBasedActivity := GONE_FOR_5_HOURS OR (ALARM_ACTIVE AND GONE_FOR_LONG_TIME);
  
  setPresenceBasedVentillationToZero(CLK := presenceBasedActivity);
  setPresenceBasedVentillationToACtive(CLK := presenceBasedActivity);
  
  IF setPresenceBasedVentillationToZero.Q THEN
    DESIRED_VENTILLATION_LEVEL := 0;
  ELSIF setPresenceBasedVentillationToACtive.Q THEN
    DESIRED_VENTILLATION_LEVEL := 1;
  END_IF;
  
  IF NOT formerDesiredVentillationLevel = DESIRED_VENTILLATION_LEVEL THEN

     actualModbusCommandGroup := C_NILAN_SET_VENTILLATION_LEVEL_COMMAND_GROUP;

     IF commUnit.LastCmd = C_NILAN_SET_VENTILLATION_LEVEL_INDEX THEN
       formerDesiredVentillationLevel := DESIRED_VENTILLATION_LEVEL;
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

  
END_PROGRAM


