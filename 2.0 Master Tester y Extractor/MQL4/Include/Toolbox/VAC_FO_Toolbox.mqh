//+------------------------------------------------------------------+
//|                                                       VAC_FO.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+
#property copyright "VTALGO ACADEMY (C) 2024"
#property version   "1.04"
#property strict
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| IMPORTAMOS LIBRERÍAS                                             |
//+------------------------------------------------------------------+
#include <Headers/VAC_Optimization_Header.mqh>
#include <Toolbox/VAC_Metrics_Toolbox.mqh>
#include <Toolbox/VAC_Ensembles_Toolbox.mqh>



//+------------------------------------------------------------------+
//| Tester function                                                  |
//+------------------------------------------------------------------+
double OnTester(){

    
   // ENSAMBLADOS
   if (ExtraccionEnsamblado) 
      write_ensemble_info(test_rule);
       


    // Cálculo de las variables auxiliares para las funciones objetivo
    double fo = 0.0;
    double NP = TesterStatistics(STAT_PROFIT);
    double PF = TesterStatistics(STAT_PROFIT_FACTOR);
    double MaxDD = TesterStatistics(STAT_BALANCE_DD);
    double ExPayOff = TesterStatistics(STAT_EXPECTED_PAYOFF);
    double WinTrades = TesterStatistics(STAT_PROFIT_TRADES);
    double LossTrades = TesterStatistics(STAT_LOSS_TRADES);
    double TotalTrades = TesterStatistics(STAT_TRADES);
    double MaxConsecutiveLoss = MathAbs(TesterStatistics(STAT_CONLOSSMAX));
    double MaxLossTrade = MathAbs(TesterStatistics(STAT_MAX_LOSSTRADE));
    double AvgLossTrade = SafeDivide(MathAbs(TesterStatistics(STAT_GROSS_LOSS)), LossTrades);
    double MinMarginLevel = TesterStatistics(STAT_MIN_MARGINLEVEL);
    
    // double pips[];
    // double total_pips = CalculatePips(pips);
    
    
    TradeInfo trades[];
    int tradeCount = PerformBacktest(IS_BEGIN ,OOS_END, trades);

    // Evitar división por cero
    if (LossTrades == 0) LossTrades = 1;
    if (MaxDD == 0) MaxDD = 0.01;
    if (PF == 0) PF = 0.01;

    double sgnNP = (NP < 0) ? -1.0 : 1.0;

    // Implementación de las funciones objetivo
    switch(FO)
    {
        case 0: fo = NP; break;
        case 1: fo = NP * MathPow(PF, 2); break;
        case 2: fo = MathPow(NP, 2) * PF; break;
		  case 3: fo = CalculateSQN(trades); break;
		  case 4: fo = CalculateKRatio(trades); break;
		  case 5: fo = CalculateSortinoRatio(trades); break;
		  case 6: fo = CalculateSharpeRatio(trades); break;
		  case 7: {
		   int barCount = 0;
		   int timeSeconds = 0;
		   CalculateStagnationPeriod(trades, barCount, timeSeconds);
		   fo = SafeDivide(1.0, barCount); 
		   break;
		  }
        
        default: fo = 0.0;
    }
    
    if (perform_IS_OOS){
      // Generar un nombre de archivo único para este backtest/optimización
      string is_filename = GenerateBacktestName(FO, test_mode, "_IS", backtest_id, IS_BEGIN, IS_END);
	   // Guardar detalles del backtest para IS
      SaveBacktestDetails(is_filename, backtest_id, "IS", IS_BEGIN, IS_END, fo);
    
      // Guardar detalles del backtest para OOS
      string oos_filename = GenerateBacktestName(FO, test_mode, "_OOS", backtest_id, OOS_BEGIN, OOS_END);
      SaveBacktestDetails(oos_filename, backtest_id, "OOS", OOS_BEGIN, OOS_END, fo);
    }
    
    if (perform_SV3) {
      string sv3_filename = GenerateBacktestName(FO, test_mode, "_SV3", backtest_id, OOS_BEGIN, OOS_END);
      SaveBacktestDetails(sv3_filename, "SV3", backtest_id, SV3_BEGIN, SV3_END);
     
    }
    
    // Guardar detalles del backtest para IS+OOS
    string isos_filename = GenerateBacktestName(FO, test_mode, "", backtest_id, IS_BEGIN, OOS_END);
    SaveBacktestDetails("all_backtest_results.csv", backtest_id, "", IS_BEGIN, OOS_END);
    
    // Guardar detalles de las operaciones con el nombre de archivo único
    if (GEN_BACK_DETAILS) {
       if (perform_IS_OOS){
         SaveTradeDetails(backtest_id + "IS.csv", backtest_id, IS_BEGIN, IS_END, initial_balance);
         SaveTradeDetails(backtest_id + "OOS.csv", backtest_id, OOS_BEGIN, OOS_END, initial_balance);
       }
       SaveTradeDetails(backtest_id + ".csv", backtest_id, IS_BEGIN, OOS_END, initial_balance);
       if (perform_SV3)  {SaveTradeDetails(backtest_id + "SV3.csv", backtest_id, SV3_BEGIN, SV3_END, initial_balance);}
    }   

    return fo;
}
//+------------------------------------------------------------------+


