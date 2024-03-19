--Session1 
BEGIN; 

UPDATE pizzeria
SET rating = 5
WHERE name = 'Pizza Hut';

SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

--Session2
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

--Session1
COMMIT;

--Session2
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';


-- SESSION 1

-- postgres=# BEGIN
-- postgres-# ;
-- BEGIN
-- postgres=*# UPDATE pizzeria
-- postgres-*# SET rating = 5
-- postgres-*# WHERE name = 'Pizza Hut';
-- UPDATE 1
-- postgres=*# SELECT *
-- postgres-*# FROM pizzeria
-- postgres-*# WHERE name = 'Pizza Hut';
--  id |   name    | rating
-- ----+-----------+--------
--   1 | Pizza Hut |      5
-- (1 row)
-- postgres=*# COMMIT;
-- COMMIT

-- SESSION 2

-- postgres=# SELECT *
-- postgres-# FROM pizzeria
-- postgres-# WHERE name = 'Pizza Hut';
--  id |   name    | rating
-- ----+-----------+--------
--   1 | Pizza Hut |    4.6
-- (1 row)
-- postgres=# SELECT *
-- postgres-# FROM pizzeria
-- postgres-# WHERE name = 'Pizza Hut';
--  id |   name    | rating
-- ----+-----------+--------
--   1 | Pizza Hut |      5
-- (1 row)