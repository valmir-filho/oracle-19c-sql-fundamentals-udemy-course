-- Group functions.
SELECT AVG(salary)
FROM employees;

SELECT MIN(salary), MAX(salary)
FROM employees;

SELECT COUNT(location_id)
FROM departments
WHERE location_id = 1700;
