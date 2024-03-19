SELECT  m.pizza_name,
        piz.name AS pizzeria_name,
        m.price
FROM pizzeria as piz
RIGHT JOIN (
    SELECT pizza_name, price, pizzeria_id
    FROM menu
    WHERE pizza_name IN ('pepperoni pizza', 'mushroom pizza')) AS m ON piz.id = m.pizzeria_id
ORDER BY 1, 2;