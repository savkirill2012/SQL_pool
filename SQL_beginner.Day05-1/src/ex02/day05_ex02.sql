-- DROP INDEX idx_person_name;

CREATE INDEX idx_person_name ON person (UPPER(name));
SET enable_seqscan = off;

EXPLAIN ANALYZE
SELECT name 
FROM person 
WHERE UPPER(name) = 'DENIS';