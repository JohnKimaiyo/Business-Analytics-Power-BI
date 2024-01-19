/****** Whats is the highest the Passenger Count  ******/
SELECT MAX([Passenger Count]) AS Highest_Passenger_Count
FROM [San Francisco International Airport Air Traffic].[dbo].[Air_Traffic_Passenger_Statistic$]

/******  Whats is the Average the Passenger Count   ******/
SELECT AVG([Passenger Count]) AS Average_Passenger_Count
FROM [San Francisco International Airport Air Traffic].[dbo].[Air_Traffic_Passenger_Statistic$]

