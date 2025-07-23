USE InfosysClientAnalytics

-- Case Study 1: Revenue Analysis by Country for Strategic Expansion
-- Objective: Identify top revenue-contributing countries and client distribution.

-- 1. Total Revenue by Country

SELECT Country, SUM(CAST(RevenueUSD AS DECIMAL(18,2))) AS Total_Revenue
FROM Infosys_InternationalClients_10000
GROUP BY Country
ORDER BY Total_Revenue DESC


ALTER TABLE Infosys_InternationalClients_10000
ALTER COLUMN RevenueUSD DECIMAL(18,2)

-- 2. Average revenue per client in each country

SELECT Country, AVG(RevenueUSD) AS Avg_Revenue_Per_Client
FROM Infosys_InternationalClients_10000
GROUP BY Country
ORDER BY Avg_Revenue_Per_Client

-- 3. Top 5 countries with the most clients

SELECT TOP 5 Country, COUNT(*) AS Client_Count
FROM Infosys_InternationalClients_10000
GROUP BY Country
ORDER BY Client_Count DESC

-- 4. Countries with revenue above $300 million

SELECT Country, SUM(RevenueUSD) AS Total_Revenue
FROM Infosys_InternationalClients_10000
GROUP BY Country
HAVING SUM(RevenueUSD) > 300000000
ORDER BY Total_Revenue DESC

-- Case Study 2: Industry-wise Performance and Account Management
-- Objective: Assess industry performance and relationship manager load.

-- 1. Total and average revenue by industry

SELECT Industry, 
       SUM(CAST(RevenueUSD AS DECIMAL(18,2))) AS Total_Revenue,
       AVG(CAST(RevenueUSD AS DECIMAL(18,2))) AS Avg_Revenue
FROM Infosys_InternationalClients_10000
GROUP BY Industry
ORDER BY Total_Revenue DESC

-- 2. Number of clients per industry

SELECT Industry, COUNT(*) AS Client_Count
FROM Infosys_InternationalClients_10000
GROUP BY Industry
ORDER BY Client_Count DESC

-- 3. Relationship managers handling more than 50 clients

SELECT ContactName, COUNT(*) AS Clients_Handled
FROM Infosys_InternationalClients_10000
GROUP BY ContactName
HAVING COUNT(*) > 50
ORDER BY Clients_Handled DESC

-- 4. Industries with average revenue per client above $4 million

SELECT Industry, AVG(RevenueUSD) AS Avg_Revenue_Per_Client
FROM Infosys_InternationalClients_10000
GROUP BY Industry
HAVING AVG(RevenueUSD) > 4000000
ORDER BY Avg_Revenue_Per_Client DESC


