-- DELETE FROM person_visits
-- WHERE id = 22;

-- INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date) 
-- VALUES( 
--     (SELECT max(id)+1
--     FROM person_visits),
--     (SELECT id
--     FROM person
--     WHERE name = 'Dmitriy'),
--     (SELECT piz.id 
--     FROM pizzeria AS piz 
--     JOIN menu AS m ON piz.id = m.pizzeria_id
--     WHERE m.price < 800 and piz.name!='Papa Johns'
--     LIMIT 1),
--     '2022-01-08');

-- REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;


SELECT * FROM mv_dmitriy_visits_and_eats;


    