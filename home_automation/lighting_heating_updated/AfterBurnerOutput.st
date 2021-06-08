FUNCTION_BLOCK AfterBurnerOutput
  VAR_INPUT CONSTANT
    name : STRING;
  END_VAR

  VAR_INPUT
    delay : TIME;
    duration: TIME;
    feedOn: BOOL R_EDGE;
    feedOff : BOOL R_EDGE;
    emergencyStop : BOOL R_EDGE;
  END_VAR

  VAR_OUTPUT
    out: BOOL := FALSE;
  END_VAR

  VAR
    delayTimer: TON;
    delayTimerInput: BOOL;
    durationTimer: TON;
    durationTimerInput: BOOL;
    sentence : STRING;
  END_VAR

  IF feedOn THEN
     delayTimerInput := TRUE;
     sentence := CONCAT(name, ' started ramping up');
     SWITCH_TRACKER(name := sentence);
  END_IF;
  
  IF feedOff THEN
     delayTimerInput := FALSE;
     sentence := CONCAT(name, ' stopped ramping up');
     SWITCH_TRACKER(name := sentence);
  END_IF;
  
  delayTimer(IN := delayTimerInput, PT := delay);
  
  IF delayTimer.Q THEN
     durationTimer(IN := FALSE, PT := duration); // Reset ongoing output cycle
     durationTimerInput := TRUE;
     out := TRUE;
     delayTimerInput := FALSE;
     sentence := CONCAT(name, ' turned on and resetted previous cycle');
     SWITCH_TRACKER(name := sentence);
  END_IF;
  
  durationTimer(IN := durationTimerInput, PT := duration);
  
  IF durationTimer.Q THEN
     durationTimerInput := FALSE;
     out := FALSE;
     sentence := CONCAT(name, ' turned off');
     SWITCH_TRACKER(name := sentence);
  END_IF;
  
  IF emergencyStop THEN
     out := FALSE;
     delayTimerInput := FALSE;
     durationTimerInput := FALSE;
  END_IF;
END_FUNCTION_BLOCK // AfterBurnerOutput
