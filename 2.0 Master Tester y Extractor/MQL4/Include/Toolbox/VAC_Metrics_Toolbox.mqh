//+------------------------------------------------------------------+
//|                                                      Metrics.mqh |
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
#include <Toolbox/VAC_Toolbox.mqh>
#include <TradeInfo/TradeInfo.mqh>
//+------------------------------------------------------------------+

/**
 * Filters trades by date range.
 *
 * @param allTrades[] Array of all TradeInfo objects
 * @param filteredTrades[] Array to store filtered TradeInfo objects
 * @param startDate Start date of the filter range
 * @param endDate End date of the filter range
 * @return The number of trades in the filtered array
 */
int FilterTradesByDate(const TradeInfo &allTrades[], TradeInfo &filteredTrades[], datetime startDate, datetime endDate)
{
    ArraySetAsSeries(filteredTrades, true);
    int totalTrades = ArraySize(allTrades);
    int filteredCount = 0;

    for(int i = 0; i < totalTrades; i++)
    {
        datetime openTime = allTrades[i].OpenTime();
        datetime closeTime = allTrades[i].CloseTime();

        if(openTime >= startDate && closeTime <= endDate)
        {
            filteredCount++;
            ArrayResize(filteredTrades, filteredCount);
            filteredTrades[filteredCount - 1] = allTrades[i];
        }
    }

    return filteredCount;
}

/**
 * Calculates the Profit Factor.
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @return The Profit Factor
 */
double CalculateProfitFactor(const TradeInfo &filteredTrades[])
{
    ArraySetAsSeries(filteredTrades, true);
    double totalProfit = 0, totalLoss = 0;
    totalProfit = CalculateGrossProfit(filteredTrades);
    totalLoss = -CalculateGrossLoss(filteredTrades);

    return SafeDivide(totalProfit, totalLoss);
}

/**
 * Calculates the Percentage of Winning Trades.
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @return The percentage of winning trades
 */
double CalculatePctWinner(const TradeInfo &filteredTrades[])
{
    ArraySetAsSeries(filteredTrades, true);
    int tradeCount = ArraySize(filteredTrades);
    int winCount = 0;

    for(int i = 0; i < tradeCount; i++)
    {
        if(filteredTrades[i].Profit() > 0)
            winCount++;
    }

    return SafeDivide((double)winCount, tradeCount) * 100;
}

/**
 * Calculates the Maximum Drawdown.
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @return The maximum drawdown as a percentage
 */
double CalculateDrawdown(const TradeInfo &filteredTrades[], double &max_dd_pct)
{
    ArraySetAsSeries(filteredTrades, true);
    int tradeCount = ArraySize(filteredTrades);
    double peak = 0, maxDrawdown = 0;
    double currentEquity = 0;

    for(int i = 0; i < tradeCount; i++)
    {
        currentEquity += filteredTrades[i].NetProfit();
        if(currentEquity > peak)
            peak = currentEquity;
        
        double drawdown_pct = SafeDivide(peak - currentEquity, peak) * 100;
        double drawdown = peak - currentEquity;
        if(drawdown > maxDrawdown)
            maxDrawdown = drawdown;
            max_dd_pct = drawdown_pct;        
    }

    return maxDrawdown;
}

/**
 * Calculates the Stagnation Period in bars and time.
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @param barCount Output parameter for stagnation period in bars
 * @param timeSeconds Output parameter for stagnation period in seconds
 */
void CalculateStagnationPeriod(const TradeInfo &filteredTrades[], int &barCount, int &timeSeconds)
{
    ArraySetAsSeries(filteredTrades, true);
    int tradeCount = ArraySize(filteredTrades);
    double peak = 0, currentEquity = 0;
    int peakIndex = 0, maxStagnationBars = 0;
    datetime peakTime = 0, maxStagnationEndTime = 0;

    for(int i = 0; i < tradeCount; i++)
    {
        currentEquity += filteredTrades[i].NetProfit();
        if(currentEquity > peak)
        {
            peak = currentEquity;
            peakIndex = i;
            peakTime = filteredTrades[i].CloseTime();
        }
        else
        {
            int stagnationBars = i - peakIndex;
            if(stagnationBars > maxStagnationBars)
            {
                maxStagnationBars = stagnationBars;
                maxStagnationEndTime = filteredTrades[i].CloseTime();
            }
        }
    }

    barCount = maxStagnationBars;
    timeSeconds = (int)(maxStagnationEndTime - peakTime);
}

