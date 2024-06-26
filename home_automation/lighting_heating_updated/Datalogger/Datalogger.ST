(* Warning *) 
(* The file is automatically regenerated and all manual modifications will be lost. *) 
(* ---------------------------------------------------------------------------- *) 

VAR_GLOBAL CONSTANT
  DTL_MAX_COLLECTIONS           : UINT := 4;    // {CSY} max. po�et kolekc� v dataloggeru                 {ENU} max number of collections in the DataLogger
  DTL_MAX_SIGNALS_IN_COLLECTION : UINT := 16;   // {CSY} max. po�et sign�l� v jedn� kolekci               {ENU} max number of signals in a single collection
  DTL_MAX_PATH                  : UINT := 64;   // {CSY} max. d�lka cesty  (65 znak� v�etn� koncov� nuly) {ENU} max path length (65 characters, including trailing zeros)
  DTL_MAX_LEN_NAME              : UINT := 15;   // {CSY} max. d�lka jm�na  (16 znak� v�etn� koncov� nuly) {ENU} max name length (16 characters, including trailing zeros)
  DTL_MAX_LEN_DESC              : UINT := 59;   // {CSY} max. d�lka popisu (60 znak� v�etn� koncov� nuly) {ENU} max description length (60 characters, including trailing zeros)
  DTL_MAX_LEN_FORMAT            : UINT := 39;   // {CSY} max. d�lka form�tovac�ho �et�zce (40 znak� v�etn� koncov� nuly) {ENU} (40 characters, including trailing zeros)

  DTL_UNKNOWN_COLLECTION        : USINT := 0;   // {CSY} nezn�m� typ kolekce       {ENU} unknown collection
  DTL_PERIOD_COLLECTION         : USINT := 1;   // {CSY} typ kolekce : periodick�  {ENU} collection type: Periodic
  DTL_EVENT_COLLECTION          : USINT := 2;   // {CSY} typ kolekce : ud�lostn�   {ENU} collection type: Event
  DTL_SIGNAL_COLLECTION         : USINT := 3;   // {CSY} typ kolekce : sign�lov�   {ENU} collection type: Signal
END_VAR

