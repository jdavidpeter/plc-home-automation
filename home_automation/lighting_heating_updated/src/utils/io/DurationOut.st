FUNCTION_BLOCK InterruptableReentrantDurationOut
  VAR_INPUT
     onSignal : BOOL R_EDGE;
     offSignal : BOOL R_EDGE;
     duration : time;
     name : STRING;
  END_VAR

  VAR_OUTPUT
     active : BOOL;
  END_VAR

  VAR
     timer : TON;
     timerTrigger: BOOL := false;
     sentence : STRING;
  END_VAR

  IF onSignal THEN
     timerTrigger := true;
     timer(IN := false, PT := duration);
     active := true;
     sentence := CONCAT(name, ' on');
     SWITCH_TRACKER(name := sentence);
  END_IF;
  
  IF offSignal THEN
     timerTrigger := false;
     timer(IN := false, PT := duration);
     active := false;
     sentence := CONCAT(name, ' interrupted');
     SWITCH_TRACKER(name := sentence);
  END_IF;

  IF timer.Q THEN
     timerTrigger := false;
     active := false;
     sentence := CONCAT(name, ' off');
     SWITCH_TRACKER(name := sentence);
  END_IF;

  timer(IN := timerTrigger, PT := duration);
END_FUNCTION_BLOCK

FUNCTION_BLOCK ReentrantDurationOut
  VAR_INPUT
     onSignal : BOOL R_EDGE;
     duration : time;
     name : STRING;
  END_VAR

  VAR_OUTPUT
     active : BOOL;
  END_VAR

  VAR
     timer : TON;
     timerTrigger: BOOL := false;
     sentence: STRING;
  END_VAR

  IF onSignal THEN
     timerTrigger := true;
     timer(IN := false, PT := duration);
     active := true;
     sentence := CONCAT(name, ' on');
     SWITCH_TRACKER(name := sentence);
  END_IF;

  IF timer.Q THEN
     timerTrigger := false;
     active := false;
     sentence := CONCAT(name, ' off');
     SWITCH_TRACKER(name := sentence);
  END_IF;

  timer(IN := timerTrigger, PT := duration);
END_FUNCTION_BLOCK

FUNCTION_BLOCK DurationOut
  VAR_INPUT
     onSignal : BOOL R_EDGE;
     duration : time;
     name: STRING;
  END_VAR

  VAR_OUTPUT
     active : BOOL;
  END_VAR

  VAR
     timer : TON;
     timerTrigger: BOOL := false;
     sentence: STRING;
  END_VAR

  IF onSignal THEN
     timerTrigger := true;
     active := true;
     sentence := CONCAT(name, ' on');
     SWITCH_TRACKER(name := sentence);
  END_IF;

  IF timer.Q THEN
     timerTrigger := false;
     active := false;
     sentence := CONCAT(name, ' off');
     SWITCH_TRACKER(name := sentence);
  END_IF;

  timer(IN := timerTrigger, PT := duration);
END_FUNCTION_BLOCK
