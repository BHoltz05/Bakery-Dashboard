-- 1. Total KPI Summary
SELECT
    SUM(Revenue) AS TotalRevenue,
    SUM("Units Sold") AS TotalUnitsSold,
    SUM("Units Produced") AS TotalUnitsProduced,
    SUM("Waste Units") AS TotalWasteUnits,
    SUM("Waste Value") AS TotalWasteValue,
    SUM("Waste Units") * 1.0 / SUM("Units Produced") AS WastageRate,
    SUM(Revenue) / SUM("Staff Hours Allocated") AS RevenuePerStaffHour
FROM BakeryLog;


-- 2. Revenue by Product
SELECT
    Product,
    SUM(Revenue) AS TotalRevenue
FROM BakeryLog
GROUP BY Product
ORDER BY TotalRevenue DESC;


-- 3. Units Sold by Product
SELECT
    Product,
    SUM("Units Sold") AS TotalUnitsSold
FROM BakeryLog
GROUP BY Product
ORDER BY TotalUnitsSold DESC;


-- 4. Waste Value by Product
SELECT
    Product,
    SUM("Waste Value") AS TotalWasteValue
FROM BakeryLog
GROUP BY Product
ORDER BY TotalWasteValue DESC;


-- 5. Waste Units by Product
SELECT
    Product,
    SUM("Waste Units") AS TotalWasteUnits
FROM BakeryLog
GROUP BY Product
ORDER BY TotalWasteUnits DESC;


-- 6. Revenue by Category
SELECT
    Category,
    SUM(Revenue) AS TotalRevenue
FROM BakeryLog
GROUP BY Category
ORDER BY TotalRevenue DESC;


-- 7. Weekly Performance Summary
SELECT
    Week,
    SUM(Revenue) AS TotalRevenue,
    SUM("Units Sold") AS TotalUnitsSold,
    SUM("Units Produced") AS TotalUnitsProduced,
    SUM("Waste Units") AS TotalWasteUnits,
    SUM("Waste Value") AS TotalWasteValue,
    SUM("Waste Units") * 1.0 / SUM("Units Produced") AS WastageRate,
    SUM(Revenue) / SUM("Staff Hours Allocated") AS RevenuePerStaffHour
FROM BakeryLog
GROUP BY Week
ORDER BY Week;


-- 8. High Waste Records
SELECT
    Week,
    Branch,
    Product,
    Category,
    "Units Produced",
    "Waste Units",
    "Waste Value",
    "Wastage Rate"
FROM BakeryLog
WHERE "Waste Units" >= 10
ORDER BY "Waste Units" DESC;