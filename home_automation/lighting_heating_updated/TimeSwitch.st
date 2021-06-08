FUNCTION_BLOCK TimeSwitchImpl
  VAR_INPUT CONSTANT
    name : STRING;
  END_VAR

  VAR_INPUT
    onSignal : BOOL R_EDGE;
    offSignal : BOOL R_EDGE;
    maxDuration: TIME := T#1m;
  END_VAR

  VAR_OUTPUT
    active : BOOL := FALSE;
    duration : TIME := T#0s;
  END_VAR

  VAR
    timer : TON;
  END_VAR

  IF onSignal THEN
     active := TRUE;
  END_IF;

  IF active THEN
     timer(IN := TRUE, PT := maxDuration);
  END_IF;

  IF offSignal THEN
     active := FALSE;
     duration := timer.ET;
     timer(IN := FALSE);
     SWITCH_TRACKER(name := name + TIME_TO_STRING(duration));
  END_IF;
END_FUNCTION_BLOCK

FUNCTION_BLOCK TimeSwitch

  VAR_INPUT CONSTANT
    name : STRING;
  END_VAR

  VAR_INPUT
    onSignal : bool;
    maxDuration: TIME;
  END_VAR

  VAR_OUTPUT
    active : BOOL := FALSE;
    duration : TIME := T#0s;
  END_VAR

  VAR
    impl : TimeSwitchImpl;
  END_VAR

  impl(onSignal := onSignal, offSignal := NOT onSignal, maxDuration := maxDuration, name := name);
  active := impl.active;
  duration := impl.duration;

END_FUNCTION_BLOCK
