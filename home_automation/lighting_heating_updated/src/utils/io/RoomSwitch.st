FUNCTION_BLOCK RoomSwitch
(*API for normally open room push switches.*)
    VAR_INPUT
      onSignal : BOOL R_EDGE;
    END_VAR
    VAR_IN_OUT
      name: STRING;
    END_VAR
    VAR_OUTPUT
      out : BOOL := FALSE;
    END_VAR
  
    IF onSignal THEN
       out := NOT out;
       SWITCH_TRACKER(name := name);
    END_IF;
END_FUNCTION_BLOCK




