-- write SQL to get the average electric range -- 
SELECT AVG([Electric Range]) AS Average_Electric_Range
  FROM [Electric Vehicle Population].[dbo].[Electric_Vehicle_Population_Dat$]

  
-- write SQL to get the Maximumelectric range --
SELECT MAX([Electric Range]) AS  Maximum_Electric_Range
  FROM [Electric Vehicle Population].[dbo].[Electric_Vehicle_Population_Dat$]


--  Provide top ten counties that  had the hightest Electric range suing SQL ---
SELECT TOP 10 County, SUM([Electric Range]) AS TotalElectricRange
FROM [Electric Vehicle Population].[dbo].[Electric_Vehicle_Population_Dat$]
GROUP BY County
ORDER BY TotalElectricRange DESC
