FUNCTION createDirectory: BOOL
VAR_INPUT
    dirPath: STRING;
END_VAR

VAR
    errorMessage: STRING;
    
END_VAR

createDirectory := FileExists(fileName := dirPath);
IF NOT createDirectory THEN
  createDirectory := DirCreate(dirName := dirPath);
  IF NOT createDirectory THEN
    GetLastErrTxt( errCode := GetLastErr(), errMessage := errorMessage);
    FILE_PROBLEM_TRACKER(name := 'Dir create error:');
    FILE_PROBLEM_TRACKER(name := dirPath);
    FILE_PROBLEM_TRACKER(name := errorMessage);
    return;
  END_IF;
END_IF;

createDirectory := true;

END_FUNCTION

FUNCTION_BLOCK Persistor

VAR_IN_OUT
    compilerBugPlaceholder: BOOL;
    dirPath: STRING;
    fileName: STRING;
    data : UDINT;
END_VAR
VAR_INPUT
    dataSize: UDINT;
    toWrite : BOOL;
END_VAR
VAR_OUTPUT
    busy: BOOL := FALSE;
END_VAR

VAR
    fullPath : STRING;

    writer  : WriteToFile;
    reader : ReadFromFile;
    reading : BOOL := false;
    writing : BOOL := false;

    errorMessage : STRING;
    file : BOOL;
END_VAR

// Workaround for a compiler bug which renders the address of the first VAR_IN_OUT to the unusable %X0.0 no matter what.
IF FALSE THEN compilerBugPlaceholder := compilerBugPlaceholder; END_IF;

IF writing THEN
    writer( fileName := fullPath,
            srcVar := data,
            exec := writing,
            seek := 0,
            size := dataSize
            );
    writing := writer.busy;
    IF writer.err THEN
      GetLastErrTxt(errCode := writer.errID, errMessage := errorMessage);
      FILE_PROBLEM_TRACKER(name := 'File write error: ');
      FILE_PROBLEM_TRACKER(name := fullPath);
      FILE_PROBLEM_TRACKER(name := errorMessage);
      return;
    END_IF;

ELSIF reading THEN
    reader( fileName := fullPath,
            dstVar := data,
            exec := reading,
            seek := 0,
            size := dataSize
            );
    reading := reader.busy;
    IF reader.err THEN
      GetLastErrTxt(errCode := writer.errID, errMessage := errorMessage);
      FILE_PROBLEM_TRACKER(name := 'Read error:');
      FILE_PROBLEM_TRACKER(name := fullPath);
      FILE_PROBLEM_TRACKER(name := errorMessage);
      return;
    END_IF;

ELSE

    fullPath := dirPath + '/' + fileName;

    IF toWrite THEN
      createDirectory(dirPath := dirPath);

      IO_LOGGER(name := 'Writing to file: ');
      IO_LOGGER(name := dirPath);
      IO_LOGGER(name := fileName);
     
      writer( fileName := fullPath, srcVar := data, exec := writing, seek := 0, size := dataSize ); // For the sake of edge
      writing := TRUE;

    ELSE  // toRead
      file := FileExists(fileName := fullPath);
      IF NOT file THEN
        GetLastErrTxt(errCode := GetLastErr(), errMessage := errorMessage);
        FILE_PROBLEM_TRACKER(name := 'Can not find file to read: ');
        FILE_PROBLEM_TRACKER(name := fullPath);
        FILE_PROBLEM_TRACKER(name := errorMessage);
        return;
      END_IF;
      
      IO_LOGGER(name := 'Reading from file: ');
      IO_LOGGER(name := dirPath);
      IO_LOGGER(name := fileName);
  
      reader( fileName := fullPath, dstVar := data, exec := writing, seek := 0, size := dataSize ); // For the sake of edge
      reading := TRUE;
    END_IF;
END_IF;

busy := reading OR writing;


END_FUNCTION_BLOCK // Persistor

// -------------------------------------------------------------------------------------

FUNCTION_BLOCK PersistBool

