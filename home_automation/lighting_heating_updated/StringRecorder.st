VAR_GLOBAL CONSTANT
  C_BUFFER_SIZE : INT := 20;
  C_STRING_SIZE : INT := 200;
END_VAR

FUNCTION_BLOCK StringRecorder
  VAR
    whoTouchedMe : ARRAY [1..C_BUFFER_SIZE] OF STRING[C_STRING_SIZE];
    touchIndex: INT := 0;
  END_VAR
  VAR_INPUT
    name: STRING;
  END_VAR

  IF touchIndex = C_BUFFER_SIZE THEN
      touchIndex := 1;
  ELSE
      touchIndex := touchIndex + 1;
  END_IF;
  whoTouchedMe[touchIndex] := LEFT(IN := name, L := C_STRING_SIZE - 1);

END_FUNCTION_BLOCK

VAR_GLOBAL
  SWITCH_TRACKER : StringRecorder;
  FILE_PROBLEM_TRACKER : StringRecorder;
  IO_LOGGER : StringRecorder;
END_VAR
