-- DML Commands.
INSERT INTO departments (department_id, department_name, manager_id, location_id)
VALUES (280, 'Project Management', 103, 1400);

INSERT INTO departments
VALUES (290, 'Data Science', NULL, NULL);

INSERT INTO departments (department_id, department_name)
VALUES (300, 'Business Intelligence');

INSERT INTO departments
VALUES (301, 'Inovation', NULL, NULL);

INSERT INTO departments (department_id, department_name)
VALUES (302, 'IOT');

COMMIT;

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number,
                       hire_date, job_id, salary, commission_pct, manager_id,
                       department_id)
VALUES (207, 'Rock', 'Balboa', 'DROCK', '525.342.237',
        SYSDATE, 'IT_PROG', 7000,NULL, 103,
        60);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number,
                       hire_date, job_id, salary, commission_pct, manager_id,
                       department_id)
VALUES (208, 'Vito', 'Corleone', 'VCORL', '525.342.237',
        TO_DATE('11/02/2020', 'DD/MM/YYYY'), 'IT_PROG', 20000, NULL, 103,
        60);

COMMIT;

INSERT INTO departments (department_id, department_name, location_id)
VALUES (&department_id, '&department_name',&location);

COMMIT;

INSERT INTO sales_reps (id, name, salary, commission_pct)
SELECT employee_id, last_name, salary, commission_pct
FROM employees
WHERE job_id = 'SA_REP';

COMMIT;

UPDATE employees
SET salary = salary * 1.2;

UPDATE employees
SET salary = salary * 1.2
WHERE last_name = 'King';

COMMIT;

UPDATE employees
SET job_id = (SELECT job_id
              FROM employees
              WHERE employee_id = 141),
    salary = (SELECT salary
              FROM employees
              WHERE employee_id = 141)
WHERE employee_id = 140;

COMMIT;

DELETE FROM countries
WHERE  country_name = 'Nigeria';

DELETE FROM employees
WHERE employee_id = 208;

COMMIT;

DELETE FROM employees
WHERE employee_id IN (207,208);

COMMIT;
