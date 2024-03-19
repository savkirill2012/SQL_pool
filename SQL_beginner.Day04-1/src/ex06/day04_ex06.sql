DROP MATERIALIZED VIEW mv_dmitriy_visits_and_eats;

CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
    SELECT piz.name AS pizzeria_name
    FROM person_visits AS pv
    JOIN person AS p ON p.id = pv.person_id 
    JOIN pizzeria AS piz ON piz.id = pv.pizzeria_id
    RIGHT JOIN menu AS m ON m.pizzeria_id = piz.id
    WHERE pv.visit_date = '2022-01-08' AND m.price < 800 AND p.name = 'Dmitriy';


SELECT * FROM mv_dmitriy_visits_and_eats


