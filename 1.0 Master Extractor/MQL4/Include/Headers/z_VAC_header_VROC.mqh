//+------------------------------------------------------------------+
//|                                            z_VAC_header_VROC.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos del indicador VROC
 */

string z_VAC_header_VROC(string _sep){
   return "VROCFx_3"+_sep +"VROCFx_7"+_sep +"VROCFx_14"+_sep +"VROCFx_21"+_sep +"VROCFx_28"+_sep +"VROCFx_50"+_sep +"VROCFx_100"+_sep +"VROCFx_200"+_sep;
}

