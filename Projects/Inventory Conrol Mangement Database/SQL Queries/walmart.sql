-- SLECTED highest weekly sales
/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
     MAX([Weekly_Sales]) AS MAXIMUM_WEEKLY_SALES
  FROM [Walmart Sales].[dbo].[Walmart$]


/****** How was the weather during the year of highest sales?  ******/
SELECT TOP (1000) [Store]
      ,[Date]
      ,[Weekly_Sales]
      ,[Holiday_Flag]
      ,[Temperature]
      ,[Fuel_Price]
      ,[CPI]
      ,[Unemployment]
  FROM [Walmart Sales].[dbo].[Walmart$]
  ORDER BY Weekly_Sales;