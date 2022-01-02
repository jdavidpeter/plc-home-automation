// Helper function block
TYPE
  ControllerArray : ARRAY [0 .. C_LIGHTS_ZONES_COUNT - 1] OF ChangeOnOff;
END_TYPE

FUNCTION_BLOCK TurnOffLightsHelper
  VAR_INPUT
    offSignal : BOOL R_EDGE;
  END_VAR
  
  VAR_IN_OUT
    controllers : ControllerArray;
  END_VAR

  VAR
    i : INT := 0;
  END_VAR
  
  IF (offSignal) THEN
    FOR i := 0 TO C_LIGHTS_ZONES_COUNT - 1 DO
      controllers[i](requestOff := offSignal);
    END_FOR;
  END_IF;
  
END_FUNCTION_BLOCK // Helper function block
  
Program LightingControl

  VAR
    domesticHotWaterCirculation_in : OnThenOffPulse;
    garageGate_in : OnThenOffPulse;
    
    exhaustRequest     : BOOL := false;
    wcExhaustDelay     : TON;
    wcExhaustDelayTime : TIME := T#4m;
    upstairsBathroomExhaustDelay     : TON;
    upstairsBathroomExhaustDelayTime : TIME := T#8m;
    upstairsShowerExhaustDelay       : TON;
    upstairsShowerExhaustDelayTime   : TIME := T#3m;
    exhaustFan_in     : BathroomFanOnOff;
    exhaustFanRuntime : TIME := T#10m;
    
    lightsSwitches : ControllerArray;
    lightsControlBasedOnOccupancy : TurnOffLightsHelper;
    
    i : INT := 0;

  END_VAR

    KITCHEN_FURNITURE_LIGHTS_OUT := TRUE; // We have the door bell in that socket for now.

    domesticHotWaterCirculation_in(timeOn := T#2m, timeOff := T#20m, onSignal := (KERINTGETES_SWITCH_IN OR KITCHEN_FURNITURE_LIGHTS_IN OR VIRTUAL_CIRCULATION_SWITCH_IN));
    BOILER_PUMP_PLUG_RIGHT := domesticHotWaterCirculation_in.active;
    VIRTUAL_CIRCULATION_SWITCH_IN := FALSE;

    wcExhaustDelay(IN := UPSTAIRS_WC_LIGHTS_OUT, PT := wcExhaustDelayTime);
    upstairsBathroomExhaustDelay(IN := UPSTAIRS_BATH_MAJOR_LIGHTS_OUT, PT := upstairsBathroomExhaustDelayTime);
    upstairsShowerExhaustDelay(IN := UPSTAIRS_BATH_SHOWER_LIGHTS_OUT, PT := upstairsShowerExhaustDelayTime);
    // No longer needed since we have a full house ventillation system
    // exhaustRequest := wcExhaustDelay.Q OR upstairsBathroomExhaustDelay.Q OR upstairsShowerExhaustDelay.Q;
    exhaustRequest := FALSE;
    exhaustFan_in(timeOn := exhaustFanRuntime, feedOn := exhaustRequest, feedOff := NOT exhaustRequest, change := EXHAUST_FAN_IN OR VIRTUAL_EXHAUST_FAN_IN, name := 'Elszivo ventillator');
    EXHAUST_FAN_OUT := exhaustFan_in.out;
    VIRTUAL_EXHAUST_FAN_IN := FALSE;
  
    garageGate_in(onSignal := GARAGE_GATE_IN OR VIRTUAL_GARAGE_DOOR_OPENER, timeOn := T#0.2s, timeOff := T#0.2s);
    GARAGE_GATE_OUT := garageGate_in.active;
    VIRTUAL_GARAGE_DOOR_OPENER := FALSE;
  
    HALLWAY_LIGHTS_COMBINED_IN := HALLWAY_LIGHTS_IN OR STAIRS_LIGHTS_IN;
  
    FOR i := 0 TO C_LIGHTS_ZONES_COUNT - 1 DO
        lightsSwitches[i]( requestChange := (LIGHTS_INPUTS[i]^ OR VIRTUAL_LIGHTS_INPUTS[i]^) );
        LIGHTS_OUTPUTS[i]^ := lightsSwitches[i].output;
        VIRTUAL_LIGHTS_INPUTS[i]^ := FALSE;
    END_FOR;
    
    lightsControlBasedOnOccupancy( offSignal := (ALARM_ACTIVE AND GONE_FOR_SHORT_TIME), controllers := lightsSwitches );
  
END_PROGRAM

