/****** What is the total Number of Deaths  ******/
SELECT MAX([Deaths]) AS Total_Number_of_Deaths
FROM [NCHS - Leading Causes of Death: United States].[dbo].['NCHS_-_Leading_Causes_of_Death_$']

/****** What is the Average Number of Deaths ******/
SELECT AVG([Deaths]) AS  Average_Number_of_Deaths
FROM [NCHS - Leading Causes of Death: United States].[dbo].['NCHS_-_Leading_Causes_of_Death_$']
  

  /****** Whats is the top ten causes of death  ******/
SELECT TOP 10 [Cause Name] ,  SUM([Deaths]) AS Total_Sum_Of_Death
FROM [NCHS - Leading Causes of Death: United States].[dbo].['NCHS_-_Leading_Causes_of_Death_$']
GROUP BY [Cause Name] 
ORDER BY Total_Sum_Of_Death DESC;

/****** Whats is the top ten States with the highest deaths   ******/
SELECT TOP 10 [State] , SUM([Deaths]) AS Total_Deaths
  FROM [NCHS - Leading Causes of Death: United States].[dbo].['NCHS_-_Leading_Causes_of_Death_$']
  GROUP BY [State]
  ORDER BY Total_Deaths DESC;