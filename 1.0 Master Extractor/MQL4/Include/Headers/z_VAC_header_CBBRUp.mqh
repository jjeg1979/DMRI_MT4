//+------------------------------------------------------------------+
//|                                          z_VAC_header_CBBRUp.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos de la normalización
 * del cierre con la Banda Bollinger Superior
 */

string z_VAC_header_CBBRUp(string _sep){
   return "C_BBR_Up_6_2"+_sep +"C_BBR_Up_15_2"+_sep +"C_BBR_Up_20_2"+_sep +"C_BBR_Up_25_2"+_sep +"C_BBR_Up_33_2"+_sep +"C_BBR_Up_14_3"+_sep +"C_BBR_Up_20_3"+_sep +"C_BBR_Up_50_3"+_sep;
}

