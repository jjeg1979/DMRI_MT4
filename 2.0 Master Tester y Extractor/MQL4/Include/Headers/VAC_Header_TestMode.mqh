//+------------------------------------------------------------------+
//|                                          VAC_Header_TestMode.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO Academy (c) 2024 |
//+------------------------------------------------------------------+


enum TestMode {
   RuleByRule,
   RuleCombination,
};


sinput   string   testt001          = "==================> MODO DE TESTEO <=========================";
input    TestMode test_mode         = RuleByRule;
