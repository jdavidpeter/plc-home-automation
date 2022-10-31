VAR_GLOBAL CONSTANT

   C_FRONT_DOOR_OPENING : INT     := 1;
   C_GARAGE_DOOR_OPENING : UINT   := 2;
   C_HALL_ZONE : UINT             := 4;
   C_GARAGE_ZONE : UINT           := 5;
   C_KITCHEN_ZONE : UINT          := 6;
   C_LIVING_ROOM_ZONE : UINT      := 7;
   C_BEDROOM_ZONE : UINT          := 8;
   C_DOWNSTAIRS_BATH_ZONE : UINT  := 9;
   C_HALLWAY_ZONE : UINT          := 10;
   C_CHILDRENS_ROOM_3_ZONE : UINT := 11;
   C_CHILDRENS_ROOM_1_ZONE : UINT := 12;
   C_CHILDRENS_ROOM_2_ZONE : UINT := 13;
   C_UPSTAIRS_BATH_ZONE : UINT    := 14;
   C_WC_ZONE : UINT               := 15;
   C_BOILER_ZONE : UINT           := 16;

   C_UNCONNECTED_NO_OP : UINT     := 3;

   C_ALARM_ZONES : UINT           := 16;
END_VAR

VAR_GLOBAL
    PARADOX_COM : fbPAR_DIG_EVOsystem;
    PARADOX_DATA : T_PAR_DIG_EVO_SYSTEM_DATA;
    ALARM_ZONES_INACTIVITY : ARRAY [1 .. C_ALARM_ZONES] OF BOOL;
    ALARM_ZONES_SABOTAGE : ARRAY [1 .. C_ALARM_ZONES] OF BOOL;
    ALARM_ZONES_ERROR : ARRAY [1 .. C_ALARM_ZONES] OF BOOL;
    ALARM_ACTIVE : BOOL;
    
    PRESENCE_BASED_HEATING_CONTROL : BOOL   := true;
    PRESENCE_BASED_HOT_WATER_CONTROL : BOOL := true;
    PRESENCE_BASED_HEATING_ENABLE : BOOL    := false;
    PRESENCE_BASED_HOT_WATER_ENABLE : BOOL  := false;

    AWAY_TIMER: TON;

    TIME_AWAY_SHORT : TIME     := T#20m;
    TIME_AWAY_LONG : TIME      := T#60m;
    GONE_FOR_5_SECONDS : BOOL  := FALSE; // for debugging purposes
    GONE_FOR_5_MINUTES : BOOL  := FALSE;
    GONE_FOR_5_HOURS : BOOL    := FALSE;
    GONE_FOR_SHORT_TIME : BOOL := FALSE;
    GONE_FOR_LONG_TIME : BOOL  := FALSE;
END_VAR

FUNCTION awayFromHomeFor : bool
  VAR_INPUT
    awayFor : TIME;  (*Tell me if motion sensors are inactive for that time. Max is 20 days.*)
  END_VAR
  
  IF(AWAY_TIMER.ET < awayFor) THEN
    awayFromHomeFor := false;
  ELSE
    awayFromHomeFor := true;
  END_IF;
  
END_FUNCTION

