FUNCTION_BLOCK OnThenOffPulse
  VAR_INPUT
     timeOn   : TIME;
     timeOff  : TIME;
     onSignal : BOOL R_EDGE;
  END_VAR

  VAR_OUTPUT
     active : BOOL;
  END_VAR

  VAR
     out : DurationOut;
     idle: DurationOut;
     outTrigger : BOOL := false;
     idleTrigger :  BOOL := false;
  END_VAR

  IF NOT out.active AND outTrigger THEN
     outTrigger := false;
     idleTrigger := true;
     active := false;
  END_IF;

  IF onSignal AND ( NOT (idle.active OR out.active) ) THEN
     outTrigger := true;
     idleTrigger := false;
     active := true;
  END_IF;

  out(onSignal := outTrigger, duration := timeOn);
  idle(onSignal := idleTrigger, duration := timeOff);
END_FUNCTION_BLOCK
