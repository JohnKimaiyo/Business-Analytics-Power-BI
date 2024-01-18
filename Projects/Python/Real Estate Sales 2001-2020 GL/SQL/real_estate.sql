-- Display the highest assessed of the properties value accross the years --
SELECT MAX([Assessed Value]) AS Highest_Assesed_Values_Accross_All_Years
  FROM [Real Estate Sales Dataset].[dbo].['Real_Estate_Sales_2001-2020_GL$']

-- Display the average  assesed value of the properties  across the years --
SELECT ROUND(AVG([Assessed Value]), 0) AS Average_Assessed_Values_Across_All_Years
FROM [Real Estate Sales Dataset].[dbo].['Real_Estate_Sales_2001-2020_GL$']
