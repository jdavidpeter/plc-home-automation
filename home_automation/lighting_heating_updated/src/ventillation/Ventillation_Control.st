TYPE

  TemperatureDataBlock : STRUCT
    controllerBoardTemperature : REAL;
    IntakeTemperature : REAL;
    inletTemperature : REAL;
    exhaustTemparature : REAL;
    outletTemperature : REAL;
    condenserTemperature : REAL;
    evaporatorTemperature : REAL;
    afterHeatingInletTemperature : REAL;
    outdoorTemperature : REAL;
    heatingSurfaceTemperature : REAL;
END_STRUCT;

END_TYPE

VAR_GLOBAL CONSTANT
  C_NUMBER_OF_COMMANDS : SINT := 1;
END_VAR
  
VAR_GLOBAL
  Temps : TemperatureDataBlock;
  CmdCH2 : ARRAY [1..C_NUMBER_OF_COMMANDS] OF TCmdStruct;
END_VAR
  
PROGRAM Ventillation_Control

  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
     modbusUnit: ModbusRTUmas;
  END_VAR
  VAR_TEMP
  END_VAR
  
  ModbusCmd(Gr:=1, FNC:=03, SNo:=1,
  StAdr:=200, NoPoint:=SIZEOF(Temps)/2,
  PtrData:=adr(Temps), Cmd:=CmdCH2[1]);
  
  modbusUnit(EN := true, GrSel := 1, MaxCmd := C_NUMBER_OF_COMMANDS, chanCode := CH2_uni, Endian := 0, Commands := CmdCH2[1]);

  
END_PROGRAM


