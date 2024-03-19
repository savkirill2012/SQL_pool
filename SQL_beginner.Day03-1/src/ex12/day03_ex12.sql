INSERT INTO person_order(id, person_id, menu_id, order_date)
SELECT 
    (SELECT id
    FROM person_order
    ORDER BY 1 DESC
    LIMIT 1) + id_j.id AS id,
    id_j.id AS person_id,
    (SELECT id
    FROM menu
    WHERE pizza_name = 'greek pizza'
    ) AS menu_id,
    '2022-02-25' AS ORDER
FROM person
JOIN (
    SELECT id
    FROM person) AS id_j ON id_j.id = person.id;


SELECT *
FROM person_order;