SELECT * FROM swiftops.fact_operations;

#overall date range

SELECT
    MIN(Date) AS Start_Date,
    MAX(Date) AS End_Date,
    DATEDIFF(MAX(Date), MIN(Date)) AS Total_Days
FROM fact_operations;

#How many years of data?

SELECT
    MIN(Calendar_Year) AS First_Year,
    MAX(Calendar_Year) AS Last_Year,
    COUNT(DISTINCT Calendar_Year) AS Total_Years
FROM fact_operations;

#Number of records per year

SELECT
    Calendar_Year,
    COUNT(*) AS Total_Transactions
FROM fact_operations
GROUP BY Calendar_Year
ORDER BY Calendar_Year;

#Number of records per month

SELECT
    Calendar_Year,
    Month_Number,
    Month_Name,
    COUNT(*) AS Transactions
FROM fact_operations
GROUP BY Calendar_Year, Month_Number, Month_Name
ORDER BY Calendar_Year, Month_Number;

#Distribution by quarter

SELECT
    Quarter,
    COUNT(*) AS Transactions
FROM fact_operations
GROUP BY Quarter
ORDER BY Quarter;

#Profit Margin Statistics

SELECT
	sum(Profit_Margin) AS sum,
    min(Profit_Margin) AS Min_Margin,
    MAX(Profit_Margin) AS Max_Margin,
    AVG(Profit_Margin) AS Avg_Margin,
    STDDEV(Profit_Margin) AS Std_Deviation
FROM fact_operations;

#Profit Margin Distribution

SELECT
CASE
    WHEN Profit_Margin < 0 THEN 'Negative'
    WHEN Profit_Margin < 5 THEN '0-5%'
    WHEN Profit_Margin < 10 THEN '5-10%'
    WHEN Profit_Margin < 20 THEN '10-20%'
    WHEN Profit_Margin < 30 THEN '20-30%'
    ELSE '30%+'
END AS Margin_Group,
COUNT(*) AS Transactions
FROM fact_operations
GROUP BY Margin_Group
ORDER BY MIN(Profit_Margin);

#Revenue by Year

SELECT
    Calendar_Year,
    SUM(Revenue) AS Total_Revenue
FROM fact_operations
GROUP BY Calendar_Year
ORDER BY Calendar_Year;

#Profit by year

SELECT
    Calendar_Year,
    SUM(Net_Profit) AS Total_Profit
FROM fact_operations
GROUP BY Calendar_Year
ORDER BY Calendar_Year;

#monthly revenue trend

SELECT
    Calendar_Year,
    Month_Number,
    Month_Name,
    SUM(Revenue) AS Revenue
FROM fact_operations
GROUP BY Calendar_Year, Month_Number, Month_Name
ORDER BY Calendar_Year, Month_Number;

#seasonal distribution

SELECT
    Season,
    COUNT(*) AS Transactions,
    SUM(Revenue) AS Revenue,
    SUM(Profit_Margin) AS Profit
FROM fact_operations
GROUP BY Season;

#CHECK MISSING DATA 

SELECT
    COUNT(*) AS Total_Records,
    COUNT(DISTINCT Date) AS Distinct_Dates
FROM fact_operations;

#TRANSACTIIONS PER DAY 

SELECT
    Date,
    COUNT(*) AS Transactions
FROM fact_operations
GROUP BY Date
ORDER BY Date;

#HEALTH CHECKUP

SELECT
    COUNT(*) AS Total_Records,
    COUNT(DISTINCT Order_ID) AS Orders,
    COUNT(DISTINCT Customer_ID) AS Customers,
    COUNT(DISTINCT Product_ID) AS Products,
    COUNT(DISTINCT Date) AS Active_Days,
    MIN(Date) AS Start_Date,
    MAX(Date) AS End_Date,
    MIN(Calendar_Year) AS First_Year,
    MAX(Calendar_Year) AS Last_Year,
    SUM(Revenue) AS Total_Revenue,
    SUM(NET_Profit) AS Total_NProfit,
    AVG(Profit_Margin) AS Average_Margin
FROM fact_operations;

#SEASONAL PROFIT PERCENTAGE

SELECT
    Season,
    SUM(Revenue) AS Revenue,
    SUM(Net_Profit) AS Profit,
    ROUND(SUM(Net_Profit)/SUM(Revenue)*100,2) AS Profit_Percentage
FROM fact_operations
GROUP BY Season;

#LOSS TRANSACTONS

SELECT
    COUNT(*) AS Negative_Profit_Transactions
FROM fact_operations
WHERE Net_Profit < 0;

#NET PROFIT AND TOTAL PROFIT % 

SELECT
    MIN(Net_Profit),
    MAX(Net_Profit),
    AVG(Net_Profit)
FROM fact_operations;

SELECT
ROUND(SUM(Net_Profit) / SUM(Revenue) * 100, 2)
FROM fact_operations;

