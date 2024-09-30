//+------------------------------------------------------------------+
//|                                      z_VAC_header_SuperTrend.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos del indicador SuperTrend
*/

string z_VAC_header_SuperTrend(string _sep){
   return "SuperTrend_10_2"+_sep +"SuperTrend_10_3"+_sep +"SuperTrend_17_2"+_sep +"SuperTrend_17_3"+_sep + "SuperTrend_21_2"+_sep +"SuperTrend_21_3"+_sep +"SuperTrend_28_2"+_sep +"SuperTrend_28_3"+_sep;
}

