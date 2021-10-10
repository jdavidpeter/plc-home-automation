FUNCTION_BLOCK LinearHeatController
  VAR_INPUT
    actualTemperature : REAL := 0;
    setpoint : REAL := 0;
    ramp : REAL := 1;
    offset : REAL := 0;
    histeresis : REAL := 0;
  END_VAR
  VAR_OUTPUT
    heatRequest : BOOL := FALSE;
    heatingTemperature : REAL := 0;
  END_VAR

  heatingTemperature := setpoint + ramp * (setpoint - actualTemperature) + offset;
  
  IF actualTemperature < (setpoint - histeresis) THEN
     heatRequest := true;
  END_IF;
  IF actualTemperature > (setpoint + histeresis) THEN
     heatRequest := FALSE;
  END_IF;
END_FUNCTION_BLOCK
