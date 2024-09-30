//+------------------------------------------------------------------+
//|                                                    TradeInfo.mqh |
//|                                  Copyright 2024, VTALGO ACADEMY. |
//|                                             https://             |
//+------------------------------------------------------------------+
#property copyright "Copyright 2024, VTALGO ACADEMY."
#property link      ""
#property version   "1.0"
#property strict

/**
 * Contents:
 * 
 * 1. TradeInfo Class
 *    - Stores information about individual trades
 *    - Methods for calculating profit, MAE, MFE, etc.
 * 
 * 2. Backtest Functions
 *    - PerformBacktest: Executes a backtest and populates TradeInfo array
 *    - CalculateBacktestTime: Calculates the duration of a backtest
 *    - GetFirstTradeOpenTime: Finds the opening time of the first trade
 *    - GetLastTradeCloseTime: Finds the closing time of the last trade
 * 
 * 3. Analysis Functions
 *    - CalculateBalanceCurve: Generates a balance curve from trade data
 *    - GetTradesPipsArray: Creates an array of profit/loss in pips for each trade
 *    - GetMaxMAE: Finds the maximum MAE from a backtest
 *    - GetMaxMFE: Finds the maximum MFE from a backtest
 * 
 * 4. Helper Functions
 *    - IsLeapYear: Checks if a given year is a leap year
 */


//+------------------------------------------------------------------+
//|                            TradeInfo Class                       |
//+------------------------------------------------------------------+
// The TradeInfo class encapsulates information about a single trade
// and provides methods to calculate various trade metrics.
//
// Attributes:
//   - m_openTime:   The time when the trade was opened
//   - m_closeTime:  The time when the trade was closed
//   - m_openPrice:  The price at which the trade was opened
//   - m_closePrice: The price at which the trade was closed
//   - m_symbol:     The trading symbol (e.g., "EURUSD")
//   - m_digits:     The number of decimal places for the symbol's price
//   - m_type:       The type of trade (0 for buy, 1 for sell)
//
// Methods:
//   - Constructor:  Initializes a new TradeInfo object
//   - Getters:      Methods to access the private attributes
//   - ProfitInPips: Calculates the profit of the trade in pips
//   - MAE:          Calculates the Maximum Adverse Excursion in pips
//   - MFE:          Calculates the Maximum Favorable Excursion in pips
//   - Profit:       Returns the monetary profit (or loss) for the trade in money
//   - Commission:   Returns the commission of the trade
//   - Swap:         Returns the swap for the trade
//   - NetProfit:    Returns the net profit (profit minus commission and swap)
//
class TradeInfo
{
private:
    datetime m_openTime;   // Time when the trade was opened
    datetime m_closeTime;  // Time when the trade was closed
    double m_openPrice;    // Price at which the trade was opened
    double m_closePrice;   // Price at which the trade was closed
    string m_symbol;       // Trading symbol (e.g., "EURUSD")
    int m_digits;          // Number of decimal places for the symbol's price
    int m_type;            // Type of trade (0 for buy, 1 for sell)
    double m_lots;         // New: store the trade volume
    double m_sl;           // New: stop loss
    double m_tp;           // New: take profit
    double m_profit;       // New: Profit of the trade
    double m_commission;   // New: store the commission
    double m_swap;         // New: store the swap

public:
    /**
     * Default constructor: Initializes a TradeInfo object with default values.
     */
    TradeInfo()
    {
        m_openTime = 0;
        m_closeTime = 0;
        m_openPrice = 0;
        m_closePrice = 0;
        m_symbol = "";
        m_digits = 0;
        m_type = 0;
        m_lots = 0;
        m_sl = 0;
        m_tp = 0;
        m_profit = 0;
        m_commission = 0;
        m_swap = 0;
    }
    
