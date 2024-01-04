-- Get the Top Ten Oldest Customers --
/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 5
 
  *
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer]
   ORDER BY BirthDate DESC
   