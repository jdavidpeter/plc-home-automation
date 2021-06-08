FUNCTION_BLOCK ChangeOnOff
  VAR_INPUT CONSTANT
    name : STRING;
  END_VAR

  VAR_INPUT
    requestOn : BOOL R_EDGE;
    requestOff: BOOL R_EDGE;
    requestChange : BOOL R_EDGE;
  END_VAR

  VAR_OUTPUT
    output: BOOL := FALSE;
  END_VAR
  
  VAR
     sentence : STRING;
  END_VAR

    IF (requestOn AND NOT requestOff AND NOT requestChange) THEN
      sentence := CONCAT(name, ' on');
      SWITCH_TRACKER(name := sentence);
      output := TRUE;
    ELSIF (NOT requestOn AND requestOff AND NOT requestChange) THEN
      sentence := CONCAT(name, ' off');
      SWITCH_TRACKER(name := sentence);
      output := FALSE;
    ELSIF (NOT requestOn AND NOT requestOff AND requestChange) THEN
      sentence := CONCAT(name, ' changed');
      SWITCH_TRACKER(name := sentence);
      output := NOT output;
    END_IF;
    
END_FUNCTION_BLOCK
