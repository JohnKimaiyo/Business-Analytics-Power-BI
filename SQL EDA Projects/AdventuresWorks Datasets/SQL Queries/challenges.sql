-- Get the Top Ten Oldest Customers --

SELECT TOP 5
 
  *
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer]
   ORDER BY BirthDate ASC

-- Lets reward the top ten oldest customers based on the  order dates --

SELECT TOP 10 *
     
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer]
  ORDER BY [DateFirstPurchase] ASC;
  -- Which titles has the most emloyees ---
  
SELECT Title,COUNT(Distinct[EmployeeNationalIDAlternateKey]) As_Emplyee_count
    
  FROM [AdventureWorksDW2022].[dbo].[DimEmployee]
  GROUP BY Title
  Order By As_Emplyee_count DESC;

  -- whcih departmentest have the most employees --
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT [DepartmentName],COUNT(DISTINCT [EmployeeNationalIDAlternateKey]) As_Employee_Number
  FROM [AdventureWorksDW2022].[dbo].[DimEmployee]
  GROUP BY DepartmentName
  Order BY As_Employee_Number DESC;