/**
 * Calculates the Sortino Ratio.
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @param riskFreeRate The risk-free rate (e.g., 0.02 for 2%)
 * @return The Sortino Ratio
 */
double CalculateSortinoRatio(const TradeInfo &filteredTrades[], double riskFreeRate=0.04)
{
    ArraySetAsSeries(filteredTrades, true);
    int tradeCount = ArraySize(filteredTrades);
    double totalReturn = 0, sumNegativeReturnsSquared = 0;

    for(int i = 0; i < tradeCount; i++)
    {
        double profit = filteredTrades[i].NetProfit();
        totalReturn += profit;
        if(profit < 0)
            sumNegativeReturnsSquared += profit * profit;
    }

    double averageReturn = SafeDivide(totalReturn, tradeCount);
    double downwardDeviation = MathSqrt(SafeDivide(sumNegativeReturnsSquared, tradeCount));

    return SafeDivide(averageReturn - riskFreeRate, downwardDeviation);
}

/**
 * Calculates the Ulcer Ratio.
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @param riskFreeRate The risk-free rate (e.g., 0.02 for 2%)
 * @return The Ulcer Ratio
 */
double CalculateUlcerRatio(const TradeInfo &filteredTrades[], double riskFreeRate)
{
    ArraySetAsSeries(filteredTrades, true);
    int tradeCount = ArraySize(filteredTrades);
    double peak = 0, sumSquaredDrawdowns = 0;
    double currentEquity = 0, totalReturn = 0;

    for(int i = 0; i < tradeCount; i++)
    {
        double profit = filteredTrades[i].NetProfit();
        currentEquity += profit;
        totalReturn += profit;

        if(currentEquity > peak)
            peak = currentEquity;
        
        double drawdown = SafeDivide(peak - currentEquity, peak);
        sumSquaredDrawdowns += drawdown * drawdown;
    }

    double ulcerIndex = MathSqrt(SafeDivide(sumSquaredDrawdowns, tradeCount));
    double averageReturn = SafeDivide(totalReturn, tradeCount);

    return SafeDivide(averageReturn - riskFreeRate, ulcerIndex);
}

/**
 * Calculates the Sharpe Ratio.
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @param riskFreeRate The risk-free rate (e.g., 0.02 for 2%)
 * @return The Sharpe Ratio
 */
double CalculateSharpeRatio(const TradeInfo &filteredTrades[], double riskFreeRate=0.04)
{
    ArraySetAsSeries(filteredTrades, true);
    int tradeCount = ArraySize(filteredTrades);
    double totalReturn = 0, sumReturnsSquared = 0;

    for(int i = 0; i < tradeCount; i++)
    {
        double profit = filteredTrades[i].NetProfit();
        totalReturn += profit;
        sumReturnsSquared += profit * profit;
    }

    double averageReturn = SafeDivide(totalReturn, tradeCount);
    double standardDeviation = MathSqrt(SafeDivide(sumReturnsSquared, tradeCount) - (averageReturn * averageReturn));

    return SafeDivide(averageReturn - riskFreeRate, standardDeviation);
}

/**
 * Calculates the Gross Profit.
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @return The Gross Profit
 */
double CalculateGrossProfit(const TradeInfo &filteredTrades[])
{
    double grossProfit = 0;
    int tradeCount = ArraySize(filteredTrades);

    for(int i = 0; i < tradeCount; i++)
    {
         if (filteredTrades[i].Profit() >= 0) grossProfit += filteredTrades[i].NetProfit();
         else grossProfit += 0.0;
    }

    return grossProfit;
}

