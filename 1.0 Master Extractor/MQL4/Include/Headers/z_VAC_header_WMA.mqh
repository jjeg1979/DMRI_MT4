//+------------------------------------------------------------------+
//|                                             z_VAC_header_WMA.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos del indicador WMA
 */

string z_VAC_header_WMA(string _sep){
   return "WMA_7"+_sep +"WMA_14"+_sep +"WMA_21"+_sep +"WMA_28"+_sep +"WMA_50"+_sep +"WMA_100"+_sep +"WMA_200"+_sep;
}

