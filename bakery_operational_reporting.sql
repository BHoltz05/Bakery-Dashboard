-- 1. Product Performance Report
SELECT
    Product,
    Category,
    SUM(Revenue) AS TotalRevenue,
    SUM("Units Sold") AS TotalUnitsSold,
    SUM("Units Produced") AS TotalUnitsProduced,
    SUM("Waste Units") AS TotalWasteUnits,
    SUM("Waste Value") AS TotalWasteValue,
    ROUND(SUM("Waste Units") * 1.0 / SUM("Units Produced"), 4) AS WastageRate
FROM BakeryLog
GROUP BY Product, Category
ORDER BY TotalRevenue DESC;

-- 2. High Waste Product Report
SELECT
    Product,
    Category,
    SUM("Waste Units") AS TotalWasteUnits,
    SUM("Waste Value") AS TotalWasteValue,
    ROUND(SUM("Waste Units") * 1.0 / SUM("Units Produced"), 4) AS WastageRate
FROM BakeryLog
GROUP BY Product, Category
ORDER BY TotalWasteValue DESC;

-- 3. Overproduction Risk Report
SELECT
    Product,
    Category,
    SUM("Units Produced") AS TotalUnitsProduced,
    SUM("Units Sold") AS TotalUnitsSold,
    SUM("Waste Units") AS TotalWasteUnits,
    ROUND(SUM("Units Sold") * 1.0 / SUM("Units Produced"), 4) AS SellThroughRate,
    ROUND(SUM("Waste Units") * 1.0 / SUM("Units Produced"), 4) AS WastageRate
FROM BakeryLog
GROUP BY Product, Category
ORDER BY WastageRate DESC;

-- 4. Weekly Operations Report
SELECT
    Week,
    SUM(Revenue) AS TotalRevenue,
    SUM("Units Sold") AS TotalUnitsSold,
    SUM("Units Produced") AS TotalUnitsProduced,
    SUM("Waste Units") AS TotalWasteUnits,
    SUM("Waste Value") AS TotalWasteValue,
    ROUND(SUM("Waste Units") * 1.0 / SUM("Units Produced"), 4) AS WastageRate,
    ROUND(SUM(Revenue) / SUM("Staff Hours Allocated"), 2) AS RevenuePerStaffHour
FROM BakeryLog
GROUP BY Week
ORDER BY Week;

-- 5. Branch Performance Report
SELECT
    Branch,
    SUM(Revenue) AS TotalRevenue,
    SUM("Units Sold") AS TotalUnitsSold,
    SUM("Waste Units") AS TotalWasteUnits,
    SUM("Waste Value") AS TotalWasteValue,
    ROUND(SUM(Revenue) / SUM("Staff Hours Allocated"), 2) AS RevenuePerStaffHour,
    ROUND(SUM("Waste Units") * 1.0 / SUM("Units Produced"), 4) AS WastageRate
FROM BakeryLog
GROUP BY Branch
ORDER BY TotalRevenue DESC;

-- 6. Category Performance Report
SELECT
    Category,
    SUM(Revenue) AS TotalRevenue,
    SUM("Units Sold") AS TotalUnitsSold,
    SUM("Units Produced") AS TotalUnitsProduced,
    SUM("Waste Units") AS TotalWasteUnits,
    SUM("Waste Value") AS TotalWasteValue,
    ROUND(SUM("Waste Units") * 1.0 / SUM("Units Produced"), 4) AS WastageRate
FROM BakeryLog
GROUP BY Category
ORDER BY TotalRevenue DESC;

-- 7. Management Attention Report
SELECT
    Week,
    Day,
    Branch,
    Product,
    Category,
    "Units Produced",
    "Units Sold",
    "Waste Units",
    "Waste Value",
    "Wastage Rate",
    Revenue
FROM BakeryLog
WHERE "Waste Units" >= 10
   OR "Wastage Rate" >= 0.20
ORDER BY "Waste Value" DESC;

-- 8. Staffing Efficiency Report
SELECT
    Week,
    Branch,
    SUM(Revenue) AS TotalRevenue,
    SUM("Staff Hours Allocated") AS TotalStaffHours,
    ROUND(SUM(Revenue) / SUM("Staff Hours Allocated"), 2) AS RevenuePerStaffHour
FROM BakeryLog
GROUP BY Week, Branch
ORDER BY RevenuePerStaffHour DESC;