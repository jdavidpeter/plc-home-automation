; Warning: This file is managed by Mosaic development environment.
; It is not recommended to change it manualy!

#program home_automation , V3.0
;**************************************
;<ActionName/>
;<Programmer/>
;<FirmName/>
;<Copyright/>
;**************************************
;<History>
;</History>
;**************************************
#useoption CPM = 9              ; CPM type: K
#useoption RemZone = 0          ; the remanent zone length
#useoption AlarmTime = 150      ; first alarm [milisec]
#useoption MaxCycleTime = 250   ; maximum cycle [milisec]
#useoption PLCstart = 1         ; cold start
#useoption AutoSummerTime = 1   ; internal PLC clock automatically switches to daylight saving time and back
#useoption RestartOnError = 0   ; PLC will not be restarted after hard error

#uselib "LocalLib\StdLib_V22_20180619.mlb"
#uselib "LocalLib\SysLib_V44_20200302.mlb"
#uselib "LocalLib\OpenThermLib_V13_20150819.mlb"
#uselib "LocalLib\ComLib_V33_20200327.mlb"
#uselib "LocalLib\ToStringLib_V13_20110203.mlb"
#uselib "LocalLib\ParadoxLib_V17_20141014.mlb"
#uselib "LocalLib\FileLib_V28_20200709.mlb"
#uselib "LocalLib\TimeLib_V15_20170216.mlb"
#uselib "LocalLib\EncryptLib_V13_20160923.mlb"
#uselib "LocalLib\DataBoxLib_V16_20160713.mlb"
#uselib "LocalLib\ConvertLib_V21_20170222.mlb"
#uselib "LocalLib\InternetLib_V56_20200402.mlb"
#uselib "LocalLib\MQTTLib_V14_20200528.mlb"
#uselib "LocalLib\CrcLib_V13_20170224.mlb"
#uselib "LocalLib\ModbusRTU_V40_20210826.mlb"
#endlibs

;**************************************
#usefile "IOConfigurator\CONFIG.ST", 'auto'
#usefile "IOConfigurator\CONFIG.HWC", 'auto'
#usefile "Datalogger\Datalogger.ST", 'auto'
#usefile "Datalogger\Datalogger.mos", 'auto'
#usefile "src\utils\logging\StringRecorder.st"
#usefile "src\utils\io\RoomSwitch.st"
#usefile "src\utils\io\TimeSwitch.st"
#usefile "src\utils\io\InPlaceOnOff.st"
#usefile "src\utils\io\ChangeOnOff.st"
#usefile "src\utils\io\DurationOut.st"
#usefile "src\utils\io\OnThenOffPulse.st"
#usefile "src\utils\io\AfterBurnerOutput.st"
#usefile "src\utils\io\BathroomFanOnOff.st"
#usefile "src\alarm\AlarmGlobals.st"
#usefile "src\heating\HeatingGlobals.st"
#usefile "src\heating\VaillantGlobals.st"
#usefile "src\lighting\LightingGlobals.st"
#usefile "src\ventillation\VentillationGlobals.st"
#usefile "src\lighting\LightingInit.st"
#usefile "src\lighting\Lighting.st"
#usefile "src\utils\control\LinearHeatController.st"
#usefile "src\utils\control\PidController.st"
#usefile "src\utils\control\PidHeatController.st"
#usefile "src\heating\HeatingInint.st"
#usefile "src\heating\Heating.st"
#usefile "src\ventillation\VentillationInit.st"
#usefile "src\alarm\AlarmInit.st"
#usefile "src\alarm\AlarmRead.st"
#usefile "src\alarm\Alarm.st"
#usefile "src\utils\persist\PersistFramework.st"
#usefile "src\persist\PersistGlobals.st"
#usefile "src\persist\PersistInit.st"
#usefile "src\persist\Persist.st"
#usefile "src\ventillation\Ventillation.st"
#usefile "lighting_heating_updated.mcf", 'auto'
