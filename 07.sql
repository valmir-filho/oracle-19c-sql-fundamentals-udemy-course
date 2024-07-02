-- Union operators.
SELECT
    employee_id,
    job_id,
    hire_date,
    salary
FROM employees
WHERE department_id IN (60, 90, 100)
UNION
SELECT
    employee_id,
    job_id,
    hire_date,
    salary
FROM employees
WHERE job_id = 'IT_PROG'
ORDER BY employee_id;

SELECT
    employee_id,
    job_id,
    hire_date,
    salary
FROM employees
WHERE job_id = 'IT_PROG'
UNION ALL
SELECT
    employee_id,
    job_id,
    hire_date,
    salary
FROM employees
WHERE department_id = 60
ORDER BY employee_id;

SELECT
    employee_id,
    job_id
FROM   employees
WHERE  job_id = 'IT_PROG'
INTERSECT
SELECT
    employee_id,
    job_id
FROM employees
WHERE department_id IN (60, 90, 100)
ORDER BY employee_id;

SELECT
    employee_id,
    job_id
FROM employees
WHERE department_id IN (60, 90, 100)
MINUS
SELECT employee_id, job_id
FROM employees
WHERE job_id = 'IT_PROG'
ORDER BY employee_id;
