use swiftOps ;
select* from customer_master;
SHOW CREATE TABLE customer_master;
SELECT Customer_ID, COUNT(*)
FROM customer_master
GROUP BY Customer_ID
HAVING COUNT(*) > 1;
ALTER TABLE customer_master
MODIFY Customer_ID VARCHAR(20) NOT NULL;
ALTER TABLE customer_master
ADD PRIMARY KEY (Customer_ID);

SHOW CREATE TABLE product_master;
SHOW CREATE TABLE supplier_master;

SELECT Supplier_ID, COUNT(*)
FROM supplier_master
GROUP BY Supplier_ID
HAVING COUNT(*) > 1;


ALTER TABLE fact_operations
MODIFY Transaction_ID VARCHAR(50) NOT NULL,
ADD PRIMARY KEY (Transaction_ID);


SHOW KEYS FROM customer_master;
SHOW KEYS FROM product_master;
SHOW KEYS FROM supplier_master;
SHOW KEYS FROM warehouse_master;
SHOW KEYS FROM employee_master;
SHOW KEYS FROM vehicle_master;
SHOW KEYS FROM route_master;
SHOW KEYS FROM calendar_master;

ALTER TABLE fact_operations
MODIFY Customer_ID VARCHAR(20),
MODIFY Product_ID VARCHAR(20),
MODIFY Supplier_ID VARCHAR(20),
MODIFY Warehouse_ID VARCHAR(20),
MODIFY Employee_ID VARCHAR(20),
MODIFY Vehicle_ID VARCHAR(20),
MODIFY Route_ID VARCHAR(20);

SELECT
COUNT(*) AS TotalRows,
COUNT(DISTINCT Transaction_ID) AS UniqueTransactionIDs
FROM fact_operations;
SHOW KEYS
FROM fact_operations
WHERE Key_name = 'PRIMARY';


-- PRODUCT MASTER
ALTER TABLE product_master
MODIFY Product_ID VARCHAR(20) NOT NULL,
ADD PRIMARY KEY (Product_ID);

-- SUPPLIER MASTER
ALTER TABLE supplier_master
MODIFY Supplier_ID VARCHAR(20) NOT NULL,
ADD PRIMARY KEY (Supplier_ID);

-- WAREHOUSE MASTER
ALTER TABLE warehouse_master
MODIFY Warehouse_ID VARCHAR(20) NOT NULL,
ADD PRIMARY KEY (Warehouse_ID);

-- EMPLOYEE MASTER
ALTER TABLE employee_master
MODIFY Employee_ID VARCHAR(20) NOT NULL,
ADD PRIMARY KEY (Employee_ID);

-- VEHICLE MASTER
ALTER TABLE vehicle_master
MODIFY Vehicle_ID VARCHAR(20) NOT NULL,
ADD PRIMARY KEY (Vehicle_ID);

-- ROUTE MASTER
ALTER TABLE route_master
MODIFY Route_ID VARCHAR(20) NOT NULL,
ADD PRIMARY KEY (Route_ID);

-- CALENDAR MASTER
ALTER TABLE calendar_master
MODIFY Date DATE NOT NULL,
ADD PRIMARY KEY (Date);

#fk

ALTER TABLE fact_operations
ADD CONSTRAINT fk_fact_customer
FOREIGN KEY (Customer_ID)
REFERENCES customer_master(Customer_ID),

ADD CONSTRAINT fk_fact_product
FOREIGN KEY (Product_ID)
REFERENCES product_master(Product_ID),

ADD CONSTRAINT fk_fact_supplier
FOREIGN KEY (Supplier_ID)
REFERENCES supplier_master(Supplier_ID),

ADD CONSTRAINT fk_fact_warehouse
FOREIGN KEY (Warehouse_ID)
REFERENCES warehouse_master(Warehouse_ID),

ADD CONSTRAINT fk_fact_employee
FOREIGN KEY (Employee_ID)
REFERENCES employee_master(Employee_ID),

ADD CONSTRAINT fk_fact_vehicle
FOREIGN KEY (Vehicle_ID)
REFERENCES vehicle_master(Vehicle_ID),

ADD CONSTRAINT fk_fact_route
FOREIGN KEY (Route_ID)
REFERENCES route_master(Route_ID);

SELECT DISTINCT f.Product_ID
FROM fact_operations f
LEFT JOIN product_master p
ON f.Product_ID = p.Product_ID
WHERE p.Product_ID IS NULL;

SELECT DISTINCT f.Warehouse_ID
FROM fact_operations f
LEFT JOIN warehouse_master w
ON f.Warehouse_ID = w.Warehouse_ID
WHERE w.Warehouse_ID IS NULL;

SELECT DISTINCT f.Employee_ID
FROM fact_operations f
LEFT JOIN employee_master e
ON f.Employee_ID = e.Employee_ID
WHERE e.Employee_ID IS NULL;

SELECT DISTINCT f.Vehicle_ID
FROM fact_operations f
LEFT JOIN vehicle_master v
ON f.Vehicle_ID = v.Vehicle_ID
WHERE v.Vehicle_ID IS NULL;

SELECT DISTINCT f.Route_ID
FROM fact_operations f
LEFT JOIN route_master r
ON f.Route_ID = r.Route_ID
WHERE r.Route_ID IS NULL;

SELECT DISTINCT f.Supplier_ID
FROM fact_operations f
LEFT JOIN supplier_master s
ON f.Supplier_ID = s.Supplier_ID
WHERE s.Supplier_ID IS NULL;

SELECT Supplier_ID
FROM supplier_master
WHERE Supplier_ID IN ('SUP017','SUP018','SUP019');

SELECT* FROM supplier_master;