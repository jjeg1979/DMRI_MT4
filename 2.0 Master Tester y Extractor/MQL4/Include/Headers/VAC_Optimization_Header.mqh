//+------------------------------------------------------------------+
//|                                      VAC_Optimization_Header.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+
#property copyright "Copyright 2024, VTALGO ACADEMY."
#property link      ""
#property version   "1.0"
#property strict
//+------------------------------------------------------------------+
//| IMPORTAMOS LIBRERÍAS                                             |
//+------------------------------------------------------------------+

//#include <Logging/File_Logging.mqh>
#include <Headers/VAC_Header_TestMode.mqh>
#include <Toolbox/VAC_Backtest_Toolbox.mqh>

//+------------------------------------------------------------------+
//| VARIABLES Y ENUMERACIONES                                        |
//+------------------------------------------------------------------+
enum SystemType{
   LONG = 1,
   SHORT = -1,
   BOTH = 0,
};

enum FO_NAME{
   FO0   = 0,
   FO1   = 1,
   FO2   = 2,
   FO3   = 3,
   FO4   = 4,
   FO5   = 5,
   FO6   = 6,
   FO7   = 7,
};

//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| PARÁMETROS DE ENTRADA                                            |
//+------------------------------------------------------------------+

sinput   string      srule_tester         = "================================> TEST RULES ONE BY ONE <================================";
input    int         test_rule            = 1;
sinput   string      stype_system         = "===========================> SYSTEM TYPE (LONG/SHORT/BOTH) <=============================";
sinput   SystemType  system_type          = LONG;
sinput   string      BACKTEST_DATES       = "================================> FUNCIONES OBJETIVO <================================";
sinput   bool        perform_IS_OOS       = False;
sinput   datetime    IS_BEGIN             = D'2012.01.01';
sinput   datetime    IS_END               = D'2020.12.31';
sinput   datetime    OOS_END              = D'2022.12.31';
sinput   bool        perform_SV3          = False;
sinput   datetime    SV3_END              = D'2024.12.31';
sinput   string      FO_OPTIM             = "================================> FUNCIONES OBJETIVO <================================";
sinput   string      FO_CODES             = "FO0: NP. FO1: NPxPF^2. FO2: NP^2xPF. FO3: SQN, FO4: K-Ratio, FO5: Sortino, FO6: Sharpe, FO7: AntiStagnation"; // Fórmulas FO
sinput   FO_NAME     FO                   = FO0;
sinput   bool        GEN_BACK_DETAILS     = true;
//+------------------------------------------------------------------+

datetime OOS_BEGIN = IS_END;
datetime SV3_BEGIN = OOS_END;
string backtest_id = "";

double initial_balance = 10000;

//+------------------------------------------------------------------+
//| FUNCIÓN QUE PASA DE NÚMEROS A NOMBRE DE FO                       |
//+------------------------------------------------------------------+

string GetFOName(int _fo_number){
   switch (_fo_number){
      case 0:
         return "NP";
       case 1:
         return "NPxPF2";
       case 2:
         return "NP2xPF";
       case 3:
         return "SQN";
       case 4:
         return "K-Ratio";
       case 5:
         return "Sortino";
       case 6:
         return "Sharpe";
       case 7:
         return "AntiStagnation";
        default:
         return "";
   }  
      
}
//+------------------------------------------------------------------+