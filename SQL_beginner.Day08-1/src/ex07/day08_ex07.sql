-- SESSION 1

-- postgres=# BEGIN;
-- BEGIN
-- postgres=*# UPDATE pizzeria
-- postgres-*# SET rating = 2
-- postgres-*# WHERE id = 1
-- postgres-*# ;
-- UPDATE 1
-- postgres=*# UPDATE pizzeria
-- postgres-*# SET rating = 4
-- postgres-*# WHERE id = 2;
-- UPDATE 1
-- postgres=*# COMMIT;
-- COMMIT

-- SESSION 2

-- postgres=# BEGIN;
-- BEGIN
-- postgres=*# UPDATE pizzeria
-- postgres-*# SET rating = 5
-- postgres-*# WHERE id = 2;
-- UPDATE 1
-- postgres=*# UPDATE pizzeria
-- postgres-*# SET rating = 1
-- postgres-*# WHERE id = 1;
-- ОШИБКА:  обнаружена взаимоблокировка
-- DETAIL:  Процесс 20692 ожидает в режиме ShareLock блокировку "транзакция 917"; заблокирован процессом 22488.
-- Процесс 22488 ожидает в режиме ShareLock блокировку "транзакция 918"; заблокирован процессом 20692.
-- HINT:  Подробности запроса смотрите в протоколе сервера.
-- CONTEXT:  при изменении кортежа (0,21) в отношении "pizzeria"
-- postgres=!# COMMIT;
-- ROLLBACK