VAR_IN_OUT
    compilerBugPlaceholder: BOOL;
    variableToPersist : BOOL;
    dirPath : STRING;
    fileName : STRING;
END_VAR
VAR_INPUT
    toWrite : BOOL;
END_VAR
VAR_OUTPUT
END_VAR
VAR
    persistImpl: Persistor;
    current: BOOL;
    previous: BOOL;
    actionIsWrite : BOOL;
    
    variableAsString : STRING[1];
END_VAR

// Workaround for a compiler bug which renders the address of the first VAR_IN_OUT to the unusable %X0.0 no matter what.
IF FALSE THEN compilerBugPlaceholder := compilerBugPlaceholder; END_IF;

IF NOT persistImpl.busy THEN
  previous := current;
  current := variableToPersist;
  actionIsWrite := toWrite;
END_IF;

IF actionIsWrite THEN
  IF NOT (current = previous) THEN
    variableAsString := BOOL_TO_STRING(current);
    persistImpl(compilerBugPlaceholder := compilerBugPlaceholder,
       dirPath := dirPath,
       fileName := fileName,
       data := void(variableAsString),
       dataSize := SIZEOF(variableAsString),
       toWrite := toWrite);
    IF NOT persistImpl.busy THEN
      IO_LOGGER(name := 'Wrote value:');
      IO_LOGGER(name := variableAsString);
    END_IF;
  END_IF;
ELSE

  persistImpl(compilerBugPlaceholder := compilerBugPlaceholder,
     dirPath := dirPath,
     fileName := fileName,
     data := void(variableAsString),
     dataSize := SIZEOF(variableAsString),
     toWrite := toWrite);
  IF NOT persistImpl.busy THEN
    IO_LOGGER(name := 'Read value');
    IO_LOGGER(name := variableAsString);
    variableToPersist := STRING_TO_BOOL(variableAsString);
    current := variableToPersist;
  END_IF;
END_IF;


END_FUNCTION_BLOCK // PersistBool

// -------------------------------------------------------------------------------------

FUNCTION_BLOCK PersistReal

VAR_IN_OUT
    compilerBugPlaceholder: BOOL;
    variableToPersist : REAL;
    dirPath : STRING;
    fileName : STRING;
END_VAR
VAR_INPUT
    toWrite : BOOL;
END_VAR
VAR_OUTPUT
END_VAR
VAR
    persistImpl: Persistor;
    current: REAL;
    previous: REAL;
    actionIsWrite : BOOL;

    variableAsString : STRING;
END_VAR

// Workaround for a compiler bug which renders the address of the first VAR_IN_OUT to the unusable %X0.0 no matter what.
IF FALSE THEN compilerBugPlaceholder := compilerBugPlaceholder; END_IF;

IF NOT persistImpl.busy THEN
  previous := current;
  current := variableToPersist;
  actionIsWrite := toWrite;
END_IF;

IF actionIsWrite THEN
  IF NOT (current = previous) THEN
    variableAsString := REAL_TO_STRING(current);
    persistImpl(compilerBugPlaceholder := compilerBugPlaceholder,
       dirPath := dirPath,
       fileName := fileName,
       data := void(current),
       dataSize := SIZEOF(current),
       toWrite := toWrite);
    IF NOT persistImpl.busy THEN
      IO_LOGGER(name := 'Wrote value as binary:');
      IO_LOGGER(name := variableAsString);
    END_IF;
  END_IF;
ELSE

  persistImpl(compilerBugPlaceholder := compilerBugPlaceholder,
     dirPath := dirPath,
     fileName := fileName,
     data := void(current),
     dataSize := SIZEOF(current),
     toWrite := toWrite);
  IF NOT persistImpl.busy THEN
    variableAsString := REAL_TO_STRING(current);
    IO_LOGGER(name := 'Read value from binary:');
    IO_LOGGER(name := variableAsString);
    variableToPersist := current;
  END_IF;
END_IF;


END_FUNCTION_BLOCK // PersistInt