TYPE
   TDtlSignStat :
   STRUCT
     delta   : BOOL;
     res     : BOOL;
     hi3     : BOOL;
     hi2     : BOOL;
     hi1     : BOOL;
     lo1     : BOOL;
     lo2     : BOOL;
     lo3     : BOOL;
   END_STRUCT;

   TDtlSignEdge :
   STRUCT
     up                : TDtlSignStat;
     down              : TDtlSignStat;
   END_STRUCT;

   TDtlSignal_IN :
   STRUCT
     defined {aligned} : BOOL;                       // {CSY} sign�l je definov�n v xml souboru  {ENU} signal is defined in the XML file
     band              : SINT;                       // {CSY} p�smo, ve kter�m je sign�l         {ENU} zone in which the signal is
                                                     //     lo3 | lo2 | lo1 |   | hi1 | hi2 | hi3
                                                     // -4   -3    -2    -1   0    +1   +2    +3   +4
     edge              : TDtlSignEdge;               // {CSY} hrany od ud�lost� na sign�lu       {ENU} edges of the events on signal
   END_STRUCT;

   TDtlSignal_PAR :
   STRUCT
     enabled {aligned} : BOOL;                       // {CSY} sign�l je povolen v konfiguraci              {ENU} signal is enabled in the configuration
     reserved          : USINT;                      // {CSY} rezerva                                      {ENU} reserved
     name              : STRING[DTL_MAX_LEN_NAME];   // {CSY} jm�no sign�lu (16 znak� v�etn� koncov� nuly) {ENU} signal name (16 characters, including trailing zeros)
   END_STRUCT;

   TDtlSignLevelEn :
   STRUCT
     res0    : BOOL;
     res1    : BOOL;
     hi3     : BOOL;
     hi2     : BOOL;
     hi1     : BOOL;
     lo1     : BOOL;
     lo2     : BOOL;
     lo3     : BOOL;
   END_STRUCT;

   TDtlLevel_PAR :
   STRUCT
     value             : REAL;
     hyst              : REAL;
   END_STRUCT;

   TDtlSignal_EXT :
   STRUCT
     description       : STRING[DTL_MAX_LEN_DESC];   // {CSY} popis sign�lu                                    {ENU} signal description
     format            : STRING[DTL_MAX_LEN_FORMAT]; // {CSY} form�t z�pisu sign�lu                            {ENU} format of signal value printing
     changeEnable      : BYTE;                       // {CSY} povoleno vyhodnocov�n� zm�n                      {ENU} evaluation of changes allowed
     levelsEnable      : BYTE;                       // {CSY} povoleno vyhodnocov�n� �rovn�                    {ENU} evaluation of levels allowed
     levelsUpEnable    : TDtlSignLevelEn;            // {CSY} kter� �rovn� vyhodnocovat p�i stoupaj�c�m trendu {ENU} to evaluate the levels of the rising trend
     levelsDownEnable  : TDtlSignLevelEn;            // {CSY} kter� �rovn� vyhodnocovat p�i klesaj�c�m trendu  {ENU} to evaluate the levels of the falling trend
     changeValue       : REAL;                       // {CSY} velikost vyhodnocovan� zm�ny                     {ENU} size of evaluated change
     hi3, hi2, hi1     : TDtlLevel_PAR;              // {CSY} hodnoty �rovn� a hystereze pro stoupaj�c� trend  {ENU} levels and hysteresis values for the rising trend
     lo1, lo2, lo3     : TDtlLevel_PAR;              // {CSY} hodnoty �rovn� a hystereze pro klesaj�c� trend   {ENU} levels and hysteresis values for the falling trend
   END_STRUCT;

   TDtlSignal :
   STRUCT
     IN                : TDtlSignal_IN;
     PAR               : TDtlSignal_PAR;
   END_STRUCT;

   TDtlFileCond :
   STRUCT
     maxPeriodEnable   : BOOL;                       // {CSY} povoleno periodick� uzav�r�n� csv souboru                    {ENU} periodic closing of the CSV file allowed
     maxSizeEnable     : BOOL;                       // {CSY} povoleno uzav�r�n� csv souboru p�i dosa�en� ur�it� velikosti {ENU} closing the csv file at reaching a certain size allowed
     maxItemsEnable    : BOOL;                       // {CSY} povoleno uzav�r�n� csv souboru, pokud je zaps�n ur�it� po�et polo�ek (��dk�) {ENU} closing the csv file, if written in a number of items (lines) allowed
     maxTimeEnable     : BOOL;                       // {CSY} povoleno uzav�r�n� csv souboru po ur�it�m �ase        {ENU} closing the csv file after a certain time allowed
     maxPeriodUnits    : USINT;                      // {CSY} �asov� jednotka pro periodick� uzav�r�n� csv souboru  {ENU} unit of time for the periodic closing the CSV file
     maxPeriodValue    : UINT;                       // {CSY} po�et �asov�ch jednotek                               {ENU} number of time units
     maxSizeValue      : UDINT;                      // {CSY} max. velikost csv souboru (po�et byt�)                {ENU} max size of csv file (number of bytes)
     maxItemsValue     : UDINT;                      // {CSY} max. po�et polo�ek v csv souboru (��dk�)              {ENU} max Number of items (lines) in CSV file
     maxTimeValue      : TIME;                       // {CSY} max. �as pro uzav�en� csv souboru                     {ENU} max time to close the CSV file

   END_STRUCT;

   TDtlCollection_IN :
   STRUCT
     active {aligned}  : BOOL;                       // {CSY} kolekce je aktivn� (�e�� se v dataloggeru) {ENU} collection is active
     newSample         : BOOL;                       // {CSY} ulo�en nov� vzorek do csv souboru          {ENU} new sample is saved to CSV file
     newFile           : BOOL;                       // {CSY} vytvo�en nov� CSV soubor                   {ENU} new CSV file created
     typ               : USINT;                      // {CSY} typ kolekce : DTL_UNKNOWN_COLLECTION / DTL_PERIOD_COLLECTION / DTL_EVENT_COLLECTION / DTL_SIGNAL_COLLECTION {ENU} collection type : DTL_UNKNOWN_COLLECTION / DTL_PERIOD_COLLECTION / DTL_EVENT_COLLECTION / DTL_SIGNAL_COLLECTION
     numsignals        : UINT;                       // {CSY} po�et sign�l� definovan�ch v kolekci       {ENU} number of signals defined in the collection
     numItems          : UDINT;                      // {CSY} po�et v�t zapsan�ch do csv souboru         {ENU} number of items (lines) recorded into a CSV file
     lenghtFile        : UDINT;                      // {CSY} aktu�lni d�lka csv souboru v bytech        {ENU} current length of the CSV file in bytes
     fileName          : STRING[DTL_MAX_PATH+1];     // {CSY} jm�no csv souboru v�etne cesty             {ENU} CSV file name including path
     fileCreateTime    : DT;                         // {CSY} �as vytvo�eni csv souboru                  {ENU} CSV file creation time
     lastItemBuf       : UINT;                       // {CSY} index posledn� polo�ky v bufferu           {ENU} index of the last item in the buffer
   END_STRUCT;

   TDtlCollection_PAR :
   STRUCT
     enabled {aligned} : BOOL;                       // {CSY} kolekce je povolena                        {ENU} collection is enabled
     simulation        : BOOL;                       // {CSY} simulace (bez ukl�d�ni csv souboru)        {ENU} simulation (without saving CSV file)
     debugTxt          : BOOL;                       // {CSY} generovat ladic� texty do csv souboru      {ENU} generate debug text to CSV file
     reserved          : USINT;                      // {CSY} rezerva                                    {ENU} reserved
     name              : STRING[DTL_MAX_LEN_NAME];   // {CSY} jm�no kolekce 16 znak� v�etn� koncov� nuly {ENU} collection name (16 characters including trailing zeros)
     fileCond          : TDtlFileCond;               // {CSY} podm�nky pro zalo�en� nov�ho csv souboru   {ENU} conditions for creating a new CSV file
     period            : TIME;                       // {CSY} perioda pro periodickou kolekci            {ENU} period for periodic collection
   END_STRUCT;

   TDtlCollection_OUT :
   STRUCT
     disable {aligned} : BOOL;                       // {CSY} zak�zat kolekci                                   {ENU} disable the collection
     flush   {aligned} : BOOL;                       // {CSY} ulo�it rozpracovan� csv soubor                    {ENU} flush CSV file
     addrBuff          : UDINT;                      // {CSY} adresa prom�nn�, kde za��n� buffer pro zve�ejnen� posledn� zapsan�ch v�t, 1. polo�ka == hlavi�ka {ENU} address of variable, where begins buffer's last recorded items (lines)
     maxItems          : UINT;                       // {CSY} maxim�ln� po�et polo�ek v bufferu v�etne hlavi�ky {ENU} maximum number of items (lines) in the buffer including the header
     lenItem           : UINT;                       // {CSY} d�lka polo�ky v bufferu v bytech                  {ENU} length of item in the buffer (in bytes)
   END_STRUCT;

   TDtlCollection_EXT :
   STRUCT
     description       : STRING[DTL_MAX_LEN_DESC];   // {CSY} popis kolekce  {ENU} description of collection

     separator         : STRING[3];                  // {CSY} odd�lova� sloupc� ";" "," "TAB" {ENU} column separator ";" "," "TAB"
     decimalPoint      : BYTE;                       // {CSY} 0 = odd�lova� desetinn� ��sti je te�ka, 1 = odd�lova� desetinn� �asti je ��rka {ENU} 0 = decimal separator is the dot, 1 = decimal separator is the comma
     dirForDays        : BYTE;                       // {CSY} 0 = nezakl�dat adres�� pro den, 1 = zakl�dat adres�� pro den {ENU} 0 = without directory for the day 0 = with directory for the day

     dateEnable        : BOOL;                       // {CSY} sloupec date povolen  {ENU} column DATE is enabled
     dateHeader        : STRING[DTL_MAX_LEN_NAME];   // {CSY} nadpis sloupce date   {ENU} column title for DATE
     dateformat        : STRING[DTL_MAX_LEN_FORMAT]; // {CSY} form�t sloupce date   {ENU} printing format for column DATE
     timeEnable        : BOOL;                       // {CSY} sloupec time povolen  {ENU} column TIME is enabled
     timeHeader        : STRING[DTL_MAX_LEN_NAME];   // {CSY} nadpis sloupce time   {ENU} column title for time
     timeformat        : STRING[DTL_MAX_LEN_FORMAT]; // {CSY} form�t sloupce time   {ENU} printing format for column TIME

     periodControl     : BYTE;                       // {CSY} perioda je ��zena bool sign�lem                                       {ENU} period is controlled by the bool signal
     periodReset       : BYTE;                       // {CSY} povolen� resetu periody p�i asynchronn�m z�pisu do kolekce            {ENU} permit reset period for asynchronous write to a collection
     periodOff         : TIME;                       // {CSY} perioda pro ��zenou periodickou kolekci pokud je ��d�c� sign�l FALSE  {ENU} period for periodic controlled collection when the control signal is FALSE
     periodOn          : TIME;                       // {CSY} perioda pro ��zenou  periodickou kolekci pokud je ��d�c� sign�l TRUE  {ENU} period for periodic controlled collection when the control signal is TRUE
     signal            : ARRAY[0..DTL_MAX_SIGNALS_IN_COLLECTION-1] OF TDtlSignal_EXT;
   END_STRUCT;

   TDtlCollection :
   STRUCT
     IN                : TDtlCollection_IN;          // {CSY} stav kolekce       {ENU} collection status
     PAR               : TDtlCollection_PAR;         // {CSY} parametry kolekce  {ENU} collection parameters
     OUT               : TDtlCollection_OUT;         // {CSY} ��zen� kolekce     {ENU} collection control
     signal            : ARRAY[0..DTL_MAX_SIGNALS_IN_COLLECTION-1] OF TDtlSignal;  // {CSY} popis sign�l� v kolekci {ENU} description of the signal in the collection
   END_STRUCT;

   TDataLogger_IN :
   STRUCT                                            // {CSY} stav DataLoggeru                              {ENU} Datalogger status
     active            : BOOL;                       // {CSY} DataLogger je aktivn�                         {ENU} Datalogger is active
     wwwDir            : BOOL;                       // {CSY} povoleno ukl�d�n� csv soubor� do adres��e, kter� je dostupn� pro web server {ENU} enable of saving csv file to a directory that is available for the web server
     reserved          : USINT;                      // {CSY} rezerva                                       {ENU} reserved
     version           : STRING[7];                  // {CSY} verze firmware DataLoggeru                    {ENU} firmware version of Datalogger
     cfgFileName       : STRING[DTL_MAX_PATH+1];     // {CSY} jm�no konfigura�n�ho xml souboru v�etne cesty {ENU} name of the configuration XML file including path
     sumaCollections   : UINT;                       // {CSY} aktu�ln� po�et definovan�ch kolekc�           {ENU} current number of defined collections
     sumasignals       : UINT;                       // {CSY} aktu�ln� po�et v�ech definovan�ch sign�l�     {ENU} current number of defined signals
     errCode           : INT;                        // {CSY} chybov� k�d                                   {ENU} error code
     errMessage        : STRING[79];                 // {CSY} text chyby                                    {ENU} error message
   END_STRUCT;

   TDataLogger_PAR :
   STRUCT                                            // {CSY} parametry DataLoggeru  {ENU} Datalogger parameters
     enabled {aligned} : BOOL;                       // {CSY} Datalogger je povolen  {ENU} Datalogger is enabled
     reserved          : USINT;                      // {CSY} rezerva                {ENU} reserved
     name              : STRING[DTL_MAX_LEN_NAME];   // {CSY} jm�no DataLoggeru      {ENU} name of Datalogger
   END_STRUCT;

   TDataLogger_OUT :
   STRUCT                                            // {CSY} ��zen� DataLoggeru           {ENU} Datalogger control
     disable {aligned} : BOOL;                       // {CSY} zak�zat cel� DataLogger      {ENU} disable the Datalogger
     changePar         : BOOL;                       // {CSY} zm�na parametr� DataLoggeru  {ENU} change the Datalogger parameters
     clrErr            : BOOL;                       // {CSY} nulovat chybu DataLoggeru    {ENU} clear error of Datalogger
     reserved          : USINT;                      // {CSY} rezerva                      {ENU} reserved
   END_STRUCT;

   TDataLogger_EXT :
   STRUCT
     description       : STRING[DTL_MAX_LEN_DESC];   // {CSY} popis DataLoggeru              {ENU} Datalogger
     author            : STRING[DTL_MAX_LEN_DESC];   // {CSY} autor konfigurace DataLoggeru  {ENU} configuration author
     collection        : ARRAY[0..DTL_MAX_COLLECTIONS-1] OF TDtlCollection_EXT;   // {CSY} popis kolekc� v DataLoggeru  {ENU} description of the collections in the Datalogger
   END_STRUCT;

   TDataLogger :
   STRUCT
     IN                : TDataLogger_IN;             // {CSY} stav DataLoggeru                            {ENU} Datalogger status
     PAR               : TDataLogger_PAR;            // {CSY} parametry DataLoggeru                       {ENU} Datalogger parameters
     OUT               : TDataLogger_OUT;            // {CSY} ��zen� DataLoggeru                          {ENU} Datalogger control
     collection        : ARRAY[0..DTL_MAX_COLLECTIONS-1] OF TDtlCollection;  // {CSY} kolekce DataLoggeru {ENU} Datalogger collections
     //extPAR            : TDataLogger_EXT;            // {CSY} pln� rozhran� DataLoggeru                   {ENU} full dalogger interface
   END_STRUCT;

END_TYPE

VAR_GLOBAL
  Datalogger : TDataLogger;                          // {CSY} stav a ��zen� DataLoggeru {ENU} status and control Datalogger
END_VAR

(* ********************************************************************** *) 
(* Generated by Mosaic *) 
(* � 2001-2018 Teco a.s. *) 
(* Version : 1.0 *) 
(* DLL Version : 24.1.1.2 *)