    /**
     * Constructor: Initializes a new TradeInfo object with the given trade data.
     *
     * @param openTime    The time when the trade was opened
     * @param closeTime   The time when the trade was closed
     * @param openPrice   The price at which the trade was opened
     * @param closePrice  The price at which the trade was closed
     * @param symbol      The trading symbol (e.g., "EURUSD")
     * @param type        The type of trade (0 for buy, 1 for sell)
     * @param lots        The volume of the trade
     * @param commission  The total commission of the trade
     * @param swap        The total swap for the trade
     */
    TradeInfo(datetime openTime, datetime closeTime, double openPrice, double closePrice, 
              string symbol, int type, double lots, double sl, double tp, double profit, double commission, double swap)
    {
        m_openTime = openTime;
        m_closeTime = closeTime;
        m_openPrice = openPrice;
        m_closePrice = closePrice;
        m_symbol = symbol;
        m_digits = (int)MarketInfo(symbol, MODE_DIGITS);
        m_type = type;
        m_lots = lots;
        m_sl = sl;
        m_tp = tp;
        m_profit = profit;
        m_commission = commission;
        m_swap = swap;
    }

    // Getter methods

    /**
     * @return The time when the trade was opened
     */
    datetime OpenTime() const { return m_openTime; }

    /**
     * @return The time when the trade was closed
     */
    datetime CloseTime() const { return m_closeTime; }

    /**
     * @return The price at which the trade was opened
     */
    double OpenPrice() const { return m_openPrice; }

    /**
     * @return The price at which the trade was closed
     */
    double ClosePrice() const { return m_closePrice; }

    /**
     * @return The trading symbol (e.g., "EURUSD")
     */
    string Symbol() const { return m_symbol; }

    /**
     * @return The number of decimal places for the symbol's price
     */
    int Digits() const { return m_digits; }
    
    /**
     * @return The number of lots for the order
     */
    double Lots() const { return m_lots; }
    
    /**
     * @return The Stop Loss 
     */
    double StopLoss() const { return m_sl; }
    
    /**
     * @return The Take Profit
     */
     double TakeProfit() const { return m_tp; }
     
     /**
     * @return The order type (BUY/SELL)
     */
     int Type() const { return m_type; }
     
     /**
     * @return The order profit
     */
     double Profit() const { return m_profit; }

    // Calculation methods

    /**
     * Calculates the profit of the trade in pips.
     *
     * @return The profit (or loss if negative) in pips
     */
    double ProfitInPips() const
    {
        double pips = (m_type == 0) ? (m_closePrice - m_openPrice) : (m_openPrice - m_closePrice);
        return NormalizeDouble(pips * MathPow(10, m_digits), 1);
    }
    
    /**
     * Returns an array of profit and loss values for each trade.
     *
     * @param plArray[] Array to store the profit and loss values
     * @param includeCommissionAndSwap Whether to include commission and swap in the calculation
     * @return The number of elements in the plArray
     */
    int GetProfitLossArray(double &plArray[], bool includeCommissionAndSwap) const
    {
        ArrayResize(plArray, 1);  // Resize to 1 as this is for a single trade
        
        if(includeCommissionAndSwap)
        {
            plArray[0] = NetProfit();
        }
        else
        {
            plArray[0] = Profit();
        }
        
        return 1;
    }

    /**
     * Calculates the Maximum Adverse Excursion (MAE) in pips.
     * MAE is the maximum potential loss during the trade's lifetime.
     *
     * @return The MAE in pips
     */
    double MAE() const
    {
        int startBar = iBarShift(m_symbol, PERIOD_M1, m_openTime);
        int endBar = iBarShift(m_symbol, PERIOD_M1, m_closeTime);
        double worstPrice = (m_type == 0) ? 
            iLow(m_symbol, PERIOD_M1, MathMin(startBar, endBar)) :
            iHigh(m_symbol, PERIOD_M1, MathMin(startBar, endBar));

        for(int i = MathMin(startBar, endBar); i <= MathMax(startBar, endBar); i++)
        {
            if(m_type == 0)
                worstPrice = MathMin(worstPrice, iLow(m_symbol, PERIOD_M1, i));
            else
                worstPrice = MathMax(worstPrice, iHigh(m_symbol, PERIOD_M1, i));
        }

        double mae = (m_type == 0) ? (m_openPrice - worstPrice) : (worstPrice - m_openPrice);
        return NormalizeDouble(mae * MathPow(10, m_digits), 1);
    }

