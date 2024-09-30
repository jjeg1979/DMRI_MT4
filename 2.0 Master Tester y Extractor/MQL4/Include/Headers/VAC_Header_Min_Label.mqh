//+------------------------------------------------------------------+
//|                                         VAC_Header_Min_Label.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+
#property copyright "VTALGO ACADEMY (C) 2024"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| PARÁMETROS DE ENTRADA                                            |
//+------------------------------------------------------------------+

sinput   string      slabel               = "===============================> LABELLING <==============================";
input    int         velas                = 1;     // Velas a predecir
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| VARIABLES INTERNAS                                               |
//+------------------------------------------------------------------+
// Comprobación del sesgo
int shift = velas + 1;
string label = NULL;
