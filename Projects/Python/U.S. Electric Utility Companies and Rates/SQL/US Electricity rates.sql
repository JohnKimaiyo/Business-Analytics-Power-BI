/****** What is the maximum commercial rate  ******/
SELECT MAX([comm_rate]) AS Highest_Commercial_Rate
  FROM [U.S. Electric Utility Companies and Rates ].[dbo].['US Electricity Rates$']


  /****** What is the Average Commercial Rates  ******/
SELECT AVG([comm_rate]) AS Average_Commercial_rate
  FROM [U.S. Electric Utility Companies and Rates ].[dbo].['US Electricity Rates$']