/****** What is the maximum square feet  ******/
SELECT MAX([Square Footage]) AS Highest_Square_Feet
FROM [State of NewYork Retail Food Stores].[dbo].[Retail_Food_Stores$]


/****** What is the Average square feet  ******/
SELECT AVG([Square Footage]) AS Average_Square_Feet
FROM [State of NewYork Retail Food Stores].[dbo].[Retail_Food_Stores$]

/****** What are the top ten Counties with the highest square feet ******/
SELECT TOP 10  [County] ,  SUM([Square Footage]) AS Total_Square_Feet
      
  FROM [State of NewYork Retail Food Stores].[dbo].[Retail_Food_Stores$]
  GROUP BY [County]
  ORDER BY  Total_Square_Feet DESC;

  /******  What are the top ten Establishment Type with the highest square feet  ******/
SELECT TOP 10 [Establishment Type], SUM([Square Footage]) AS Total_Square_Feet
  FROM [State of NewYork Retail Food Stores].[dbo].[Retail_Food_Stores$]
  GROUP BY  [Establishment Type]
  ORDER BY Total_Square_Feet DESC;