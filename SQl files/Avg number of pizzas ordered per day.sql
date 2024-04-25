-- Group the orders by date and calculate the average
-- number of pizzas ordered per day
SELECT 
    ROUND(AVG(no_of_quantity), 0) AS Avg_ordered_quantity_per_day
FROM
    (SELECT 
        orders.order_date,
            SUM(order_details.quantity) AS no_of_quantity
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY orders.order_date) AS order_quantity_per_day;