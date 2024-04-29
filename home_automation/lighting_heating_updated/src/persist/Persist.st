PROGRAM PersistData
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    init : BOOL := FALSE;
    realPersistors : ARRAY [1 .. C_REALS_TO_PERSIST] OF PersistReal;
    boolPersistors : ARRAY [1 .. C_BOOLS_TO_PERSIST] OF PersistBool;
    intPersistors : ARRAY [1 .. C_INTS_TO_PERSIST]  OF PersistInt;
    timePersistors : ARRAY [1 .. C_TIMES_TO_PERSIST]  OF PersistTime;
    
    i: INT := 0;
  END_VAR
  VAR_TEMP
  END_VAR

  FOR i := 1 to C_REALS_TO_PERSIST DO
    realPersistors[i](compilerBugPlaceholder := init,
      variableToPersist := REALS_TO_PERSIST[i]^,
      dirPath := REALS_TO_PERSIST_DIRS[i],
      fileName := REALS_TO_PERSIST_NAMES[i],
      toWrite := init);
  END_FOR;

  FOR i := 1 to C_BOOLS_TO_PERSIST DO
    boolPersistors[i](compilerBugPlaceholder := init,
      variableToPersist := BOOLS_TO_PERSIST[i]^,
      dirPath := BOOLS_TO_PERSIST_DIRS[i],
      fileName := BOOLS_TO_PERSIST_NAMES[i],
      toWrite := init);
  END_FOR;

  FOR i := 1 to C_INTS_TO_PERSIST DO
    intPersistors[i](compilerBugPlaceholder := init,
      variableToPersist := INTS_TO_PERSIST[i]^,
      dirPath := INTS_TO_PERSIST_DIRS[i],
      fileName := INTS_TO_PERSIST_NAMES[i],
      toWrite := init);
  END_FOR;

  FOR i := 1 to C_TIMES_TO_PERSIST DO
    timePersistors[i](compilerBugPlaceholder := init,
      variableToPersist := TIMES_TO_PERSIST[i]^,
      dirPath := TIMES_TO_PERSIST_DIRS[i],
      fileName := TIMES_TO_PERSIST_NAMES[i],
      toWrite := init);
  END_FOR;
  
  init := TRUE;

END_PROGRAM

