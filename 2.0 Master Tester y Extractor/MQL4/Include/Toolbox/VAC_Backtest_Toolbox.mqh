//+------------------------------------------------------------------+
//|                                                     Backtest.mqh |
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
#include <Toolbox/VAC_Metrics_Toolbox.mqh>

/**
 * Generates a backtest name.
 *
 * @param _fo The name of the objective function used for optimization or for custom metric
 * @param _id Unique identifier for the backtest
 * @param _period_id Identifier for the period, used as a suffix for metric names
 * @param _mode The test mode (RuleByRule or RuleCombination)
 * @param _start_date Start date for the backtest
 * @param _end_date End date for the backtest
 */
 
 string GenerateBacktestName(
   int _fo,
   int _test_mode,
   int _test_rule, 
   string _period_id, 
   string& _backtest_id,
   datetime _start_date,
   datetime _end_date
){
   string _uniqueFileName = StringFormat("%sT%s_Trades_%d_test_rule_%d.csv", TimeToStr(_start_date, TIME_DATE), TimeToStr(_end_date, TIME_DATE), _fo, _test_rule);
    _uniqueFileName = Symbol() + "_" + IntegerToString(Period()) + "_" + _uniqueFileName;
	 _backtest_id = _uniqueFileName;
    StringReplace(_backtest_id, ".csv", "");  
   return _uniqueFileName;
 }

/**
 * Saves backtest details to a CSV file.
 *
 * @param filename The name of the file to save the data
 * @param period_id Identifier for the period, used as a suffix for metric names
 * @param BT_id Unique identifier for the backtest
 * @param start_date Start date of the backtest period
 * @param end_date End date of the backtest period
 */
void SaveBacktestDetails(string filename, string BT_id, string period_id, datetime start_date, datetime end_date, double _fo_value = 0.0)
{
    TradeInfo trades[];
    int tradeCount = PerformBacktest(start_date, end_date, trades);
    
    if(tradeCount == 0)
    {
        Print("No trades found in the specified period.");
        return;
    }

    int fileHandle = FileOpen(filename, FILE_READ|FILE_WRITE|FILE_CSV);
    if(fileHandle == INVALID_HANDLE)
    {
        Print("Failed to open file: ", filename, " ", GetLastError());        
        return;
    }

    // Write header    
    string header = "BT_id,";
    string metrics[] = {"Beneficio","Num_Ops","PctWin","PF","BE","DD($)","DD(%)","MaxWinOp($)","MaxLossOp($)","AvgWinOp($)","AvgLossOp($)",
                        "MaxConsecutiveWins($)","MaxConsecutiveWins(number)","MaxConsecutiveLoss($)","MaxConsecutiveLoss(number)",
                        "AvgConsecutiveWins($)","AvgConsecutiveWins(number)","AvgConsecutiveLoss($)","AvgConsecutiveLoss(number)",
                        "RF","SQN","K-Ratio","MaxMAE(pips)","MaxMFE(pips)","AvgMAE(pips)","AvgMFE(pips)","Custom FO value"};
    
    for(int i=0; i<ArraySize(metrics); i++)
    {
        if (period_id != "") header += metrics[i] + "_" + period_id;
        else header += metrics[i];
        if(i < ArraySize(metrics) - 1) header += ",";
    }
    if (FileSize(fileHandle) == 0)
        {
            FileWrite(fileHandle, header);
        }

    FileSeek(fileHandle, 0, SEEK_END);

    // Calculate and write metrics
    string line = BT_id + ",";
    line += DoubleToString(CalculateProfit(trades)) + ",";
    line += IntegerToString(tradeCount) + ",";
    line += DoubleToString(CalculatePctWinner(trades)) + ",";
    line += DoubleToString(CalculateProfitFactor(trades)) + ",";
    line += DoubleToString(CalculateProfit(trades) / tradeCount) + ",";  // Break Even (BE)
    double dd_pct = 0.0;
    line += DoubleToString(CalculateDrawdown(trades,dd_pct)) + ",";
    line += DoubleToString(dd_pct) + ",";
    line += DoubleToString(CalculateMaximumWin(trades)) + ",";
    line += DoubleToString(CalculateMaximumLoss(trades)) + ",";
    
    double avgWin = 0, avgLoss = 0;
    CalculateAverageWinLoss(trades, avgWin, avgLoss);
    line += DoubleToString(avgWin) + "," + DoubleToString(avgLoss) + ",";

    double maxConsWinMoney, maxConsLossMoney;
    int maxConsWinCount, maxConsLossCount;
    CalculateMaxConsecutiveWins(trades, maxConsWinMoney, maxConsWinCount);
    CalculateMaxConsecutiveLosses(trades, maxConsLossMoney, maxConsLossCount);
    line += DoubleToString(maxConsWinMoney) + "," + IntegerToString(maxConsWinCount) + ",";
    line += DoubleToString(maxConsLossMoney) + "," + IntegerToString(maxConsLossCount) + ",";

    double avgConsWinMoney, avgConsWinCount, avgConsLossMoney, avgConsLossCount;
    CalculateAvgConsecutiveWins(trades, avgConsWinMoney, avgConsWinCount);
    CalculateAvgConsecutiveLosses(trades, avgConsLossMoney, avgConsLossCount);
    line += DoubleToString(avgConsWinMoney) + "," + IntegerToString((int)MathCeil(avgConsWinCount)) + ",";
    line += DoubleToString(avgConsLossMoney) + "," + IntegerToString((int)MathCeil(avgConsLossCount)) + ",";

    line += DoubleToString(CalculateRecoveryFactor(trades)) + ",";
    line += DoubleToString(CalculateSQN(trades)) + ",";
    line += DoubleToString(CalculateKRatio(trades)) + ",";

    double maxMAE = 0, maxMFE = 0, avgMAE = 0, avgMFE = 0;
    CalculateMAEMFE(trades, maxMAE, maxMFE, avgMAE, avgMFE);
    line += DoubleToString(maxMAE) + "," + DoubleToString(maxMFE) + ",";
    line += DoubleToString(avgMAE) + "," + DoubleToString(avgMFE) + ",";

    // Add your custom result calculation here
    line += DoubleToString(_fo_value);  // Placeholder for Resultado_custom

    FileWrite(fileHandle, line);
    FileClose(fileHandle);
    Print("Detalles del backtest guardados con éxito en: ", filename);
}



