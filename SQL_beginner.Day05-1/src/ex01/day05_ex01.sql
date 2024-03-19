SET enable_seqscan = off;

EXPLAIN ANALYZE
SELECT m.pizza_name,
        piz.name AS pizzeria_name
FROM menu AS m JOIN pizzeria AS piz
            ON piz.id = m.pizzeria_id;
