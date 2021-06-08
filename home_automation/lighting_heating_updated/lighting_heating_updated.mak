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
#endlibs

;**************************************
#usefile "IOConfigurator\CONFIG.ST", 'auto'
#usefile "IOConfigurator\CONFIG.HWC", 'auto'
#usefile "lighting_heating_updated.ST"
#usefile "Datalogger\Datalogger.ST", 'auto'
#usefile "Datalogger\Datalogger.mos", 'auto'
#usefile "StringRecorder.st"
#usefile "RoomSwitch.ST"
#usefile "TimeSwitch.st"
#usefile "InPlaceOnOff.st"
#usefile "ChangeOnOff.st"
#usefile "DurationOut.st"
#usefile "OnThenOffPulse.st"
#usefile "AfterBurnerOutput.st"
#usefile "BathroomFanOnOff.st"
#usefile "AlarmGlobals.st"
#usefile "HeatingGlobals.st"
#usefile "VaillantGlobals.st"
#usefile "LightingGlobals.st"
#usefile "LightingInit.st"
#usefile "Lighting.ST"
#usefile "LinearHeatController.st"
#usefile "PidController.st"
#usefile "PidHeatController.st"
#usefile "HeatingInint.ST"
#usefile "Heating.ST"
#usefile "Persist.st"
#usefile "AlarmInit.ST"
#usefile "AlarmRead.st"
#usefile "Alarm.ST"
#usefile "PersistFramework.st"
#usefile "PersistGlobals.st"
#usefile "PersistInit.st"
#usefile "PersistData.ST"
#usefile "lighting_heating_updated.mcf", 'auto'
