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