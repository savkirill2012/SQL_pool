SELECT piz.name,
        COUNT(*) AS count_of_orders,
        ROUND(AVG(price)) AS average_price,
        MAX(price) AS max_price,
        MIN(price) AS min_price
FROM person_order AS po JOIN menu AS m 
                            ON po.menu_id = m.id            
                        JOIN pizzeria AS piz 
                            ON m.pizzeria_id = piz.id
GROUP BY piz.name
ORDER BY 1;