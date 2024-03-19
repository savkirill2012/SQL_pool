SELECT m.pizza_name,
        m.price,
        piz.name AS pizzeria_name,
        pv.visit_date
FROM person_visits AS pv
JOIN person AS p ON pv.person_id = p.id 
JOIN pizzeria AS piz ON pv.pizzeria_id = piz.id
JOIN menu AS m ON piz.id = m.pizzeria_id 
WHERE p.name = 'Kate' AND m.price BETWEEN 800 and 1000
ORDER BY 1,2,3;