/**
 * Calculates the Gross Loss.
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @return The Gross Loss
 */
double CalculateGrossLoss(const TradeInfo &filteredTrades[])
{
    double grossLoss = 0;
    int tradeCount = ArraySize(filteredTrades);

    for(int i = 0; i < tradeCount; i++)
    {
         if (filteredTrades[i].Profit() < 0) grossLoss += filteredTrades[i].NetProfit();
         else grossLoss += 0.0;
    }

    return grossLoss;
}

/**
 * Calculates the Profit.
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @return The Profit
 */
double CalculateProfit(const TradeInfo &filteredTrades[])
{
    double profit = 0.0;
    
    profit = CalculateGrossProfit(filteredTrades) + CalculateGrossLoss(filteredTrades);

    return profit;
}


/**
 * Calculates the Net Profit.
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @return The Net Profit
 */
double CalculateNetProfit(const TradeInfo &filteredTrades[])
{
    double netProfit = 0;
    int tradeCount = ArraySize(filteredTrades);

    for(int i = 0; i < tradeCount; i++)
    {
        netProfit += filteredTrades[i].NetProfit();
    }

    return netProfit;
}

/**
 * Calculates the Recovery Factor.
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @return The Recovery Factor (Net Profit / Max Drawdown)
 */
double CalculateRecoveryFactor(const TradeInfo &filteredTrades[])
{
    double netProfit = CalculateNetProfit(filteredTrades);
    double maxDD_pct = 0.0;
    double maxDrawdown = CalculateDrawdown(filteredTrades, maxDD_pct);

    return SafeDivide(netProfit, maxDrawdown);
}

/**
 * Calculates the Maximum Consecutive Wins.
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @param maxConsecutiveWinsMoney Output parameter for max consecutive wins in money
 * @param maxConsecutiveWinsCount Output parameter for max consecutive wins count
 */
void CalculateMaxConsecutiveWins(const TradeInfo &filteredTrades[], double &maxConsecutiveWinsMoney, int &maxConsecutiveWinsCount)
{
    ArraySetAsSeries(filteredTrades, true);
    int tradeCount = ArraySize(filteredTrades);
    double currentWinStreak = 0;
    int currentWinCount = 0;
    maxConsecutiveWinsMoney = 0;
    maxConsecutiveWinsCount = 0;

    for(int i = 0; i < tradeCount; i++)
    {
        double profit = filteredTrades[i].NetProfit();
        if(profit > 0)
        {
            currentWinStreak += profit;
            currentWinCount++;
            if(currentWinStreak > maxConsecutiveWinsMoney)
            {
                maxConsecutiveWinsMoney = currentWinStreak;
                maxConsecutiveWinsCount = currentWinCount;
            }
        }
        else
        {
            currentWinStreak = 0;
            currentWinCount = 0;
        }
    }
}

/**
 * Calculates the Maximum Consecutive Losses.
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @param maxConsecutiveLossesMoney Output parameter for max consecutive losses in money
 * @param maxConsecutiveLossesCount Output parameter for max consecutive losses count
 */
void CalculateMaxConsecutiveLosses(const TradeInfo &filteredTrades[], double &maxConsecutiveLossesMoney, int &maxConsecutiveLossesCount)
{
    ArraySetAsSeries(filteredTrades, true);
    int tradeCount = ArraySize(filteredTrades);
    double currentLossStreak = 0;
    int currentLossCount = 0;
    maxConsecutiveLossesMoney = 0;
    maxConsecutiveLossesCount = 0;

    for(int i = 0; i < tradeCount; i++)
    {
        double profit = filteredTrades[i].NetProfit();
        if(profit < 0)
        {
            currentLossStreak += MathAbs(profit);
            currentLossCount++;
            if(currentLossStreak > maxConsecutiveLossesMoney)
            {
                maxConsecutiveLossesMoney = currentLossStreak;
                maxConsecutiveLossesCount = currentLossCount;
            }
        }
        else
        {
            currentLossStreak = 0;
            currentLossCount = 0;
        }
    }
}

