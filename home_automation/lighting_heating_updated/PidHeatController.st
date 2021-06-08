FUNCTION_BLOCK IPidHeatController

VAR_INPUT
    actualTemperature: REAL;
    setpoint: REAL;
    samplingTime: TIME;
    actualHeatingTemperature: REAL;

    minimumHeatingTemperature : REAL;
    maximumHeatingTemparature : REAL;

    k : REAL;
    tI: REAL; // In seconds
    tD: REAL; // In seconds
    
    overshootHisteresis : REAL;
END_VAR

VAR_OUTPUT
    heatRequest : BOOL := false;
    heatingTemperature : REAL := 0;
END_VAR
    
VAR
    integrationError : REAL := 0;
    ipid : IPidController;
END_VAR

    IF actualTemperature > (setpoint + overshootHisteresis) THEN
        heatRequest := false;
    ELSIF actualTemperature < (setpoint - overshootHisteresis) THEN
        heatRequest := true;
    END_IF;
    
    IF heatRequest THEN
        ipid(setpoint := setpoint,
            actual := actualTemperature,
            previousControlledProperty := actualHeatingTemperature,
            samplingTime := samplingTime,
            k := k,
            tI := tI,
            tD := tD,
            previousIntegrationError := integrationError);
        integrationError := ipid.integrationError;
    END_IF;

    IF ipid.controlledProperty > maximumHeatingTemparature THEN
        heatingTemperature := maximumHeatingTemparature;
    ELSIF ipid.controlledProperty < minimumHeatingTemperature THEN
        heatingTemperature := minimumHeatingTemperature;
    ELSE
        heatingTemperature := ipid.controlledProperty;
    END_IF;

END_FUNCTION_BLOCK
