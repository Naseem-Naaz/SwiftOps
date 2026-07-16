SELECT * FROM swiftops.fact_operations
limit 100;

use swiftops;

ALTER TABLE fact_operations
ADD COLUMN Inventory_Turnover DECIMAL(10,2),
ADD COLUMN Delivery_Efficiency DECIMAL(10,2),
ADD COLUMN Estimated_Profit DECIMAL(12,2),
ADD COLUMN Stock_Utilization DECIMAL(10,4),
ADD COLUMN Demand_Gap INT,
ADD COLUMN Risk_Score DECIMAL(10,2);

#inv turnover

UPDATE fact_operations
SET Inventory_Turnover =
ROUND(Revenue / NULLIF(Current_Stock,0),2);

SET SQL_SAFE_UPDATES = 0;

#Delivery Efficiency 

UPDATE fact_operations
SET Delivery_Efficiency =
Delivery_Time_Days + Order_Processing_Time;

#Estimated Profit

UPDATE fact_operations
SET Estimated_Profit =
Revenue - Total_Cost;

#Stock Utlization

UPDATE fact_operations f
JOIN warehouse_master w
ON f.Warehouse_ID = w.Warehouse_ID
SET f.Stock_Utilization =
ROUND(f.Current_Stock / w.Warehouse_Capacity_units,2);

#Demand Gap

UPDATE fact_operations
SET Demand_Gap =
Forecast_demand - Current_Stock;

#Risk Score
UPDATE fact_operations
SET Risk_Score =
Stockout_Risk +
Return_Rate +
Damaged_Goods;
