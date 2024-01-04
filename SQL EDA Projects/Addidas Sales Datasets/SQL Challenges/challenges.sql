-- which  Region had the most retailers ---

SELECT Region ,COUNT(DISTINCT [Retailer ID]) As_Retailer_Count

  FROM [Addidas Sales Datasets].[dbo].['Data Sales Adidas$']
  GROUP BY Region
  Order BY As_Retailer_Count Desc;




-- which  State  had the most retailers ---
/****** Script for SelectTopNRows command from SSMS  ******/
SELECT State,COUNT([Retailer ID]) AS Retailler_Count
 
  FROM [Addidas Sales Datasets].[dbo].['Data Sales Adidas$']
  GROUP BY State

  ORDER BY Retailler_Count Desc;






-- which  Producs had the most retailers ---








-- which  Sales method  had the most retailers ---