-- Determine the distribution of orders by hour of the day
 SELECT 
    HOUR(order_time) AS hour, COUNT(order_id) AS order_counts
FROM
    orders
GROUP BY hour
ORDER BY order_counts DESC