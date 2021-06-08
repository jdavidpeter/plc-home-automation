FUNCTION logBathroomFan : INT
VAR_INPUT
    name : STRING;
    rampOn : BOOL;
    feedOn: BOOL;
    out : BOOL;
END_VAR
     SWITCH_TRACKER(name := name
         + ': ramp(' + BOOL_TO_STRING(rampOn)
         + ') feedOn(' + BOOL_TO_STRING(feedOn)
         + ') out(' + BOOL_TO_STRING(out)
         + ')');

    logBathroomFan := 0;
END_FUNCTION

FUNCTION_BLOCK BathroomFanOnOff

  VAR_INPUT CONSTANT
     name : STRING;
  END_VAR

  VAR_INPUT
     timeOn   : TIME;
     feedOn   : BOOL R_EDGE;
     feedOff  : BOOL R_EDGE;
     change   : BOOL R_EDGE;
  END_VAR

  VAR_OUTPUT
     out : BOOL;
  END_VAR

  VAR
     ramp    : TON;
     rampOn  : BOOL := false;
  END_VAR

  IF change THEN
     rampOn := NOT out;
     out := NOT out;
     logBathroomFan(name:= name, feedOn := feedOn, rampOn := rampOn, out := out);
  END_IF;

  IF feedOn THEN
     rampOn := false;
     out := true;
  END_IF;
  
  IF feedOff AND out THEN
     rampOn := true;
  END_IF;
  
  ramp(IN := rampOn, PT := timeOn);

  IF ramp.Q THEN
     out := false;
     rampOn := false;
  END_IF;
  
END_FUNCTION_BLOCK
