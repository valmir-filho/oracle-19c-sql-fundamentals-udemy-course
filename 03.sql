-- Single row functions.
SELECT
    employee_id, last_name, department_id
FROM employees
WHERE UPPER(last_name) = 'KING';

SELECT
    employee_id, last_name, department_id
FROM employees
WHERE LOWER(last_name) = 'king';

SELECT
    employee_id, last_name, department_id
FROM employees
WHERE INITCAP(last_name) = 'King'; -- First capital letter.

SELECT SYSDATE-3 FROM DUAL;