/**
 * Calculates the Average Consecutive Wins.
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @param avgConsecutiveWinsMoney Output parameter for average consecutive wins in money
 * @param avgConsecutiveWinsCount Output parameter for average consecutive wins count
 */
void CalculateAvgConsecutiveWins(const TradeInfo &filteredTrades[], double &avgConsecutiveWinsMoney, double &avgConsecutiveWinsCount)
{
    ArraySetAsSeries(filteredTrades, true);
    int tradeCount = ArraySize(filteredTrades);
    double totalWinStreakMoney = 0;
    int totalWinStreakCount = 0;
    int winStreaks = 0;
    double currentWinStreak = 0;
    int currentWinCount = 0;

    for(int i = 0; i < tradeCount; i++)
    {
        double profit = filteredTrades[i].NetProfit();
        if(profit > 0)
        {
            currentWinStreak += profit;
            currentWinCount++;
        }
        else if(currentWinCount > 0)
        {
            totalWinStreakMoney += currentWinStreak;
            totalWinStreakCount += currentWinCount;
            winStreaks++;
            currentWinStreak = 0;
            currentWinCount = 0;
        }
    }

    // Handle the case where the last trade was a win
    if(currentWinCount > 0)
    {
        totalWinStreakMoney += currentWinStreak;
        totalWinStreakCount += currentWinCount;
        winStreaks++;
    }

    avgConsecutiveWinsMoney = SafeDivide(totalWinStreakMoney, winStreaks);
    avgConsecutiveWinsCount = SafeDivide((double)totalWinStreakCount, winStreaks);
}

/**
 * Calculates the Average Consecutive Losses.
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @param avgConsecutiveLossesMoney Output parameter for average consecutive losses in money
 * @param avgConsecutiveLossesCount Output parameter for average consecutive losses count
 */
void CalculateAvgConsecutiveLosses(const TradeInfo &filteredTrades[], double &avgConsecutiveLossesMoney, double &avgConsecutiveLossesCount)
{
    ArraySetAsSeries(filteredTrades, true);
    int tradeCount = ArraySize(filteredTrades);
    double totalLossStreakMoney = 0;
    int totalLossStreakCount = 0;
    int lossStreaks = 0;
    double currentLossStreak = 0;
    int currentLossCount = 0;

    for(int i = 0; i < tradeCount; i++)
    {
        double profit = filteredTrades[i].NetProfit();
        if(profit < 0)
        {
            currentLossStreak += MathAbs(profit);
            currentLossCount++;
        }
        else if(currentLossCount > 0)
        {
            totalLossStreakMoney += currentLossStreak;
            totalLossStreakCount += currentLossCount;
            lossStreaks++;
            currentLossStreak = 0;
            currentLossCount = 0;
        }
    }

    // Handle the case where the last trade was a loss
    if(currentLossCount > 0)
    {
        totalLossStreakMoney += currentLossStreak;
        totalLossStreakCount += currentLossCount;
        lossStreaks++;
    }

    avgConsecutiveLossesMoney = SafeDivide(totalLossStreakMoney, lossStreaks);
    avgConsecutiveLossesCount = SafeDivide((double)totalLossStreakCount, lossStreaks);
}

/**
 * Finds the Maximum Win.
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @return The maximum win amount
 */
double CalculateMaximumWin(const TradeInfo &filteredTrades[])
{
    ArraySetAsSeries(filteredTrades, true);
    int tradeCount = ArraySize(filteredTrades);
    double maxWin = 0;

    for(int i = 0; i < tradeCount; i++)
    {
        double profit = filteredTrades[i].NetProfit();
        if(profit > maxWin)
            maxWin = profit;
    }

    return maxWin;
}

/**
 * Finds the Maximum Loss.
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @return The maximum loss amount (as a positive number)
 */
