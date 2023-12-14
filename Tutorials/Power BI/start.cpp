//examle 1
Profit Loss = [Box Office] - [Budget]


// example 2
Film Length = IF(
    Movies[Run Time] > 120,
    "Long",
    "Short"
 )


 Average Profit Loss = AVERAGEX(
Movies,
Movies[Box Office] - Movies[Budget]
)