    /**
     * Calculates the Maximum Favorable Excursion (MFE) in pips.
     * MFE is the maximum potential profit during the trade's lifetime.
     *
     * @return The MFE in pips
     */
    double MFE() const
    {
        int startBar = iBarShift(m_symbol, PERIOD_M1, m_openTime);
        int endBar = iBarShift(m_symbol, PERIOD_M1, m_closeTime);
        double bestPrice = (m_type == 0) ? 
            iHigh(m_symbol, PERIOD_M1, MathMin(startBar, endBar)) :
            iLow(m_symbol, PERIOD_M1, MathMin(startBar, endBar));

        for(int i = MathMin(startBar, endBar); i <= MathMax(startBar, endBar); i++)
        {
            if(m_type == 0)
                bestPrice = MathMax(bestPrice, iHigh(m_symbol, PERIOD_M1, i));
            else
                bestPrice = MathMin(bestPrice, iLow(m_symbol, PERIOD_M1, i));
        }

        double mfe = (m_type == 0) ? (bestPrice - m_openPrice) : (m_openPrice - bestPrice);
        return NormalizeDouble(mfe * MathPow(10, m_digits), 1);
    }
    
    /**
     * Calculates the Maximum Adverse Excursion (MAE) in account currency.
     * @return The MAE in account currency
     */
    double MAEMoney() const
    {
       double maeInPips = MAE();
       double pipValue = MarketInfo(m_symbol, MODE_TICKVALUE);
       
       // Adjust pip value if necessary (for 3 or 5 digit brokers)
       if (m_digits == 3 || m_digits == 5)
           pipValue *= 10;
   
       // Convert MAE from pips to price points
       double maeInPoints = maeInPips * MathPow(10, m_digits - 4);  // 4 is standard pip digits
   
       // Calculate MAE in account currency
       return maeInPoints * pipValue * m_lots;
   }

    /**
     * Calculates the Maximum Favorable Excursion (MFE) in account currency.
     * @return The MFE in account currency
     */
    double MFEMoney() const
    {
       double mfeInPips = MFE();
       double pipValue = MarketInfo(m_symbol, MODE_TICKVALUE);
       
       // Adjust pip value if necessary (for 3 or 5 digit brokers)
       if (m_digits == 3 || m_digits == 5)
           pipValue *= 10;
   
       // Convert MAE from pips to price points
       double mfeInPoints = mfeInPips * MathPow(10, m_digits - 4);  // 4 is standard pip digits
   
       // Calculate MAE in account currency
       return mfeInPoints * pipValue * m_lots;
   }

    /**
     * Returns the commission paid for the trade.
     * @return The commission in account currency
     */
    double Commission() const
    {
        return m_commission;
    }

    /**
     * Returns the swap for the trade.
     * @return The swap in account currency
     */
    double Swap() const
    {
        return m_swap;
    }

    /**
     * Calculates the net profit of the trade (profit - commission - swap).
     * @return The net profit in account currency
     */
    double NetProfit() const
    {
        return Profit() + m_commission + m_swap;
    }
};


//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| Function to calculate a backtest result                          |
//+------------------------------------------------------------------+

/**
 * Performs a backtest between two specified dates and stores trade information in an array of TradeInfo objects.
 *
 * @param bt_begin The start date for the backtest
 * @param bt_end The end date for the backtest
 * @param trades[] An array to store the TradeInfo objects
 * @param symbol The symbol to backtest (default is the current chart symbol)
 * @return The number of trades found and stored in the array
 */
