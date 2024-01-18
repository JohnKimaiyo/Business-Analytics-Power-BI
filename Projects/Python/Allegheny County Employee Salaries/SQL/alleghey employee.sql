/****** What is the highest salary paid  ******/
SELECT MAX([ GROSS_PAY ]) AS Highest_Salary
  FROM [Allegheny County Employee Salaries].[dbo].['Allegheny  county salaries$']

  /****** What is the Average salary paid  ******/
SELECT AVG([ GROSS_PAY ]) AS Average_Salary
  FROM [Allegheny County Employee Salaries].[dbo].['Allegheny  county salaries$']