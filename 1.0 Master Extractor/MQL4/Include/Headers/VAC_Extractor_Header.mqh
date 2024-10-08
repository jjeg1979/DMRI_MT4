//+------------------------------------------------------------------+
//|                                         VAC_Extractor_Header.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+
#property copyright "VTALGO ACADEMY (C) 2024"
#property version   "1.00"
#property strict

/*
 * Este archivo es el archivo que importa las cabeceras de las
 * características
 *
*/
//+------------------------------------------------------------------+
//| PARÁMETROS GENERALES                                             |
//+------------------------------------------------------------------+
sinput string sp00               = "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++";
sinput string sp01               = "++++++++++++++++++++++++++++++ EXTRACTOR AVANZADO VTALGO +++++++++++++++++++++++++++++";
sinput string sp02               = "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++";
sinput string s001               = "========================> INCLUSIÓN/EXCLUSIÓN CARACTERÍSTICAS <=======================";
sinput string s0011              = "=======================> CARACTERÍSTICAS BÁSICAS <=======================";
sinput bool   splitDateTime      = false;
sinput bool   includeDateTime    = true;
sinput bool   includeOHLCV       = true;
sinput bool   includeADX         = true;
sinput bool   includeAroonDown   = true;
sinput bool   includeAroonUp     = true;
sinput bool   includeATR         = true;
sinput bool   includeBBDown      = true;
sinput bool   includeBBUp        = true;
sinput bool   includeBearsPower  = true;
sinput bool   includeBullsPower  = true;
sinput bool   includeCCI         = true;
sinput bool   includeDeMarker    = true;
sinput bool   includeDMIMinus    = true;
sinput bool   includeDMIPlus     = true;
sinput bool   includeDonhcDown   = true;
sinput bool   includeDonhcUp     = true;
sinput bool   includeEnvDown     = true;
sinput bool   includeEnvUp       = true;
sinput bool   includeEMA         = true;
sinput bool   includeForce       = true;
sinput bool   includeIBS         = true;
sinput bool   includeIsolated    = true;
sinput bool   includeKeltDown    = true;
sinput bool   includeKeltUp      = true;
sinput bool   includeMACD        = true;
sinput bool   includeMMI         = true;
sinput bool   includeMFI         = true;
sinput bool   includeMom         = true;
sinput bool   includeOsMA        = true;
sinput bool   includeRSI         = true;
sinput bool   includeRVI         = true;
sinput bool   includeSAR         = true;
sinput bool   includeSMA         = true;
sinput bool   includeSuperTrend  = true;
sinput bool   includeStoch       = true;
sinput bool   includeTenkan      = true;
sinput bool   includeVROC        = true;
sinput bool   includeWMA         = true;
sinput bool   includeWPR         = true;
sinput string s0012              = "=======================> NORMALIZACIONES CON EL CIERRE <=======================";
sinput bool   includeCBBRDown    = true;
sinput bool   includeCBBRUp      = true;
sinput bool   includeCDonchDown  = true;
sinput bool   includeCDonchUp    = true;
sinput string sp03               = "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++";