// -------------------------------------------------------------------------------------

FUNCTION_BLOCK PersistInt

VAR_IN_OUT
    compilerBugPlaceholder: BOOL;
    variableToPersist : INT;
    dirPath : STRING;
    fileName : STRING;
END_VAR
VAR_INPUT
    toWrite : BOOL;
END_VAR
VAR_OUTPUT
END_VAR
VAR
    persistImpl: Persistor;
    current: INT;
    previous: INT;
    actionIsWrite : BOOL;

    variableAsString : STRING;
END_VAR

// Workaround for a compiler bug which renders the address of the first VAR_IN_OUT to the unusable %X0.0 no matter what.
IF FALSE THEN compilerBugPlaceholder := compilerBugPlaceholder; END_IF;

IF NOT persistImpl.busy THEN
  previous := current;
  current := variableToPersist;
  actionIsWrite := toWrite;
END_IF;

IF actionIsWrite THEN
  IF NOT (current = previous) THEN
    variableAsString := INT_TO_STRING(current);
    persistImpl(compilerBugPlaceholder := compilerBugPlaceholder,
       dirPath := dirPath,
       fileName := fileName,
       data := void(current),
       dataSize := SIZEOF(current),
       toWrite := toWrite);
    IF NOT persistImpl.busy THEN
      IO_LOGGER(name := 'Wrote value as binary:');
      IO_LOGGER(name := variableAsString);
    END_IF;
  END_IF;
ELSE

  persistImpl(compilerBugPlaceholder := compilerBugPlaceholder,
     dirPath := dirPath,
     fileName := fileName,
     data := void(current),
     dataSize := SIZEOF(current),
     toWrite := toWrite);
  IF NOT persistImpl.busy THEN
    variableAsString := INT_TO_STRING(current);
    IO_LOGGER(name := 'Read value from binary:');
    IO_LOGGER(name := variableAsString);
    variableToPersist := current;
  END_IF;
END_IF;


END_FUNCTION_BLOCK // PersistInt

// -------------------------------------------------------------------------------------

FUNCTION_BLOCK PersistTime

VAR_IN_OUT
    compilerBugPlaceholder: BOOL;
    variableToPersist : TIME;
    dirPath : STRING;
    fileName : STRING;
END_VAR
VAR_INPUT
    toWrite : BOOL;
END_VAR
VAR_OUTPUT
END_VAR
VAR
    persistImpl: Persistor;
    current: TIME;
    previous: TIME;
    actionIsWrite : BOOL;

    variableAsString : STRING;
END_VAR

// Workaround for a compiler bug which renders the address of the first VAR_IN_OUT to the unusable %X0.0 no matter what.
IF FALSE THEN compilerBugPlaceholder := compilerBugPlaceholder; END_IF;

IF NOT persistImpl.busy THEN
  previous := current;
  current := variableToPersist;
  actionIsWrite := toWrite;
END_IF;

IF actionIsWrite THEN
  IF NOT (current = previous) THEN
    variableAsString := TIME_TO_STRING(current);
    persistImpl(compilerBugPlaceholder := compilerBugPlaceholder,
       dirPath := dirPath,
       fileName := fileName,
       data := void(current),
       dataSize := SIZEOF(current),
       toWrite := toWrite);
    IF NOT persistImpl.busy THEN
      IO_LOGGER(name := 'Wrote value as binary:');
      IO_LOGGER(name := variableAsString);
    END_IF;
  END_IF;
ELSE
  persistImpl(compilerBugPlaceholder := compilerBugPlaceholder,
     dirPath := dirPath,
     fileName := fileName,
     data := void(current),
     dataSize := SIZEOF(current),
     toWrite := toWrite);
  IF NOT persistImpl.busy THEN
    variableAsString := TIME_TO_STRING(current);
    IO_LOGGER(name := 'Read value from binary:');
    IO_LOGGER(name := variableAsString);
    variableToPersist := current;
  END_IF;
END_IF;


END_FUNCTION_BLOCK // PersistTime
