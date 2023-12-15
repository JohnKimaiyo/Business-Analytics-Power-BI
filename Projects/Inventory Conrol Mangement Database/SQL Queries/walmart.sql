-- SLECTED highest weekly sales
/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
     MAX([Weekly_Sales]) AS MAXIMUM_WEEKLY_SALES
  FROM [Walmart Sales].[dbo].[Walmart$]

