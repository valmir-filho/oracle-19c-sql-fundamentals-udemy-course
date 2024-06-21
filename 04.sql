-- Group functions.
SELECT AVG(salary)
FROM employees;

SELECT MIN(salary), MAX(salary)
FROM employees;

SELECT COUNT(location_id)
FROM departments
WHERE location_id = 1700;

SELECT
    department_id, AVG(salary)
FROM employees
GROUP BY department_id
ORDER BY department_id;

SELECT
    department_id, job_id, SUM(salary)
FROM employees
GROUP BY department_id, job_id
ORDER BY department_id, job_id;
