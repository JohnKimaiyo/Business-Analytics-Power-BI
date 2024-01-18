/****** What is the highest salary paid  ******/
SELECT MAX([ GROSS_PAY ]) AS Highest_Salary
  FROM [Allegheny County Employee Salaries].[dbo].['Allegheny  county salaries$']

  /****** What is the Average salary paid  ******/
SELECT AVG([ GROSS_PAY ]) AS Average_Salary
  FROM [Allegheny County Employee Salaries].[dbo].['Allegheny  county salaries$']


  /****** Which top ten departments had the highest salaries  ******/
SELECT TOP 10[DEPARTMENT],SUM([ GROSS_PAY ]) AS Total_Salary_Paid
FROM [Allegheny County Employee Salaries].[dbo].['Allegheny  county salaries$']
GROUP BY [DEPARTMENT]
ORDER BY Total_Salary_Paid DESC;


/******Which top ten Job Titles had the highest salaries  ******/
SELECT TOP 10 [JOB_TITLE] , SUM([ GROSS_PAY ])  AS Total_Salary_Paid
FROM [Allegheny County Employee Salaries].[dbo].['Allegheny  county salaries$']
GROUP BY [JOB_TITLE]
ORDER BY Total_Salary_Paid DESC;