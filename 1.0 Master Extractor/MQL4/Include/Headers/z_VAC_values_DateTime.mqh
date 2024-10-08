//+------------------------------------------------------------------+
//|                                        z_VAC_values_DateTime.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos para la fecha y hora
*/
string z_VAC_values_DateTime(string _sep, int _shift, bool _split_DateTime = false){
   datetime time        = iTime(NULL, 0, _shift);
   if(_split_DateTime) return TimeToStr(time, TIME_DATE)+_sep+TimeToStr(time, TIME_MINUTES)+_sep;
   else return TimeToStr(time, TIME_DATE|TIME_MINUTES)+_sep;
}

