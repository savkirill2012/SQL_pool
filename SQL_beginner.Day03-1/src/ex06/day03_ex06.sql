SELECT m.pizza_name, 
        piz1.name AS pizza_name_1,
        piz2.name AS pizza_name_2, 
        m.price
FROM menu
JOIN menu AS m ON m.price = menu.price AND m.pizza_name = menu.pizza_name
JOIN pizzeria AS piz1 ON menu.pizzeria_id = piz1.id
JOIN pizzeria AS piz2 ON m.pizzeria_id = piz2.id 
WHERE m.pizzeria_id <> menu.pizzeria_id AND m.pizzeria_id < menu.pizzeria_id
ORDER BY 1;