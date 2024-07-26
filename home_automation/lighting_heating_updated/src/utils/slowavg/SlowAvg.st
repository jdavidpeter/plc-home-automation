PROGRAM SlowAveraging
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR CONSTANT
    window_width : REAL := AVERAGE_TEMPERATURE_SAMPLE_COUNT;
  END_VAR
  VAR
    temperature_accumulator : REAL := 0;
    current_temperature_slot : INT := 0;
    loop_index : INT := 0;
    looped_over : BOOL := FALSE;
  END_VAR
  VAR_TEMP
  END_VAR

  current_temperature_slot := current_temperature_slot + 1;
  IF current_temperature_slot > AVERAGE_TEMPERATURE_SAMPLE_COUNT THEN
    current_temperature_slot := 1;
    looped_over := true;
  END_IF
  
  EXTERNAL_AVERAGE_TEMPERATURE_ACCUMULATOR[current_temperature_slot] := EXTERNAL_TEMPERATURE;
  

  temperature_accumulator := 0;
  IF looped_over THEN

    FOR loop_index := 1 to AVERAGE_TEMPERATURE_SAMPLE_COUNT DO
      temperature_accumulator := temperature_accumulator + EXTERNAL_AVERAGE_TEMPERATURE_ACCUMULATOR[loop_index];
    END_FOR;
    EXTERNAL_AVERAGE_TEMPERATURE := temperature_accumulator / window_width;
    
  ELSE

    FOR loop_index := 1 to current_temperature_slot DO
      temperature_accumulator := temperature_accumulator + EXTERNAL_AVERAGE_TEMPERATURE_ACCUMULATOR[loop_index];
    END_FOR;
    EXTERNAL_AVERAGE_TEMPERATURE := temperature_accumulator / INT_TO_REAL(current_temperature_slot);
    
  END_IF


END_PROGRAM





