FUNCTION_BLOCK InPlaceOnOff
    VAR_INPUT
      requestOn :  BOOL R_EDGE;
      requestOff : BOOL R_EDGE;
    END_VAR
    VAR_IN_OUT
      name: STRING;
      controlledVariable : BOOL;
    END_VAR
    
    VAR
      sentence : STRING;
    END_VAR

    IF requestOn AND NOT requestOff THEN
       controlledVariable := TRUE;
       sentence := CONCAT(name, ' is ON');
       SWITCH_TRACKER(name := sentence);
    END_IF;
    IF requestOff AND NOT requestOn THEN
       controlledVariable := FALSE;
       sentence := CONCAT(name, ' is OFF');
       SWITCH_TRACKER(name := sentence);
    END_IF;
END_FUNCTION_BLOCK