double CalculateMaximumLoss(const TradeInfo &filteredTrades[])
{
    ArraySetAsSeries(filteredTrades, true);
    int tradeCount = ArraySize(filteredTrades);
    double maxLoss = 0;

    for(int i = 0; i < tradeCount; i++)
    {
        double profit = filteredTrades[i].NetProfit();
        if(profit < maxLoss)
            maxLoss = profit;
    }

    return MathAbs(maxLoss);
}

/**
 * Calculates the System Quality Number (SQN).
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @return The System Quality Number (SQN)
 */
double CalculateSQN(const TradeInfo &filteredTrades[])
{
    ArraySetAsSeries(filteredTrades, true);
    int tradeCount = ArraySize(filteredTrades);
    if(tradeCount < 2) return 0;

    double mean = 0, variance = 0;
    for(int i=0; i<tradeCount; i++)
    {
        mean += filteredTrades[i].NetProfit();
    }
    mean = SafeDivide(mean, tradeCount);

    for(int i=0; i<tradeCount; i++)
    {
        double diff = filteredTrades[i].NetProfit() - mean;
        variance += diff * diff;
    }
    variance = SafeDivide(variance, tradeCount - 1);

    double stdDev = MathSqrt(variance);
    return SafeDivide(MathSqrt(tradeCount) * mean, stdDev);
}

/**
 * Calculates the Value Added Monthly Index (VAMI) for a series of trades.
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @param vami[] Array to store the VAMI values
 * @param initialValue Initial investment value (default: 1000)
 * @return The number of VAMI values calculated
 */
int CalculateVAMI(const TradeInfo &filteredTrades[], double &vami[], double initialValue = 1000.0)
{
    ArraySetAsSeries(filteredTrades, true);
    int tradeCount = ArraySize(filteredTrades);
    ArrayResize(vami, tradeCount + 1);
    
    vami[0] = initialValue;
    for(int i = 0; i < tradeCount; i++)
    {
        double returnRate = filteredTrades[i].NetProfit() / vami[i];
        vami[i + 1] = vami[i] * (1 + returnRate);
    }
    
    return tradeCount + 1;
}

/**
 * Calculates the K-Ratio.
 * K-Ratio = (Slope of log(VAMI) regression line) / (sqrt(n) * Standard Error of the Slope)
 * where n is the number of trades
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @return The K-Ratio
 */
double CalculateKRatio(const TradeInfo &filteredTrades[])
{
    ArraySetAsSeries(filteredTrades, true);
    int tradeCount = ArraySize(filteredTrades);
    if(tradeCount < 2) return 0;

    double vami[];
    int vamiCount = CalculateVAMI(filteredTrades, vami);

    double sumX = 0, sumY = 0, sumXY = 0, sumX2 = 0;

    for(int i = 0; i < vamiCount; i++)
    {
        double logVAMI = MathLog(vami[i]);
        sumX += i;
        sumY += logVAMI;
        sumXY += i * logVAMI;
        sumX2 += i * i;
    }

    double slope = SafeDivide(vamiCount * sumXY - sumX * sumY, vamiCount * sumX2 - sumX * sumX);
    double intercept = SafeDivide(sumY - slope * sumX, vamiCount);

    // Calculate standard error of slope
    double sumResiduals2 = 0;
    for(int i = 0; i < vamiCount; i++)
    {
        double logVAMI = MathLog(vami[i]);
        double yPred = slope * i + intercept;
        double residual = logVAMI - yPred;
        sumResiduals2 += residual * residual;
    }

    double standardErrorSlope = MathSqrt(SafeDivide(sumResiduals2, (vamiCount - 2) * (vamiCount * sumX2 - sumX * sumX)));

    // Calculate K-Ratio
    //return SafeDivide(slope, MathSqrt(tradeCount) * standardErrorSlope);
    return SafeDivide(slope, tradeCount * standardErrorSlope);
}

