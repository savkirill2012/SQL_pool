-- DROP INDEX idx_menu_unique;
CREATE INDEX idx_menu_unique ON menu (pizzeria_id, pizza_name);
SET enable_seqscan = off;

EXPLAIN ANALYZE
SELECT *
FROM menu 
WHERE pizzeria_id = 3;