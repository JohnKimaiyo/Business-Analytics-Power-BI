-- write SQL to get the average electric range -- 
SELECT AVG([Electric Range]) AS Average_Electric_Range
  FROM [Electric Vehicle Population].[dbo].[Electric_Vehicle_Population_Dat$]

  
-- write SQL to get the Maximumelectric range --
SELECT MAX([Electric Range]) AS  Maximum_Electric_Range
  FROM [Electric Vehicle Population].[dbo].[Electric_Vehicle_Population_Dat$]