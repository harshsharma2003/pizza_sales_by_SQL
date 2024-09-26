-- EXTRA QUESTION 
-- FIND COUNT OF M SIZED PIZZA

SELECT 
    COUNT(PIZZAS.SIZE)
FROM
    PIZZAS
        INNER JOIN
    ORDER_DETAILS ON ORDER_DETAILS.PIZZA_ID = PIZZAS.PIZZA_ID
WHERE
    PIZZAS.SIZE = 'M';
