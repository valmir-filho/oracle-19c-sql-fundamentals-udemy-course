-- Restricting and ordering datas.
SELECT
    employee_id,
    last_name,
    job_id,
    department_id
FROM employees
WHERE department_id = 60;

SELECT
    first_name,
    last_name,
    hire_date
FROM employees
WHERE hire_date >= '01/01/04';

SELECT
    first_name,
    last_name,
    salary
FROM
    employees
WHERE salary BETWEEN 5000 AND 10000;

SELECT
    first_name,
    last_name,
    job_id
FROM
    employees
WHERE job_id IN ('IT_PROG', 'SA_MAN');

SELECT
    first_name,
    last_name
FROM
    employees
WHERE first_name LIKE 'Sh%';

SELECT
    first_name,
    last_name,
    commission_pct
FROM
    employees
WHERE commission_pct IS NULL;

SELECT
    first_name,
    last_name,
    commission_pct
FROM
    employees
WHERE commission_pct IS NOT NULL
ORDER BY commission_pct ASC;