/**
 * Saves trade details to a CSV file.
 *
 * @param filename The name of the file to save the data
 * @param BT_id Unique identifier for the backtest
 * @param start_date Start date of the backtest period
 * @param end_date End date of the backtest period
 */
void SaveTradeDetails(string filename, string BT_id, datetime start_date, datetime end_date, double _initial_balance = 10000.0)
{
    TradeInfo trades[];
    int tradeCount = PerformBacktest(start_date, end_date, trades);
    ArraySetAsSeries(trades, true);
    
    if(tradeCount == 0)
    {
        Print("No trades found in the specified period.");
        return;
    }

    int fileHandle = FileOpen(filename, FILE_WRITE|FILE_CSV);
    if(fileHandle == INVALID_HANDLE)
    {
        Print("Failed to open file: ", filename);
        return;
    }

    // Write header
    FileWrite(fileHandle, "BT_id,Symbol,Num_Op,OpenTime,CloseTime,OpenPrice,ClosePrice,Vol,Duration,SL,TP,Type,MAE(pips),MFE(pips),MAE($),MFE($),Profit,NetProfit,Swap,Commission,Balance");

    double balance = _initial_balance;
    for(int i=0; i<tradeCount; i++)
    {
        string line = BT_id + ",";
        line += trades[i].Symbol() + ",";
        line += IntegerToString(i+1) + ",";
        line += TimeToString(trades[i].OpenTime()) + ",";
        line += TimeToString(trades[i].CloseTime()) + ",";
        line += DoubleToString(trades[i].OpenPrice()) + ",";
        line += DoubleToString(trades[i].ClosePrice()) + ",";
        line += DoubleToString(trades[i].Lots()) + ",";
        line += IntegerToString((trades[i].CloseTime() - trades[i].OpenTime())) + ",";  // Duration in hours
        line += DoubleToString(trades[i].StopLoss()) + ",";
        line += DoubleToString(trades[i].TakeProfit()) + ",";
        line += (trades[i].Type() == 0 ? "Buy" : "Sell") + ",";        
        line += DoubleToString(trades[i].MAE()) + ",";
        line += DoubleToString(trades[i].MFE()) + ",";
        line += DoubleToString(trades[i].MAEMoney()) + ",";
        line += DoubleToString(trades[i].MFEMoney()) + ",";
        line += DoubleToString(trades[i].Profit()) + ",";
        line += DoubleToString(trades[i].NetProfit()) + ",";
        line += DoubleToString(trades[i].Swap()) + ",";
        line += DoubleToString(trades[i].Commission()) + ",";
        balance += trades[i].NetProfit();
        line += DoubleToString(balance);

        FileWrite(fileHandle, line);
    }

    FileClose(fileHandle);
}


