WITH no_data AS (
    SELECT id AS menu_id
    FROM menu
    EXCEPT
    SELECT menu_id
    FROM person_order)

SELECT m.pizza_name,
        m.price, 
        piz.name AS pizzeria_name
FROM menu AS m
JOIN pizzeria AS piz ON m.pizzeria_id = piz.id
RIGHT JOIN no_data AS no_d ON no_d.menu_id = m.id  
ORDER BY 1,2;