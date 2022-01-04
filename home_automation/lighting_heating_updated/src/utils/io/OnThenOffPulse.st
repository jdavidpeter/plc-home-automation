FUNCTION_BLOCK OnThenOffPulse
  VAR_INPUT CONSTANT
     name : STRING;
  END_VAR

  VAR_INPUT
     timeOn   : TIME;
     timeOff  : TIME;
     onSignal : BOOL R_EDGE;
     sentence : STRING;
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

  sentence := concat(name, ' out');
  out(onSignal := outTrigger, duration := timeOn, name := sentence);
  sentence := concat(name, ' idle');
  idle(onSignal := idleTrigger, duration := timeOff, name := sentence);
END_FUNCTION_BLOCK
