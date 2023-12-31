-- which  Region had the most retailers ---

SELECT Region ,COUNT(DISTINCT [Retailer ID]) As_Retailer_Count

  FROM [Addidas Sales Datasets].[dbo].['Data Sales Adidas$']
  GROUP BY Region
  Order BY As_Retailer_Count Desc;

-- which  State  had the most retailers ---

SELECT State,COUNT([Retailer ID]) AS Retailler_Count
 
  FROM [Addidas Sales Datasets].[dbo].['Data Sales Adidas$']
  GROUP BY State

  ORDER BY Retailler_Count Desc;


-- which  Products had the most retailers ---


SELECT Product,COUNT(DISTINCT [Retailer ID]) AS_Retail_Count
  FROM [Addidas Sales Datasets].[dbo].['Data Sales Adidas$']
  GROUP BY Product
  ORDER BY AS_Retail_Count DESC;
-- which  Sales method  had the most retailers ---

SELECT [Sales Method],COUNT(DISTINCT [Retailer ID]) As_Retailer_Count
  FROM [Addidas Sales Datasets].[dbo].['Data Sales Adidas$']
  GROUP BY [Sales Method]
  Order BY As_Retailer_Count DESC;

-- which Retailers  had the most purchases

SELECT Retailer , COUNT(DISTINCT[Retailer ID]) AS_Retailer_Count
     
  FROM [Addidas Sales Datasets].[dbo].['Data Sales Adidas$']
  GROUP BY Retailer
  ORDER BY AS_Retailer_Count DESC;
