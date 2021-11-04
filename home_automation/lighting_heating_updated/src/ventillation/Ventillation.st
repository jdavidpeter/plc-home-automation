PROGRAM VentillationControl

  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
     commUnit: fbModbusRTUmas2;
     modbusErrorMessage: String;
     
     formerDesiredVentillationLevel : INT := 0;
     actualModbusCommandGroup : USINT := C_NILAN_READ_COMMAND_GROUP;
  END_VAR
  VAR_TEMP
  END_VAR
  
  IF NOT formerDesiredVentillationLevel = DESIRED_VENTILLATION_LEVEL THEN

  END_IF;
  
  commUnit(EN := true, GrSel := actualModbusCommandGroup, MaxCmd := C_NUMBER_OF_NILAN_COMMANDS,
             chanCode := CH2_uni, Endian := 0, Commands := NILAN_COMMANDS[1],
             MBtimeOut := T#30s, Delay := T#500ms);

  IF commUnit.ErrCode > 0 THEN
    GetModbusErrTxt(commUnit.ErrCode, modbusErrorMessage);
  END_IF;

  
END_PROGRAM


