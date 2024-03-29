PROGRAM AlarmControl
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
     i: UINT;
     sumActivity : BOOL := FALSE;
     
     requestOffHeating : BOOL;
     requestOffHotWater : BOOL;
     
     heatingControl : ChangeOnOff;
     hotWaterControl : ChangeOnOff;

     heatingControllerName : STRING := 'Alarm heating control';
     hotWaterControllerName : STRING := 'Alarm hot water control';
  END_VAR
  
  alarmRead();
  
  // Turn on warm water circulation when someone enters through the entrance doors after the alarm cooldown time.
  VIRTUAL_CIRCULATION_SWITCH_IN := GONE_FOR_SHORT_TIME AND
      (NOT ALARM_ZONES_INACTIVITY[C_GARAGE_DOOR_OPENING] OR NOT ALARM_ZONES_INACTIVITY[C_FRONT_DOOR_OPENING]);

  // Detecting if house is no longer occupied or everyone is sleeping
  sumActivity := FALSE;
  FOR i := 1 TO C_ALARM_ZONES DO
     sumActivity := sumActivity OR (NOT ALARM_ZONES_INACTIVITY[i]);
  END_FOR;
  AWAY_TIMER(IN := NOT sumActivity, PT := T#20d);
  GONE_FOR_5_SECONDS  := awayFromHomeFor(awayFor := T#5s);
  GONE_FOR_5_MINUTES  := awayFromHomeFor(awayFor := T#5m);
  GONE_FOR_5_HOURS    := awayFromHomeFor(awayFor := T#5h);
  GONE_FOR_SHORT_TIME := awayFromHomeFor(TIME_AWAY_SHORT);
  GONE_FOR_LONG_TIME  := awayFromHomeFor(TIME_AWAY_LONG);
  
  requestOffHeating := ((ALARM_ACTIVE AND GONE_FOR_5_MINUTES) OR GONE_FOR_5_HOURS);
  requestOffHotWater:= ((ALARM_ACTIVE AND GONE_FOR_5_MINUTES) OR GONE_FOR_SHORT_TIME);
  
  IF PRESENCE_BASED_HEATING_CONTROL THEN
     heatingControl(requestOn := NOT requestOffHeating,
         requestOff := requestOffHeating,
         name := heatingControllerName);
     PRESENCE_BASED_HEATING_ENABLE := heatingControl.output;
  END_IF;
  
  IF PRESENCE_BASED_HOT_WATER_CONTROL THEN
     hotWaterControl(requestOn := NOT requestOffHotWater,
         requestOff := requestOffHotWater,
         name := hotWaterControllerName);
     PRESENCE_BASED_HOT_WATER_ENABLE := hotWaterControl.output;
  END_IF;

END_PROGRAM

