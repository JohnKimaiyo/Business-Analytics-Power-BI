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


--  Provide top ten Cities that  had the hightest Electric range suing SQL ---
SELECT TOP  10 City,  SUM([Electric Range]) AS Total_Electric_Range
FROM [Electric Vehicle Population].[dbo].[Electric_Vehicle_Population_Dat$]
GROUP BY City
ORDER BY Total_Electric_Range DESC;


--  Provide top ten Car Make that  had the hightest Electric range suing SQL ---
SELECT TOP 10 Make , SUM([Electric Range] ) AS Total_Electric_Range
FROM [Electric Vehicle Population].[dbo].[Electric_Vehicle_Population_Dat$]
GROUP BY Make
ORDER BY Total_Electric_Range DESC;

--  Provide top ten CaR Model Make that  had the hightest Electric range suing SQL ---
SELECT TOP 10 Model, SUM([Electric Range] ) AS Total_Electric_Range
FROM [Electric Vehicle Population].[dbo].[Electric_Vehicle_Population_Dat$]
GROUP BY Model
ORDER BY Total_Electric_Range DESC;


--  Provide top ten CaR Clean Alternative Fuel Vehicle (CAFV) Eligibility]   that  had the hightest Electric range suing SQL ---
SELECT TOP 10
    [Clean Alternative Fuel Vehicle (CAFV) Eligibility],
    SUM([Electric Range]) AS Total_Electric_Range
FROM
    [Electric Vehicle Population].[dbo].[Electric_Vehicle_Population_Dat$]
GROUP BY
    [Clean Alternative Fuel Vehicle (CAFV) Eligibility]
ORDER BY
    Total_Electric_Range DESC;


--  Provide top ten Electric Vehicle Type  that  had the hightest Electric range suing SQL ---

SELECT TOP 10  [Electric Vehicle Type] , SUM ([Electric Range]) AS Total_Electric_Range
     
  FROM [Electric Vehicle Population].[dbo].[Electric_Vehicle_Population_Dat$]
  GROUP BY [Electric Vehicle Type]
  ORDER BY Total_Electric_Range DESC;

-- Display top ten Years that had the highest Electric Range
SELECT TOP 10 
    [Model Year],
    SUM([Electric Range]) AS TotalElectricRange
 
FROM
    [Electric Vehicle Population].[dbo].[Electric_Vehicle_Population_Dat$]
GROUP BY
    [Model Year]
ORDER BY
    TotalElectricRange DESC;

