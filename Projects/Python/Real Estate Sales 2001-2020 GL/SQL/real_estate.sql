-- Display the highest assessed of the properties value accross the years --
SELECT MAX([Assessed Value]) AS Highest_Assesed_Values_Accross_All_Years
  FROM [Real Estate Sales Dataset].[dbo].['Real_Estate_Sales_2001-2020_GL$']

-- Display the average  assesed value of the properties  across the years --
SELECT ROUND(AVG([Assessed Value]), 0) AS Average_Assessed_Values_Across_All_Years
FROM [Real Estate Sales Dataset].[dbo].['Real_Estate_Sales_2001-2020_GL$']


/****** The highest price the properties sold for  ******/
SELECT MAX([Sale Amount]) As Highested_price_Properties_sold_for
  FROM [Real Estate Sales Dataset].[dbo].['Real_Estate_Sales_2001-2020_GL$']



  /****** Average price the properties sold for ******/
SELECT ROUND(AVG([Sale Amount]),0) As Average_price_Properties_sold_for
  FROM [Real Estate Sales Dataset].[dbo].['Real_Estate_Sales_2001-2020_GL$']



  /****** What is the top ten Town based on Assessed Values  ******/
SELECT TOP 10 [Town] ,SUM([Sale Amount]) AS Total_Assessed_Value
  FROM [Real Estate Sales Dataset].[dbo].['Real_Estate_Sales_2001-2020_GL$']
  GROUP BY [Town]
  ORDER BY Total_Assessed_Value DESC;


/****** What is the top ten Property types based on Property sales across the years ******/
SELECT TOP 10 [Property Type], SUM([Sale Amount]) AS Total_Property_Sales
  FROM [Real Estate Sales Dataset].[dbo].['Real_Estate_Sales_2001-2020_GL$']
  GROUP BY [Property Type]
  ORDER BY Total_Property_Sales DESC;