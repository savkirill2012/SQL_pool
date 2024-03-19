INSERT INTO menu(id, pizzeria_id, pizza_name, price)
VALUES((
    SELECT id
    FROM menu
    ORDER BY 1 DESC
    LIMIT 1) + 1, 
    (SELECT id 
    FROM pizzeria
    WHERE name = 'Dominos'), 
    'sicilian pizza',
    900);
