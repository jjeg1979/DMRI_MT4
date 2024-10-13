//+------------------------------------------------------------------+
//|                                         VAC_Ensembles_Header.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+


sinput string EXT_STR               = "========================> ENSAMBLADOS <========================";
sinput bool ExtraccionEnsamblado    = false;

enum tipo_ensamble{
   NO_ENSEMBLE                = 0,
   ENSEMBLE_VOTING            = 1,
   ENSEMBLE_WEIGHTED_VOTING   = 2,
};


sinput string voting_ensemble = "===================== ENSAMBLADO POR VOTO =====================";
input tipo_ensamble ensemble  = ENSEMBLE_VOTING;
input int min_votos = 0;