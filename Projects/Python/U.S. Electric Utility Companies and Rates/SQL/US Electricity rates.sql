/****** What is the maximum Commercial rate  ******/
SELECT MAX([comm_rate]) AS Highest_Commercial_Rate
  FROM [U.S. Electric Utility Companies and Rates ].[dbo].['US Electricity Rates$']


  /****** What is the Average Commercial Rates  ******/
SELECT AVG([comm_rate]) AS Average_Commercial_rate
  FROM [U.S. Electric Utility Companies and Rates ].[dbo].['US Electricity Rates$']

  /****** What is the maximum Individual Rate ******/
SELECT MAX([ind_rate]) AS Highest_Individual_Electricity_Rate
 FROM [U.S. Electric Utility Companies and Rates ].[dbo].['US Electricity Rates$']

 /****** What is the Average Industrial Rate ******/
SELECT AVG([ind_rate]) AS Average_Electricty_Rate
FROM [U.S. Electric Utility Companies and Rates ].[dbo].['US Electricity Rates$']


/****** What is the maximum Residential Rate  ******/
SELECT MAX([res_rate]) AS Highest_Residential_Electricity_Rate
FROM [U.S. Electric Utility Companies and Rates ].[dbo].['US Electricity Rates$']


/****** What is are the top Ten  most expoensive Uilitiy Companies ******/
SELECT TOP 10
    [utility_name],
    ROUND(SUM([comm_rate] + [ind_rate]), 0) AS total_sum_rate
FROM
    [U.S. Electric Utility Companies and Rates].[dbo].['US Electricity Rates$']
GROUP BY
    [utility_name]
ORDER BY
    total_sum_rate DESC;
