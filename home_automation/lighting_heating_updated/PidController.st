FUNCTION_BLOCK IPidController

    VAR_INPUT
        setpoint: REAL;
        actual: REAL;
        previousControlledProperty : REAL;
        samplingTime: TIME;
        
        k : REAL;
        tI: REAL; // In seconds
        tD: REAL; // In seconds
        
        previousIntegrationError : REAL;
    END_VAR
    
    VAR_OUTPUT
        integrationError : REAL;
        controlledProperty : REAL;
    END_VAR

    VAR
        samplingTimer : TON;
        error: REAL := 0;
        timePassed : REAL; // In seconds
        lastError : REAL;
    END_VAR

    samplingTimer(IN := true, PT := samplingTime);
    IF samplingTimer.Q THEN
        timePassed := TIME_TO_REAL(samplingTime) / 1000;
        
        samplingTimer(IN := false, PT := samplingTime);
        samplingTimer(IN := true, PT := samplingTime);
        
        error := setpoint - actual;
        integrationError := (previousIntegrationError + error) * tI * timePassed;
    
        controlledProperty := previousControlledProperty
                              + k * error * timePassed
                              + integrationError
                              + (error - lastError) / timePassed * tD;
    
        lastError := error;
    END_IF;

END_FUNCTION_BLOCK
