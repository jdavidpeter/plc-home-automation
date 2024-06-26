VAR_GLOBAL CONSTANT
   // Heating control locals
   C_BEDROOM_INDEX : INT            := 0;
   C_LIVING_ROOM_1_INDEX : INT      := 1;
   C_LIVING_ROOM_2_INDEX : INT      := 2;
   C_LIVING_ROOM_3_INDEX : INT      := 3;
   C_DOWNSTAIRS_BATH_INDEX : INT    := 4;
   C_HALL_INDEX : INT               := 5;
   C_GARAGE_INDEX : INT             := 6;
   C_CHILDRENS_ROOM_1_INDEX : INT   := 7;
   C_CHILDRENS_ROOM_2_INDEX : INT   := 8;
   C_CHILDRENS_ROOM_3_INDEX : INT   := 9;
   C_HALLWAY_INDEX : INT            := 10;
   C_BOILER_INDEX : INT             := 11;
   C_WC_INDEX : INT                 := 12;
   C_UPSTAIRS_BATH_INDEX : INT      := 13;
   C_HEATING_ZONES : INT            := 14;
   
   C_DOWNSTAIRS_ZONE_MAX_INDEX_PLUS_ONE : INT := 7;

   C_MAXIMUM_HEATING_TEMPERATURE : REAL := 38.0;
   C_MINIMUM_HEATING_TEMPERATURE : REAL := 28.0;

   C_MAXIMUM_HOT_WATER_TEMPERATURE : REAL := 62.0; // You'll need 60+ for cleaning legionella once per quarter
   C_MINIMUM_HOT_WATER_TEMPERATURE : REAL := 35.0;

END_VAR

VAR_GLOBAL
    heatingRequests : ARRAY [0 .. C_HEATING_ZONES - 1] OF BOOL;
END_VAR

VAR_GLOBAL
   HEATING_CONTROL_SAMPLING_TIME : TIME := T#10m;
   IPID_K : REAL  := 0.0005;
   IPID_TI : REAL := 0.0001;
   IPID_TD : REAL := 12000;
   OVERSHOOT_HISTERESIS : REAL := 0.2;

   HEATING_ENABLE : BOOL := true;
   HOT_WATER_ENABLE : BOOL := true;

   HOT_WATER_TEMPERATURE : REAL                 := 42.0;

   LIVING_ROOM_DESIRED_TEMPERATURE : REAL       := 22.0;
   BEDROOM_DESIRED_TEMPERATURE : REAL           := 20.5;
   CHILDRENS_ROOM_1_DESIRED_TEMPERATURE : REAL  := 22.0;
   CHILDRENS_ROOM_2_DESIRED_TEMPERATURE : REAL  := 21.0;
   CHILDRENS_ROOM_3_DESIRED_TEMPERATURE : REAL  := 21.0;
   DOWNSTAIRS_BATH_DESIRED_TEMPERATURE : REAL   := 21.0;
   UPSTAIRS_BATH_DESIRED_TEMPERATURE : REAL     := 21.0;
   GARAGE_DESIRED_TEMPERATURE : REAL            := 5.0;
   BOILER_DESIRED_TEMPERATURE : REAL            := 5.0;
   WC_DESIRED_TEMPERATURE : REAL                := 5.0;
   HALLWAY_DESIRED_TEMPERATURE : REAL           := 5.0;
   HALL_DESIRED_TEMPERATURE : REAL              := 21;
   
   // For testing purposes only
   // WC_TEMPERATURE : REAL              := 30.0;
   HALLWAY_TEMPERATURE : REAL         := 30.0;
   BOILER_ROOM_TEMPERATURE : REAL     := 30.0;

   SUM_HEATING_REQUIREMENT : BOOL := false;
   SUM_HEATING_WATER_TEMPERATURE_REQUIREMENT : REAL := 0;
   
   MEASURED_TEMPERATURES : ARRAY [0 .. C_HEATING_ZONES - 1] OF PTR_TO REAL;
   DESIRED_TEMPERATURES : ARRAY [0 .. C_HEATING_ZONES - 1] OF PTR_TO REAL;
   VALVE_ACTUATORS : ARRAY [0 .. C_HEATING_ZONES - 1] OF PTR_TO BOOL;
   
   // You can't take the ADR() of a real const global...
   C_50_FOK : REAL := 50.0;
   C_4_FOK : REAL  := 4.0;
END_VAR
