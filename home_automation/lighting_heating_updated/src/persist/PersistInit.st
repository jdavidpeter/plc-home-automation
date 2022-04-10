PROGRAM PersistInit
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    init : BOOL := FALSE;
    i : INT := 0;
    ipidPath : STRING;
    heatingRootPath : STRING;
    roomTempPath : STRING;
    boilerControlPath : STRING;
    ventillationControlPath : STRING;
  END_VAR
  VAR_TEMP
  END_VAR

  ipidPath := CONCAT(C_PERSIST_DIRECTORY_ROOT, C_PERSIST_HEATING_IPID_SUBDIR);
  heatingRootPath := CONCAT(C_PERSIST_DIRECTORY_ROOT, C_PERSIST_HEATING_SUBDIR);
  roomTempPath := CONCAT(heatingRootPath, C_PERSIST_ROOM_TEMPERATURE_SUBDIR);
  boilerControlPath := CONCAT(heatingRootPath, C_PERSIST_BOILER_CONTROL_SUBDIR);
  ventillationControlPath := CONCAT(C_PERSIST_DIRECTORY_ROOT, C_VENTILLATION_SUBDIR);
  
  createDirectory(dirPath := C_PERSIST_DIRECTORY_ROOT);
    createDirectory(dirPath := ipidPath);
    createDirectory(dirPath := heatingRootPath);
        createDirectory(dirPath := roomTempPath);
        createDirectory(dirPath := boilerControlPath);

  IF NOT init THEN
    FOR i := 1 TO C_HEATING_ZONES DO
      REALS_TO_PERSIST[i] := DESIRED_TEMPERATURES[i-1];
      REALS_TO_PERSIST_NAMES[i] := INT_TO_STRING(i);
      REALS_TO_PERSIST_DIRS[i] := roomTempPath;
    END_FOR;
    
    REALS_TO_PERSIST[C_HEATING_ZONES + 1]        := ADR(IPID_K);
    REALS_TO_PERSIST_NAMES[C_HEATING_ZONES + 1]  := 'IPIDK';
    REALS_TO_PERSIST_DIRS[C_HEATING_ZONES + 1]   := boilerControlPath;
    REALS_TO_PERSIST[C_HEATING_ZONES + 2]        := ADR(IPID_TD);
    REALS_TO_PERSIST_NAMES[C_HEATING_ZONES + 2]  := 'IPIDTD';
    REALS_TO_PERSIST_DIRS[C_HEATING_ZONES + 2]   := boilerControlPath;
    REALS_TO_PERSIST[C_HEATING_ZONES + 3]        := ADR(IPID_TI);
    REALS_TO_PERSIST_NAMES[C_HEATING_ZONES + 3]  := 'IPIDTI';
    REALS_TO_PERSIST_DIRS[C_HEATING_ZONES + 3]   := boilerControlPath;
    REALS_TO_PERSIST[C_HEATING_ZONES + 4]        := ADR(OVERSHOOT_HISTERESIS);
    REALS_TO_PERSIST_NAMES[C_HEATING_ZONES + 4]  := 'OVHISTER';
    REALS_TO_PERSIST_DIRS[C_HEATING_ZONES + 4]   := boilerControlPath;
    
    BOOLS_TO_PERSIST[1]       := ADR(HEATING_ENABLE);
    BOOLS_TO_PERSIST_NAMES[1] := 'BOILER';
    BOOLS_TO_PERSIST_DIRS[1]  := boilerControlPath;
    BOOLS_TO_PERSIST[2]       := ADR(HOT_WATER_ENABLE);
    BOOLS_TO_PERSIST_DIRS[2]  := boilerControlPath;
    BOOLS_TO_PERSIST_NAMES[2] := 'HOTWATER';
    BOOLS_TO_PERSIST[3]       := ADR(PRESENCE_BASED_HEATING_CONTROL);
    BOOLS_TO_PERSIST_NAMES[3] := 'BOILERPC';
    BOOLS_TO_PERSIST_DIRS[3]  := boilerControlPath;
    BOOLS_TO_PERSIST[4]       := ADR(PRESENCE_BASED_HOT_WATER_CONTROL);
    BOOLS_TO_PERSIST_DIRS[4]  := boilerControlPath;
    BOOLS_TO_PERSIST_NAMES[4] := 'HOTWPC';

    INTS_TO_PERSIST[1]        := ADR(NILAN_DESIRED_VENTILLATION_LEVEL);
    INTS_TO_PERSIST_DIRS[1]   := ventillationControlPath;
    INTS_TO_PERSIST_NAMES[1]  := 'FANLEVEL';
    INTS_TO_PERSIST[2]        := ADR(NILAN_DESIRED_TEMPERATURE);
    INTS_TO_PERSIST_DIRS[2]   := ventillationControlPath;
    INTS_TO_PERSIST_NAMES[2]  := 'NILANTEMP';

    init := TRUE;

  ELSE
    // No operation
  END_IF;


END_PROGRAM

