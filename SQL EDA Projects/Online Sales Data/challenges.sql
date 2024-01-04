-- Which Category had the most Orders --


SELECT Category,Count([Order ID]) As_Oder_ID_Count 
FROM [Online Sales Dataset].[dbo].['Online Sales Data$']
GROUP BY Category
ORDER By As_Oder_ID_Count DESC;



-- Which   PaymentMode had the most Orders ---

SELECT PaymentMode, Count([Order ID]) As_Order_Count
      
  FROM [Online Sales Dataset].[dbo].['Online Sales Data$']
  GROUP BY PaymentMode
  ORDER BY As_Order_Count DESC;


