/****** Whats is the highest the Passenger Count  ******/
SELECT MAX([Passenger Count]) AS Highest_Passenger_Count
FROM [San Francisco International Airport Air Traffic].[dbo].[Air_Traffic_Passenger_Statistic$]

/******  Whats is the Average the Passenger Count   ******/
SELECT AVG([Passenger Count]) AS Average_Passenger_Count
FROM [San Francisco International Airport Air Traffic].[dbo].[Air_Traffic_Passenger_Statistic$]

/****** List the top ten Ailrines based on passenger count ******/
SELECT TOP 10 [Operating Airline],  SUM([Passenger Count]) AS Sum_Passenger_Count
FROM [San Francisco International Airport Air Traffic].[dbo].[Air_Traffic_Passenger_Statistic$]
GROUP BY [Operating Airline]
ORDER BY Sum_Passenger_Count DESC;


-- Display the passeger numbers based on the type of flights
SELECT TOP 2 [GEO Summary],  SUM([Passenger Count]) AS Sum_Of_Passenger_Count
FROM [San Francisco International Airport Air Traffic].[dbo].[Air_Traffic_Passenger_Statistic$]
GROUP BY [GEO Summary]
ORDER BY Sum_Of_Passenger_Count DESC;


-- Display the top destinationsbased on passegnger numbers --
SELECT TOP 10 [GEO Region], SUM([Passenger Count]) AS Sum_of_Passanger_Numbers
FROM [San Francisco International Airport Air Traffic].[dbo].[Air_Traffic_Passenger_Statistic$]
GROUP BY [GEO Region]
ORDER BY  Sum_of_Passanger_Numbers DESC;