int PerformBacktest(datetime bt_begin, datetime bt_end, TradeInfo &trades[], string symbol = NULL)
{
    if(symbol == NULL) symbol = Symbol();
    
    int tradesCount = 0;
    
    if(!OrdersHistoryTotal())
    {
        Print("Error: No history orders!");
        return 0;
    }
    
    for(int i = OrdersHistoryTotal() - 1; i >= 0; i--)
    {
        if(OrderSelect(i, SELECT_BY_POS, MODE_HISTORY))
        {
            if(OrderOpenTime() >= bt_begin && OrderCloseTime() <= bt_end && OrderSymbol() == symbol)
            {
                if(OrderType() == OP_BUY || OrderType() == OP_SELL)
                {
                    datetime openTime = OrderOpenTime();
                    datetime closeTime = OrderCloseTime();
                    double openPrice = OrderOpenPrice();
                    double closePrice = OrderClosePrice();
                    int type = (OrderType() == OP_BUY) ? 0 : 1;
                    double lots = OrderLots();
                    double sl = OrderStopLoss();
                    double tp = OrderTakeProfit();
                    double commission = OrderCommission();
                    double swap = OrderSwap();
                    double profit = OrderProfit();
                    
                    TradeInfo newTrade(openTime, closeTime, openPrice, closePrice, symbol, type, lots, sl, tp, profit, commission, swap);
                    ArrayResize(trades, tradesCount + 1);
                    trades[tradesCount] = newTrade;
                    tradesCount++;
                }
            }
            else if(OrderOpenTime() < bt_begin)
            {
                break;
            }
        }
    }
    
    return tradesCount;
}

//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| Function to calculate the total time for a backtest              |
//+------------------------------------------------------------------+

/**
 * Calculates the total time of the backtest and returns it in the specified unit.
 *
 * @param bt_begin The start date of the backtest
 * @param bt_end The end date of the backtest
 * @param unit The desired time unit for the result ("Years", "Months", "Days", "Hours", "Minutes", or "Seconds")
 * @return The total backtest time in the specified unit (as a double for precision)
 */
double CalculateBacktestTime(datetime bt_begin, datetime bt_end, string unit)
{
    if(bt_end < bt_begin)
    {
        Print("Error: End date is earlier than start date");
        return -1;
    }

    long totalSeconds = bt_end - bt_begin;
    
    if(unit == "Seconds")
        return (double)totalSeconds;
    
    if(unit == "Minutes")
        return (double)totalSeconds / 60;
    
    if(unit == "Hours")
        return (double)totalSeconds / (60 * 60);
    
    if(unit == "Days")
        return (double)totalSeconds / (24 * 60 * 60);
    
    if(unit == "Months")
    {
        MqlDateTime start_struct, end_struct;
        TimeToStruct(bt_begin, start_struct);
        TimeToStruct(bt_end, end_struct);
        
        int months = (end_struct.year - start_struct.year) * 12 + (end_struct.mon - start_struct.mon);
        
        // Adjust for partial months
        if(end_struct.day < start_struct.day)
            months--;
        
        return (double)months + (double)(end_struct.day - start_struct.day) / 30.44; // Average days in a month
    }
    
    if(unit == "Years")
    {
        MqlDateTime start_struct, end_struct;
        TimeToStruct(bt_begin, start_struct);
        TimeToStruct(bt_end, end_struct);
        
        double years = end_struct.year - start_struct.year;
        
        // Adjust for partial years
        if(end_struct.mon < start_struct.mon || (end_struct.mon == start_struct.mon && end_struct.day < start_struct.day))
            years--;
        
        int daysInYear = IsLeapYear(end_struct.year) ? 366 : 365;
        double fractionalYear = (double)(bt_end - (bt_begin + (years * daysInYear * 24 * 60 * 60))) / (daysInYear * 24 * 60 * 60);
        
        return years + fractionalYear;
    }
    
    Print("Error: Invalid time unit specified. Use 'Years', 'Months', 'Days', 'Hours', 'Minutes', or 'Seconds'.");
    return -1;
}

//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| inds the opening time of the first trade in the backtest         |
//+------------------------------------------------------------------+

/**
 * Finds the opening time of the first trade in the backtest.
 *
 * @param trades[] An array of TradeInfo objects
 * @return The opening time of the first trade, or 0 if the array is empty
 */
datetime GetFirstTradeOpenTime(const TradeInfo &trades[])
{
    int tradeCount = ArraySize(trades);
    if(tradeCount == 0)
        return 0;

    datetime firstOpenTime = trades[0].OpenTime();
    
    for(int i = 1; i < tradeCount; i++)
    {
        if(trades[i].OpenTime() < firstOpenTime)
            firstOpenTime = trades[i].OpenTime();
    }
    
    return firstOpenTime;
}

