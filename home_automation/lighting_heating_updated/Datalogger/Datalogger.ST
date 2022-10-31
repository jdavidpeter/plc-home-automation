(* Warning *) 
(* The file is automatically regenerated and all manual modifications will be lost. *) 
(* ---------------------------------------------------------------------------- *) 

VAR_GLOBAL CONSTANT
  DTL_MAX_COLLECTIONS           : UINT := 4;    // {CSY} max. poèet kolekcí v dataloggeru                 {ENU} max number of collections in the DataLogger
  DTL_MAX_SIGNALS_IN_COLLECTION : UINT := 16;   // {CSY} max. poèet signálù v jedné kolekci               {ENU} max number of signals in a single collection
  DTL_MAX_PATH                  : UINT := 64;   // {CSY} max. délka cesty  (65 znakù vèetnì koncové nuly) {ENU} max path length (65 characters, including trailing zeros)
  DTL_MAX_LEN_NAME              : UINT := 15;   // {CSY} max. délka jména  (16 znakù vèetnì koncové nuly) {ENU} max name length (16 characters, including trailing zeros)
  DTL_MAX_LEN_DESC              : UINT := 59;   // {CSY} max. délka popisu (60 znakù vèetnì koncové nuly) {ENU} max description length (60 characters, including trailing zeros)
  DTL_MAX_LEN_FORMAT            : UINT := 39;   // {CSY} max. délka formátovacího øetìzce (40 znakù vèetnì koncové nuly) {ENU} (40 characters, including trailing zeros)

  DTL_UNKNOWN_COLLECTION        : USINT := 0;   // {CSY} neznámý typ kolekce       {ENU} unknown collection
  DTL_PERIOD_COLLECTION         : USINT := 1;   // {CSY} typ kolekce : periodická  {ENU} collection type: Periodic
  DTL_EVENT_COLLECTION          : USINT := 2;   // {CSY} typ kolekce : událostní   {ENU} collection type: Event
  DTL_SIGNAL_COLLECTION         : USINT := 3;   // {CSY} typ kolekce : signálová   {ENU} collection type: Signal
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
     defined {aligned} : BOOL;                       // {CSY} signál je definován v xml souboru  {ENU} signal is defined in the XML file
     band              : SINT;                       // {CSY} pásmo, ve kterém je signál         {ENU} zone in which the signal is
                                                     //     lo3 | lo2 | lo1 |   | hi1 | hi2 | hi3
                                                     // -4   -3    -2    -1   0    +1   +2    +3   +4
     edge              : TDtlSignEdge;               // {CSY} hrany od událostí na signálu       {ENU} edges of the events on signal
   END_STRUCT;

   TDtlSignal_PAR :
   STRUCT
     enabled {aligned} : BOOL;                       // {CSY} signál je povolen v konfiguraci              {ENU} signal is enabled in the configuration
     reserved          : USINT;                      // {CSY} rezerva                                      {ENU} reserved
     name              : STRING[DTL_MAX_LEN_NAME];   // {CSY} jméno signálu (16 znakù vèetnì koncové nuly) {ENU} signal name (16 characters, including trailing zeros)
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
     description       : STRING[DTL_MAX_LEN_DESC];   // {CSY} popis signálu                                    {ENU} signal description
     format            : STRING[DTL_MAX_LEN_FORMAT]; // {CSY} formát zápisu signálu                            {ENU} format of signal value printing
     changeEnable      : BYTE;                       // {CSY} povoleno vyhodnocování zmìn                      {ENU} evaluation of changes allowed
     levelsEnable      : BYTE;                       // {CSY} povoleno vyhodnocování úrovní                    {ENU} evaluation of levels allowed
     levelsUpEnable    : TDtlSignLevelEn;            // {CSY} které úrovnì vyhodnocovat pøi stoupajícím trendu {ENU} to evaluate the levels of the rising trend
     levelsDownEnable  : TDtlSignLevelEn;            // {CSY} které úrovnì vyhodnocovat pøi klesajícím trendu  {ENU} to evaluate the levels of the falling trend
     changeValue       : REAL;                       // {CSY} velikost vyhodnocované zmìny                     {ENU} size of evaluated change
     hi3, hi2, hi1     : TDtlLevel_PAR;              // {CSY} hodnoty úrovní a hystereze pro stoupající trend  {ENU} levels and hysteresis values for the rising trend
     lo1, lo2, lo3     : TDtlLevel_PAR;              // {CSY} hodnoty úrovní a hystereze pro klesající trend   {ENU} levels and hysteresis values for the falling trend
   END_STRUCT;

   TDtlSignal :
   STRUCT
     IN                : TDtlSignal_IN;
     PAR               : TDtlSignal_PAR;
   END_STRUCT;

   TDtlFileCond :
   STRUCT
     maxPeriodEnable   : BOOL;                       // {CSY} povoleno periodické uzavírání csv souboru                    {ENU} periodic closing of the CSV file allowed
     maxSizeEnable     : BOOL;                       // {CSY} povoleno uzavírání csv souboru pøi dosažení urèité velikosti {ENU} closing the csv file at reaching a certain size allowed
     maxItemsEnable    : BOOL;                       // {CSY} povoleno uzavírání csv souboru, pokud je zapsán urèitý poèet položek (øádkù) {ENU} closing the csv file, if written in a number of items (lines) allowed
     maxTimeEnable     : BOOL;                       // {CSY} povoleno uzavírání csv souboru po urèitém èase        {ENU} closing the csv file after a certain time allowed
     maxPeriodUnits    : USINT;                      // {CSY} èasová jednotka pro periodické uzavírání csv souboru  {ENU} unit of time for the periodic closing the CSV file
     maxPeriodValue    : UINT;                       // {CSY} poèet èasových jednotek                               {ENU} number of time units
     maxSizeValue      : UDINT;                      // {CSY} max. velikost csv souboru (poèet bytù)                {ENU} max size of csv file (number of bytes)
     maxItemsValue     : UDINT;                      // {CSY} max. poèet položek v csv souboru (øádkù)              {ENU} max Number of items (lines) in CSV file
     maxTimeValue      : TIME;                       // {CSY} max. èas pro uzavøení csv souboru                     {ENU} max time to close the CSV file

   END_STRUCT;

   TDtlCollection_IN :
   STRUCT
     active {aligned}  : BOOL;                       // {CSY} kolekce je aktivní (øeší se v dataloggeru) {ENU} collection is active
     newSample         : BOOL;                       // {CSY} uložen nový vzorek do csv souboru          {ENU} new sample is saved to CSV file
     newFile           : BOOL;                       // {CSY} vytvoøen nový CSV soubor                   {ENU} new CSV file created
     typ               : USINT;                      // {CSY} typ kolekce : DTL_UNKNOWN_COLLECTION / DTL_PERIOD_COLLECTION / DTL_EVENT_COLLECTION / DTL_SIGNAL_COLLECTION {ENU} collection type : DTL_UNKNOWN_COLLECTION / DTL_PERIOD_COLLECTION / DTL_EVENT_COLLECTION / DTL_SIGNAL_COLLECTION
     numsignals        : UINT;                       // {CSY} poèet signálù definovaných v kolekci       {ENU} number of signals defined in the collection
     numItems          : UDINT;                      // {CSY} poèet vìt zapsaných do csv souboru         {ENU} number of items (lines) recorded into a CSV file
     lenghtFile        : UDINT;                      // {CSY} aktuálni délka csv souboru v bytech        {ENU} current length of the CSV file in bytes
     fileName          : STRING[DTL_MAX_PATH+1];     // {CSY} jméno csv souboru vèetne cesty             {ENU} CSV file name including path
     fileCreateTime    : DT;                         // {CSY} èas vytvoøeni csv souboru                  {ENU} CSV file creation time
     lastItemBuf       : UINT;                       // {CSY} index poslední položky v bufferu           {ENU} index of the last item in the buffer
   END_STRUCT;

   TDtlCollection_PAR :
   STRUCT
     enabled {aligned} : BOOL;                       // {CSY} kolekce je povolena                        {ENU} collection is enabled
     simulation        : BOOL;                       // {CSY} simulace (bez ukládáni csv souboru)        {ENU} simulation (without saving CSV file)
     debugTxt          : BOOL;                       // {CSY} generovat ladicí texty do csv souboru      {ENU} generate debug text to CSV file
     reserved          : USINT;                      // {CSY} rezerva                                    {ENU} reserved
     name              : STRING[DTL_MAX_LEN_NAME];   // {CSY} jméno kolekce 16 znakù vèetnì koncové nuly {ENU} collection name (16 characters including trailing zeros)
     fileCond          : TDtlFileCond;               // {CSY} podmínky pro založení nového csv souboru   {ENU} conditions for creating a new CSV file
     period            : TIME;                       // {CSY} perioda pro periodickou kolekci            {ENU} period for periodic collection
   END_STRUCT;

   TDtlCollection_OUT :
   STRUCT
     disable {aligned} : BOOL;                       // {CSY} zakázat kolekci                                   {ENU} disable the collection
     flush   {aligned} : BOOL;                       // {CSY} uložit rozpracovaný csv soubor                    {ENU} flush CSV file
     addrBuff          : UDINT;                      // {CSY} adresa promìnné, kde zaèíná buffer pro zveøejnení poslednì zapsaných vìt, 1. položka == hlavièka {ENU} address of variable, where begins buffer's last recorded items (lines)
     maxItems          : UINT;                       // {CSY} maximální poèet položek v bufferu vèetne hlavièky {ENU} maximum number of items (lines) in the buffer including the header
     lenItem           : UINT;                       // {CSY} délka položky v bufferu v bytech                  {ENU} length of item in the buffer (in bytes)
   END_STRUCT;

   TDtlCollection_EXT :
   STRUCT
     description       : STRING[DTL_MAX_LEN_DESC];   // {CSY} popis kolekce  {ENU} description of collection

     separator         : STRING[3];                  // {CSY} oddìlovaè sloupcù ";" "," "TAB" {ENU} column separator ";" "," "TAB"
     decimalPoint      : BYTE;                       // {CSY} 0 = oddìlovaè desetinné èásti je teèka, 1 = oddìlovaè desetinné èasti je èárka {ENU} 0 = decimal separator is the dot, 1 = decimal separator is the comma
     dirForDays        : BYTE;                       // {CSY} 0 = nezakládat adresáø pro den, 1 = zakládat adresáø pro den {ENU} 0 = without directory for the day 0 = with directory for the day

     dateEnable        : BOOL;                       // {CSY} sloupec date povolen  {ENU} column DATE is enabled
     dateHeader        : STRING[DTL_MAX_LEN_NAME];   // {CSY} nadpis sloupce date   {ENU} column title for DATE
     dateformat        : STRING[DTL_MAX_LEN_FORMAT]; // {CSY} formát sloupce date   {ENU} printing format for column DATE
     timeEnable        : BOOL;                       // {CSY} sloupec time povolen  {ENU} column TIME is enabled
     timeHeader        : STRING[DTL_MAX_LEN_NAME];   // {CSY} nadpis sloupce time   {ENU} column title for time
     timeformat        : STRING[DTL_MAX_LEN_FORMAT]; // {CSY} formát sloupce time   {ENU} printing format for column TIME

     periodControl     : BYTE;                       // {CSY} perioda je øízena bool signálem                                       {ENU} period is controlled by the bool signal
     periodReset       : BYTE;                       // {CSY} povolení resetu periody pøi asynchronním zápisu do kolekce            {ENU} permit reset period for asynchronous write to a collection
     periodOff         : TIME;                       // {CSY} perioda pro øízenou periodickou kolekci pokud je øídící signál FALSE  {ENU} period for periodic controlled collection when the control signal is FALSE
     periodOn          : TIME;                       // {CSY} perioda pro øízenou  periodickou kolekci pokud je øídící signál TRUE  {ENU} period for periodic controlled collection when the control signal is TRUE
     signal            : ARRAY[0..DTL_MAX_SIGNALS_IN_COLLECTION-1] OF TDtlSignal_EXT;
   END_STRUCT;

   TDtlCollection :
   STRUCT
     IN                : TDtlCollection_IN;          // {CSY} stav kolekce       {ENU} collection status
     PAR               : TDtlCollection_PAR;         // {CSY} parametry kolekce  {ENU} collection parameters
     OUT               : TDtlCollection_OUT;         // {CSY} øízení kolekce     {ENU} collection control
     signal            : ARRAY[0..DTL_MAX_SIGNALS_IN_COLLECTION-1] OF TDtlSignal;  // {CSY} popis signálù v kolekci {ENU} description of the signal in the collection
   END_STRUCT;

   TDataLogger_IN :
   STRUCT                                            // {CSY} stav DataLoggeru                              {ENU} Datalogger status
     active            : BOOL;                       // {CSY} DataLogger je aktivní                         {ENU} Datalogger is active
     wwwDir            : BOOL;                       // {CSY} povoleno ukládání csv souborù do adresáøe, který je dostupný pro web server {ENU} enable of saving csv file to a directory that is available for the web server
     reserved          : USINT;                      // {CSY} rezerva                                       {ENU} reserved
     version           : STRING[7];                  // {CSY} verze firmware DataLoggeru                    {ENU} firmware version of Datalogger
     cfgFileName       : STRING[DTL_MAX_PATH+1];     // {CSY} jméno konfiguraèního xml souboru vèetne cesty {ENU} name of the configuration XML file including path
     sumaCollections   : UINT;                       // {CSY} aktuální poèet definovaných kolekcí           {ENU} current number of defined collections
     sumasignals       : UINT;                       // {CSY} aktuální poèet všech definovaných signálù     {ENU} current number of defined signals
     errCode           : INT;                        // {CSY} chybový kód                                   {ENU} error code
     errMessage        : STRING[79];                 // {CSY} text chyby                                    {ENU} error message
   END_STRUCT;

   TDataLogger_PAR :
   STRUCT                                            // {CSY} parametry DataLoggeru  {ENU} Datalogger parameters
     enabled {aligned} : BOOL;                       // {CSY} Datalogger je povolen  {ENU} Datalogger is enabled
     reserved          : USINT;                      // {CSY} rezerva                {ENU} reserved
     name              : STRING[DTL_MAX_LEN_NAME];   // {CSY} jméno DataLoggeru      {ENU} name of Datalogger
   END_STRUCT;

   TDataLogger_OUT :
   STRUCT                                            // {CSY} øízení DataLoggeru           {ENU} Datalogger control
     disable {aligned} : BOOL;                       // {CSY} zakázat celý DataLogger      {ENU} disable the Datalogger
     changePar         : BOOL;                       // {CSY} zmìna parametrù DataLoggeru  {ENU} change the Datalogger parameters
     clrErr            : BOOL;                       // {CSY} nulovat chybu DataLoggeru    {ENU} clear error of Datalogger
     reserved          : USINT;                      // {CSY} rezerva                      {ENU} reserved
   END_STRUCT;

   TDataLogger_EXT :
   STRUCT
     description       : STRING[DTL_MAX_LEN_DESC];   // {CSY} popis DataLoggeru              {ENU} Datalogger
     author            : STRING[DTL_MAX_LEN_DESC];   // {CSY} autor konfigurace DataLoggeru  {ENU} configuration author
     collection        : ARRAY[0..DTL_MAX_COLLECTIONS-1] OF TDtlCollection_EXT;   // {CSY} popis kolekcí v DataLoggeru  {ENU} description of the collections in the Datalogger
   END_STRUCT;

   TDataLogger :
   STRUCT
     IN                : TDataLogger_IN;             // {CSY} stav DataLoggeru                            {ENU} Datalogger status
     PAR               : TDataLogger_PAR;            // {CSY} parametry DataLoggeru                       {ENU} Datalogger parameters
     OUT               : TDataLogger_OUT;            // {CSY} øízení DataLoggeru                          {ENU} Datalogger control
     collection        : ARRAY[0..DTL_MAX_COLLECTIONS-1] OF TDtlCollection;  // {CSY} kolekce DataLoggeru {ENU} Datalogger collections
     //extPAR            : TDataLogger_EXT;            // {CSY} plné rozhraní DataLoggeru                   {ENU} full dalogger interface
   END_STRUCT;

END_TYPE

VAR_GLOBAL
  Datalogger : TDataLogger;                          // {CSY} stav a øízení DataLoggeru {ENU} status and control Datalogger
END_VAR

(* ********************************************************************** *) 
(* Generated by Mosaic *) 
(* © 2001-2018 Teco a.s. *) 
(* Version : 1.0 *) 
(* DLL Version : 22.2.1.1 *)


