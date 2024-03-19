DROP VIEW v_persons_female;

CREATE VIEW v_persons_female AS
    SELECT *
    FROM person
    WHERE gender= 'female';

DROP VIEW v_persons_male;

CREATE VIEW v_persons_male AS 
    SELECT *
    FROM person
    WHERE gender = 'male';

SELECT *
FROM v_persons_female
ORDER BY 1;

SELECT *
FROM v_persons_male
ORDER BY 1;

