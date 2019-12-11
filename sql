-- (northwind database)
-- On which day of the month are the most *orders* being placed (use only the 2 most recent years of data)?
-- which day has the lowest number of orders? Are you suprised? Why would this day have the least?

-- (northwind database)
-- On which day of the month are the most *orders* being placed (use only the 2 most recent years of data)?
-- which day has the lowest number of orders? Are you suprised? Why would this day have the least?

Friday

-- On which day of the WEEK are the most *orders* being placed (use only the most recent year of data)?

Tuesday and Thursday 


-- What can you say about any trends in orders being placed? 
There is no real variation with a difference of 2-3 orders from day to day.


WITH day AS (
SELECT
DISTINCT(order_id),order_date, EXTRACT(DOW FROM order_date) as day
FROM 
orders
GROUP BY
order_id, day)
SELECT 
day, count(day)
FROM 
day
GROUP BY
day
ORDER BY 
day;

 day | count 
-----+-------
   1 |   165
   2 |   168
   3 |   165
   4 |   168
   5 |   164
(5 rows)


--How out of date is this database (ie the last order compared to today's date)
The date of the last order is  1998-05-06 so it's a pretty old dataset. 


-- On which day of the WEEK are the most *orders* being placed (use only the most recent year of data)?
-- What can you say about any trends in orders being placed? 



--How out of date is this database (ie the last order compared to today's date)
