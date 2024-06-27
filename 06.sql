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

SELECT
    d.department_id,
    d.department_name
FROM departments d
WHERE EXISTS
        (SELECT
            e.department_id
         FROM employees e
         WHERE d.department_id = e.department_id);

SELECT
    d.department_id,
    d.department_name
FROM departments d
WHERE NOT EXISTS
            (SELECT
                e.department_id
             FROM employees e
             WHERE d.department_id = e.department_id);

-- Correlated subquerie.
SELECT
    e1.employee_id,
    e1.first_name,
    e1.last_name,
    e1.department_id,
    e1.salary
FROM  employees e1
WHERE e1.salary >= (SELECT
                        TRUNC(AVG(NVL(salary,0)),0)
                    FROM employees e2
                    WHERE e1.department_id = e2.department_id);
