-- Get the Top Ten Oldest Customers --

SELECT TOP 5
 
  *
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer]
   ORDER BY BirthDate ASC

-- Lets reward the top ten oldest customers based on the  order dates --
/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 10 *
     
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer]
  ORDER BY [DateFirstPurchase] ASC;