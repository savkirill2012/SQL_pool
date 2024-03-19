SELECT p.name AS person_name1, 
        pr.name AS person_name2, 
        pr.address AS common_address
FROM person AS p
JOIN person AS pr ON p.address = pr.address AND p.id > pr.id
ORDER BY 1, 2, 3;