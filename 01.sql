-- Describe the table.
DESC employess;

-- Basic selects.
SELECT *
FROM employess;

SELECT
    department_id, location_id
FROM departments;

SELECT
    first_name,
    last_name,
    salary,
    salary * 1.15
FROM employees;

SELECT DISTINCT department_id
FROM employees;

-- Concatenation.
SELECT first_name || ' ' || last_name "Nome Completo"
FROM employees;
