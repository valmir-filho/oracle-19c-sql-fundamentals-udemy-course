-- Joins.
SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    d.department_name
FROM employees e
JOIN departments d -- INNER JOIN.
ON e.department_id = d.department_id
ORDER BY first_name;

SELECT
    e.employee_id,
    j.job_title,
    d.department_name,
    l.city,
    l.state_province,
    l.country_id
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
ORDER BY e.employee_id;

SELECT
    e.first_name,
    e.last_name,
    d.department_id,
    d.department_name
FROM employees e LEFT JOIN departments d ON e.department_id = d.department_id;

SELECT
    e.first_name,
    e.last_name,
    d.department_id,
    d.department_name
FROM employees e RIGHT JOIN departments d ON e.department_id = d.department_id;

SELECT
    e.first_name,
    e.last_name,
    d.department_id,
    d.department_name
FROM employees e FULL JOIN departments d ON e.department_id = d.department_id;

SELECT
    last_name,
    department_name
FROM employees CROSS JOIN departments;
