PROGRAM VentillationControl

  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
     commUnit: fbModbusRTUmas2;
     writeUnit : ModbusRTUmas;
     readErrorMessage: String;
     writeErrorMessage: String;
     formerDesiredVentillationLevel : INT := 0;
  END_VAR
  VAR_TEMP
  END_VAR
  
  
  commUnit(EN := true, GrSel := 1, MaxCmd := C_NUMBER_OF_READ_COMMANDS,
             chanCode := CH2_uni, Endian := 0, Commands := VENTILLATION_READ_COMMANDS[1],
             MBtimeOut := T#30s, Delay := T#500ms);

  IF commUnit.ErrCode > 0 THEN
    GetModbusErrTxt(commUnit.ErrCode, readErrorMessage);
  END_IF;

  IF NOT (formerDesiredVentillationLevel = DESIRED_VENTILLATION_LEVEL) THEN
    commUnit(EN := true, GrSel := 1, MaxCmd := 1,
               chanCode := CH2_uni, Endian := 0, Commands := VENTILLATION_SET_FAN_LEVEL_COMMAND[1],
               MBtimeOut := T#30s);
    IF commUnit.ErrCode > 0 THEN
      GetModbusErrTxt(commUnit.ErrCode, writeErrorMessage);
    END_IF;
    formerDesiredVentillationLevel := DESIRED_VENTILLATION_LEVEL;
  END_IF;

  
END_PROGRAM


