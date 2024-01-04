-- which  Region had the most retailers ---

SELECT Region ,COUNT(DISTINCT [Retailer ID]) As_Retailer_Count

  FROM [Addidas Sales Datasets].[dbo].['Data Sales Adidas$']
  GROUP BY Region
  Order BY As_Retailer_Count Desc;




-- which  State  had the most retailers ---







-- which  Producs had the most retailers ---








-- which  Sales method  had the most retailers ---