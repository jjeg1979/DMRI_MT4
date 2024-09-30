//+------------------------------------------------------------------+
//|                                  VAC_Master_Extractor_Header.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+
#property copyright "VTALGO ACADEMY (C) 2024"
#property version   "1.00"
#property strict



sinput string	sMonthFilter	      = "========================> APLICAR FILTRO MENSUAL <========================";
input  bool    ExcludeJan           = false;
input  bool    ExcludeFeb           = false;
input  bool    ExcludeMar           = false;
input  bool    ExcludeApr           = false;
input  bool    ExcludeMay           = false;
input  bool    ExcludeJun           = false;
input  bool    ExcludeJul           = false;
input  bool    ExcludeAug           = false;
input  bool    ExcludeSep           = false;
input  bool    ExcludeOct           = false;
input  bool    ExcludeNov           = false;
input  bool    ExcludeDec           = false;
sinput string	sDayOfWeekFilter     = "========================> APLICAR FILTRO DIARIO <========================";
input  bool    ExcludeSunday        = false;
input  bool    ExcludeMonday        = false;
input  bool    ExcludeTuesday       = false;
input  bool    ExcludeWednesday     = false;
input  bool    ExcludeThursday      = false;
input  bool    ExcludeFriday        = false;
input  bool    ExcludeSaturday      = false;
sinput string  sFiltroHorario        = "========================> APLICAR FILTRO HORARIO <========================";
input  bool    limit_hour           = false;
input  int     start_hour           = 8;
input  int     end_hour             = 11;


