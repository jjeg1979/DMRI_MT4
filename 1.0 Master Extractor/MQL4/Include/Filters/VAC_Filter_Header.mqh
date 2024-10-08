//+------------------------------------------------------------------+
//|                                  VAC_Master_Extractor_Header.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+
#property copyright "VTALGO ACADEMY (C) 2024"
#property version   "1.00"
#property strict



sinput string	sMonthFilter	      = "=============================";		// =======>    FILTRO MENSUAL     <=======
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
sinput string	sDayOfWeekFilter     = "=============================";		// =======>    FILTRO DIARIO     <=======
input  bool    ExcludeSunday        = false;
input  bool    ExcludeMonday        = false;
input  bool    ExcludeTuesday       = false;
input  bool    ExcludeWednesday     = false;
input  bool    ExcludeThursday      = false;
input  bool    ExcludeFriday        = false;
input  bool    ExcludeSaturday      = false;
sinput string  sFiltroHorario        = "========================> APLICAR FILTRO HORARIO<========================";
input  bool    limit_hour           = false;
input  int     start_hour           = 8;
input  int     end_hour             = 11;


// + ----------------------------------------------------+
// | Función MQL4 para filtrar por meses                 |    
// + ----------------------------------------------------+

bool ShouldFilterMonth(bool jan, bool feb, bool mar, bool apr, bool may, bool jun, 
                       bool jul, bool aug, bool sep, bool oct, bool nov, bool dec) 
{
    int currentMonth = Month();  // Obtiene el mes actual (1 = Enero, 12 = Diciembre)

    switch(currentMonth) 
    {
        case 1:
            return jan;
        case 2:
            return feb;
        case 3:
            return mar;
        case 4:
            return apr;
        case 5:
            return may;
        case 6:
            return jun;
        case 7:
            return jul;
        case 8:
            return aug;
        case 9:
            return sep;
        case 10:
            return oct;
        case 11:
            return nov;
        case 12:
            return dec;
        default:
            return true;  // Por seguridad, aunque no debería ocurrir.
    }
}


// + ----------------------------------------------------+
// | Función MQL4 para filtrar por meses                 |    
// + ----------------------------------------------------+
bool ShouldFilterDay(bool mon, bool tue, bool wed, bool thu, bool fri, bool sat, bool sun) 
{
    int currentDay = DayOfWeek();  // Obtiene el día actual de la semana (0 = Domingo, 6 = Sábado)

    switch(currentDay) 
    {
        case 0:
            return sun;
        case 1:
            return mon;
        case 2:
            return tue;
        case 3:
            return wed;
        case 4:
            return thu;
        case 5:
            return fri;
        case 6:
            return sat;
        default:
            return true;  // Por seguridad, aunque no debería ocurrir.
    }
}

bool ShouldFilterHour(int _start_hour, int _end_hour, int _shift){
   return TimeHour(iTime(NULL, 0, _shift)) >= _start_hour && TimeHour(iTime(NULL, 0, _shift)) <= _end_hour;
}

