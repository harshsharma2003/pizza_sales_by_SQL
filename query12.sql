  -- QUESTION
-- FIND 3RD HIGHEST SIZED PIZZA BASED ON REVENUE

SELECT 
    PIZZAS.SIZE,
    ROUND(SUM(ORDER_DETAILS.QUANTITY * PIZZAS.PRICE),
            2) AS REVENUE
FROM
    ORDER_DETAILS
        INNER JOIN
    PIZZAS ON ORDER_DETAILS.PIZZA_ID = PIZZAS.PIZZA_ID
GROUP BY PIZZAS.SIZE
ORDER BY REVENUE DESC
LIMIT 1 OFFSET 2;
