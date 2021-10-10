
VAR_GLOBAL
  VAILLANT_ACN                   : bool;  (*altered after loading all the data*)
  VAILLANT_HEATING_TEMP          : real;  (*current boiler temperature*)
  VAILLANT_DWH_TEMP              : real;  (*current DHW temperature*)
  VAILLANT_OUTSIDE_TEMP          : real;  (*current outdoor temperature on boiler sensor*)
  VAILLANT_RETURN_WATER_TEMP     : real;  (*current returning temperature (Some boilers don't measure it)*)
  VAILLANT_MODULATION_LEVEL      : usint; (*value of relative burner modulation (0-100%)*)
  VAILLANT_PRESSURE_LEVEL        : real;  (*value of pressure temperature water (0-5 bar)*)
  VAILLANT_BURNERS_RUNNING       : uint;  (*number of burner starts*)
  VAILLANT_HEATING_ACTIVE        : bool;  (*heating is active (heats right now)*)
  VAILLANT_DWH_ACTIVE            : bool;  (*DHW active (heats right now)*)
  VAILANT_DWH_PRESENT            : bool;  (*boiler reports DHW is present*)
  VAILANT_MODULATION_SUPPORT     : bool;  (*boiler supports power modulation*)
  VAILANT_BURNER_ON              : bool;  (*flame on*)
  VAILANT_ERROR                  : bool;  (*boiler has an error*)
  VAILLANT_DIAG_CODE             : uint;  (*diagnostic code boiler (lower byte = error code = upper byte error flags)*)
  VAILANT_COMMUNICATIONO_ERROR   : bool;  (*communication error*)

END_VAR


