//+------------------------------------------------------------------+
//|                                                    Labelling.mq4 |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+
#property copyright "VTALGO ACADEMY (C) 2024"
#property version   "1.00"
#property strict


enum ExitMode {
   SignaLost,
   AfterNCandles,
};

sinput   string   sext001           = "==================> MODO DE SALIDA <=========================";
input    ExitMode exit_mode          = AfterNCandles;
input    int      N_Candles         = 1;    // Máximo número de velas en mercado (modo AfterNCandles)