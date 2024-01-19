-- Whats is the highest sales amount --
SELECT MAX([Total Sales]) Highest_Sales_Amount
  FROM [Addidas Sales Datasets].[dbo].['Data Sales Adidas$']


/****** Whats is the average sales amount  ******/
SELECT AVG([Total Sales]) Average_Sales_Amount
  FROM [Addidas Sales Datasets].[dbo].['Data Sales Adidas$']

  /****** What are the top 4 Reatilers in terms of sales  ******/
SELECT TOP 4 [Retailer ID], SUM([Total Sales]) AS Sum_of_Sales
 FROM [Addidas Sales Datasets].[dbo].['Data Sales Adidas$']
 GROUP BY [Retailer ID]
 ORDER BY Sum_of_Sales;

 /****** What are the top 5 Regions in terms of sales  ******/
SELECT TOP 10 [Region], SUM([Total Sales]) AS Sum_of_Sales
FROM [Addidas Sales Datasets].[dbo].['Data Sales Adidas$']
GROUP BY  [Region]
ORDER BY  Sum_of_Sales


/****** What are the top 10 States in terms of sales   ******/
SELECT TOP 10 [State],  SUM([Total Sales])  AS Sum_of_Sales
FROM [Addidas Sales Datasets].[dbo].['Data Sales Adidas$']
GROUP BY [State]
ORDER BY Sum_of_Sales


/****** Whats are the top 10 Cities in terms of sales  ******/
SELECT TOP 10 [City], SUM([Total Sales])  AS Sum_of_Sales
FROM [Addidas Sales Datasets].[dbo].['Data Sales Adidas$']
GROUP BY [City]
ORDER BY  Sum_of_Sales

/****** Whats are the top 6 Cities in terms of sales  ******/
SELECT TOP 6 [Product], SUM([Total Sales]) AS Sum_of_Sales
FROM [Addidas Sales Datasets].[dbo].['Data Sales Adidas$']
GROUP BY [Product]
ORDER BY Sum_of_Sales

/****** Whats are the top 6 Products in terms of sales  ******/
SELECT TOP 6 [Product],  SUM([Total Sales]) AS Sum_of_Sales
FROM [Addidas Sales Datasets].[dbo].['Data Sales Adidas$']
GROUP BY [Product]
ORDER BY Sum_of_Sales


/****** Which sales method ahd the highest sales  ******/
SELECT TOP 3  [Sales Method] ,  SUM([Total Sales]) AS Sum_of_Sales
FROM [Addidas Sales Datasets].[dbo].['Data Sales Adidas$']
GROUP BY [Sales Method]
ORDER BY Sum_of_Sales