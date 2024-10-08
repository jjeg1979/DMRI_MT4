//+------------------------------------------------------------------+
//|                                    OptimizedSuperTrend_v3.mq4    |
//|            VTALGO ACADEMY © 2024, Based on Jason Robinson's work |
//+------------------------------------------------------------------+
#property copyright "Copyright © 2024, Based on Jason Robinson's work"
#property link      "http://www.spreadtrade2win.com"
#property strict

#property indicator_chart_window
#property indicator_buffers 3
#property indicator_color1 Lime
#property indicator_color2 Red
#property indicator_color3 Blue
#property indicator_width1 2
#property indicator_width2 2
#property indicator_width3 4

input int Nbr_Periods = 10;     // ATR Period
input double Multiplier = 3.0;  // ATR Multiplier

double TrendUp[];
double TrendDown[];
double SuperTrend[];
int changeOfTrend;

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
{
    SetIndexBuffer(0, TrendUp);
    SetIndexStyle(0, DRAW_LINE, STYLE_SOLID, 2);
    SetIndexLabel(0, "Trend Up");
    
    SetIndexBuffer(1, TrendDown);
    SetIndexStyle(1, DRAW_LINE, STYLE_SOLID, 2);
    SetIndexLabel(1, "Trend Down");
    
    SetIndexBuffer(2, SuperTrend);
    SetIndexStyle(2, DRAW_LINE, STYLE_SOLID, 3);
    SetIndexLabel(2, "SuperTrend");
    
    return(INIT_SUCCEEDED);
}

//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
{
    int limit = rates_total - prev_calculated;
    if (prev_calculated > 0) limit++;

    int trend[];
    double up[], dn[], medianPrice, atr;
    ArrayResize(trend, rates_total);
    ArrayResize(up, rates_total);
    ArrayResize(dn, rates_total);
    
    for (int i = limit - 1; i >= 0; i--)
    {
        TrendUp[i] = EMPTY_VALUE;
        TrendDown[i] = EMPTY_VALUE;
        SuperTrend[i] = EMPTY_VALUE;
        atr = iATR(NULL, 0, Nbr_Periods, i);
        medianPrice = (high[i] + low[i]) / 2;
        up[i] = medianPrice + (Multiplier * atr);
        dn[i] = medianPrice - (Multiplier * atr);
        trend[i] = 1;
        
        if (i < rates_total - 1)  // Not the first bar
        {
            if (close[i] > up[i+1])
            {
                trend[i] = 1;
                if (trend[i+1] == -1) changeOfTrend = 1;
            }
            else if (close[i] < dn[i+1])
            {
                trend[i] = -1;
                if (trend[i+1] == 1) changeOfTrend = 1;
            }
            else if (trend[i+1] == 1)
            {
                trend[i] = 1;
                changeOfTrend = 0;
            }
            else if (trend[i+1] == -1)
            {
                trend[i] = -1;
                changeOfTrend = 0;
            }

            if (trend[i] > 0 && dn[i] < dn[i+1])
                dn[i] = dn[i+1];
            
            if (trend[i] < 0 && up[i] > up[i+1])
                up[i] = up[i+1];
            
            if (trend[i] == 1)
            {
                TrendUp[i] = dn[i];
                SuperTrend[i] = dn[i];
                if (changeOfTrend == 1)
                {
                    TrendUp[i+1] = TrendDown[i+1];
                    SuperTrend[i+1] = TrendDown[i+1];
                    changeOfTrend = 0;
                }
            }
            else if (trend[i] == -1)
            {
                TrendDown[i] = up[i];
                SuperTrend[i] = up[i];
                if (changeOfTrend == 1)
                {
                    TrendDown[i+1] = TrendUp[i+1];
                    SuperTrend[i+1] = TrendUp[i+1];
                    changeOfTrend = 0;
                }
            }
        }
    }
    
    return(rates_total);
}
//+------------------------------------------------------------------+