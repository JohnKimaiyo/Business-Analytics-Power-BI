/****** What is the total Number of Deaths  ******/
SELECT MAX([Deaths]) AS Total_Number_of_Deaths
FROM [NCHS - Leading Causes of Death: United States].[dbo].['NCHS_-_Leading_Causes_of_Death_$']

/****** What is the Average Number of Deaths ******/
SELECT AVG([Deaths]) AS  Average_Number_of_Deaths
FROM [NCHS - Leading Causes of Death: United States].[dbo].['NCHS_-_Leading_Causes_of_Death_$']
  