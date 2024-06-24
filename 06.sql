-- Subqueries.

-- Single row.
SELECT
    first_name,
    last_name,
    job_id,
    salary
FROM employees
WHERE salary > (SELECT
                    AVG(NVL(salary,0))
                FROM employees);
-- Single row operators: =, >, >=, <, <=, <>, !=.

-- Multiple rows.
SELECT
    employee_id,
    first_name,
    last_name
FROM employees
WHERE salary IN
                (SELECT
                    AVG(NVL(salary,0))
                FROM employees
                GROUP BY department_id);
-- Multiple rows operators: in, any, all.
