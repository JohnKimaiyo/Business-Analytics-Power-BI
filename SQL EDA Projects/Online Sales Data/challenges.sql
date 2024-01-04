-- Which Category had the most Orders --

SELECT Category,Count([Order ID]) As_Oder_ID_Count 
FROM [Online Sales Dataset].[dbo].['Online Sales Data$']
GROUP BY Category
ORDER By As_Oder_ID_Count;

