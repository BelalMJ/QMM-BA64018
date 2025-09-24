
/* Weigelt Corporation LP Model */
max: 420 x1 + 420 x2 + 420 x3 + 360 x4 + 360 x5 + 360 x6 + 300 x7 + 300 x8 + 300 x9;

/* Plant Capacity Constraints */
Plant1_Cap: x1 + x4 + x7 <= 750;
Plant2_Cap: x2 + x5 + x8 <= 900;
Plant3_Cap: x3 + x6 + x9 <= 450;

/* Storage Space Constraints */
Plant1_Storage: 20 x1 + 15 x4 + 12 x7 <= 13000;
Plant2_Storage: 20 x2 + 15 x5 + 12 x8 <= 12000;
Plant3_Storage: 20 x3 + 15 x6 + 12 x9 <= 5000;

/* Sales Forecast Constraints */
Large_Demand: x1 + x2 + x3 <= 900;
Medium_Demand: x4 + x5 + x6 <= 1200;
Small_Demand: x7 + x8 + x9 <= 750;

/* Same Percentage of Capacity Constraints */
Same_Percent_1_2: 900 x1 + 900 x4 + 900 x7 - 750 x2 - 750 x5 - 750 x8 = 0;
Same_Percent_1_3: 450 x1 + 450 x4 + 450 x7 - 750 x3 - 750 x6 - 750 x9 = 0;