/**
 * Calculates the R-squared (R²) coefficient for the logarithmic VAMI regression.
 *
 * @param filteredTrades[] Array of filtered TradeInfo objects
 * @return The R-squared coefficient
 */
double CalculateRSquared(const TradeInfo &filteredTrades[])
{
    ArraySetAsSeries(filteredTrades, true);
    int tradeCount = ArraySize(filteredTrades);
    if(tradeCount < 2) return 0;

    double vami[];
    int vamiCount = CalculateVAMI(filteredTrades, vami);

    double sumX = 0, sumY = 0, sumXY = 0, sumX2 = 0, sumY2 = 0;

    for(int i = 0; i < vamiCount; i++)
    {
        double logVAMI = MathLog(vami[i]);
        sumX += i;
        sumY += logVAMI;
        sumXY += i * logVAMI;
        sumX2 += i * i;
        sumY2 += logVAMI * logVAMI;
    }

    double slope = SafeDivide(vamiCount * sumXY - sumX * sumY, vamiCount * sumX2 - sumX * sumX);
    double intercept = SafeDivide(sumY - slope * sumX, vamiCount);

    // Calculate SST and SSR
    double meanY = SafeDivide(sumY, vamiCount);
    double SST = 0;  // Total Sum of Squares
    double SSR = 0;  // Sum of Squares of Regression (Explained Sum of Squares)

    for(int i = 0; i < vamiCount; i++)
    {
        double logVAMI = MathLog(vami[i]);
        double yPred = slope * i + intercept;
        SST += (logVAMI - meanY) * (logVAMI - meanY);
        SSR += (yPred - meanY) * (yPred - meanY);
    }

    // Calculate R-squared
    double rSquared = SafeDivide(SSR, SST);

    return rSquared;
}

// Helper function to calculate MAE and MFE statistics
void CalculateMAEMFE(const TradeInfo &trades[], double &maxMAE, double &maxMFE, double &avgMAE, double &avgMFE)
{
    ArraySetAsSeries(trades, true);
    int tradeCount = ArraySize(trades);
    double totalMAE = 0, totalMFE = 0;
    maxMAE = 0; maxMFE = 0;

    for(int i=0; i<tradeCount; i++)
    {
        double mae = trades[i].MAE();
        double mfe = trades[i].MFE();
        
        totalMAE += mae;
        totalMFE += mfe;
        
        if(mae > maxMAE) maxMAE = mae;
        if(mfe > maxMFE) maxMFE = mfe;
    }

    avgMAE = SafeDivide(totalMAE, tradeCount);
    avgMFE = SafeDivide(totalMFE, tradeCount);
}

// Helper function to calculate average win and loss
void CalculateAverageWinLoss(const TradeInfo &trades[], double &avgWin, double &avgLoss)
{
    ArraySetAsSeries(trades, true);
    int winCount = 0, lossCount = 0;
    double totalWin = 0, totalLoss = 0;
    int tradeCount = ArraySize(trades);

    for(int i=0; i<tradeCount; i++)
    {
        double profit = trades[i].NetProfit();
        if(profit > 0)
        {
            totalWin += profit;
            winCount++;
        }
        else if(profit < 0)
        {
            totalLoss += MathAbs(profit);
            lossCount++;
        }
    }

    avgWin = (winCount > 0) ? totalWin / winCount : 0;
    avgLoss = (lossCount > 0) ? totalLoss / lossCount : 0;
}

// Helper function to calculate average MAE and MFE
void CalculateAvgMAEMFE(const TradeInfo &trades[], double &avgMAE, double &avgMFE)
{
    ArraySetAsSeries(trades, true);
    int tradeCount = ArraySize(trades);
    double totalMAE = 0, totalMFE = 0;

    for(int i=0; i<tradeCount; i++)
    {
        totalMAE += trades[i].MAE();
        totalMFE += trades[i].MFE();
    }

    avgMAE = (tradeCount > 0) ? totalMAE / tradeCount : 0;
    avgMFE = (tradeCount > 0) ? totalMFE / tradeCount : 0;
}