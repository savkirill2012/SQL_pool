SELECT name_piz AS pizzeria_name,
        pizza_name
FROM person_visits AS pv
JOIN (
    SELECT id, name AS name_p
    FROM person
    ) AS p ON pv.person_id = p.id
JOIN (
    SELECT id AS pizza_id, name AS name_piz
    FROM pizzeria
    ) AS piz ON piz.pizza_id = pv.pizzeria_id
RIGHT JOIN menu AS m ON m.pizzeria_id = piz.pizza_id
WHERE visit_date = '2022-01-08' AND name_p = 'Dmitriy' AND price < 800;