//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| Finds the closing time of the last trade in the backtest         |
//+------------------------------------------------------------------+

/**
 * Finds the closing time of the last trade in the backtest.
 *
 * @param trades[] An array of TradeInfo objects
 * @return The closing time of the last trade, or 0 if the array is empty
 */
datetime GetLastTradeCloseTime(const TradeInfo &trades[])
{
    int tradeCount = ArraySize(trades);
    if(tradeCount == 0)
        return 0;

    datetime lastCloseTime = trades[0].CloseTime();
    
    for(int i = 1; i < tradeCount; i++)
    {
        if(trades[i].CloseTime() > lastCloseTime)
            lastCloseTime = trades[i].CloseTime();
    }
    
    return lastCloseTime;
}

//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| Creates a pips array from backtest                               |
//+------------------------------------------------------------------+

/**
 * Creates an array of profit/loss in pips for each trade in the TradeInfo array.
 *
 * @param trades[] An array of TradeInfo objects
 * @param pipsArray[] An array to store the profit/loss in pips for each trade
 * @return The number of elements in the pipsArray
 */
int GetTradesPipsArray(const TradeInfo &trades[], double &pipsArray[])
{
    int tradeCount = ArraySize(trades);
    ArrayResize(pipsArray, tradeCount);
    
    for(int i = 0; i < tradeCount; i++)
    {
        pipsArray[i] = trades[i].ProfitInPips();
    }
    
    return tradeCount;
}


//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| Finds the maximum MAE from a backtest                            |
//+------------------------------------------------------------------+

/**
 * Finds the maximum MAE (Maximum Adverse Excursion) from a backtest.
 *
 * @param trades[] An array of TradeInfo objects
 * @return The maximum MAE value in pips
 */
double GetMaxMAE(const TradeInfo &trades[])
{
    int tradeCount = ArraySize(trades);
    if(tradeCount == 0)
        return 0;

    double maxMAE = trades[0].MAE();
    
    for(int i = 1; i < tradeCount; i++)
    {
        double currentMAE = trades[i].MAE();
        if(currentMAE > maxMAE)
            maxMAE = currentMAE;
    }
    
    return maxMAE;
}

//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| Finds the maximum MFE from a backtest                            |
//+------------------------------------------------------------------+

/**
 * Finds the maximum MFE (Maximum Favorable Excursion) from a backtest.
 *
 * @param trades[] An array of TradeInfo objects
 * @return The maximum MFE value in pips
 */
double GetMaxMFE(const TradeInfo &trades[])
{
    int tradeCount = ArraySize(trades);
    if(tradeCount == 0)
        return 0;

    double maxMFE = trades[0].MFE();
    
    for(int i = 1; i < tradeCount; i++)
    {
        double currentMFE = trades[i].MFE();
        if(currentMFE > maxMFE)
            maxMFE = currentMFE;
    }
    
    return maxMFE;
}


//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| Helper function to check if a year is a leap year                |
//+------------------------------------------------------------------+

bool IsLeapYear(int year)
{
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
}

//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| Creates array of profit and loss                                 |
//+------------------------------------------------------------------+

/**
 * Creates an array of profit and loss values for all trades in the TradeInfo array.
 *
 * @param trades[] An array of TradeInfo objects
 * @param plArray[] An array to store the profit and loss values for each trade
 * @param includeCommissionAndSwap Whether to include commission and swap in the calculation
 * @return The number of elements in the plArray
 */
int GetAllTradesProfitLossArray(const TradeInfo &trades[], double &plArray[], bool includeCommissionAndSwap)
{
    int tradeCount = ArraySize(trades);
    ArrayResize(plArray, tradeCount);
    
    for(int i = 0; i < tradeCount; i++)
    {
        double tradepl[];
        trades[i].GetProfitLossArray(tradepl, includeCommissionAndSwap);
        plArray[i] = tradepl[0];
    }
    
    return tradeCount;
}

//+------------------------------------------------------------------+