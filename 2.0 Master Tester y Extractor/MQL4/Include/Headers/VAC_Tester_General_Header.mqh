//+------------------------------------------------------------------+
//|                                         VAC_Extractor_Header.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+
#property copyright "VTALGO ACADEMY (C) 2024"
#property version   "1.00"
#property strict

sinput   string   sratio               = "===============================> RATIO SL/TP <===============================";
input    double   SL                   = 0.0;            // Stop-Loss (pips)
input    double   TP                   = 0.0;            // Take-Profit (pips)
sinput   string	sz					      = "===============================> CONFIGURACIÓN GENERAL <===============================";
input    double   Lots                 = 0.1;            // Lotaje
input    int		MagicNumber				= 1;			      // MagicNumber del EA
input    string   Comentario           = "";             // Comentario para el EA
input    int		MaxOrdenesAbiertas	= 1;			      // Máximo número de órdenes abiertas
input    double	MaxSpread				= 2;			      // Máximo spread permitido
input    double	MaxSlippage				= 1.0;		      // Máximo slippage permitid
sinput   bool		CadaVela				   = TRUE;		      // Cada nueva vela del TF actual