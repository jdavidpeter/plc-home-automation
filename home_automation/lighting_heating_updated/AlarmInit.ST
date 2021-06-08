PROGRAM AlarmInit
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
  END_VAR
  VAR_TEMP
  END_VAR

VAR
  initialised : BOOL := FALSE;
END_VAR;

    IF initialised = FALSE THEN
        initialised := TRUE;
    ELSE
        // No opeartion
    END_IF;

END_PROGRAM

