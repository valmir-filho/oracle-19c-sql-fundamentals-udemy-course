-- Views.
CREATE OR REPLACE VIEW vemployeesdept60
AS SELECT
    employee_id,
    first_name,
    last_name,
    department_id,
    salary,
    commission_pct
FROM employees
WHERE department_id = 60;

-- Recovering datas using a view.
SELECT *
FROM   vemployeesdept60;

CREATE OR REPLACE VIEW vdepartments_total
(department_id, department_name, minsal, maxsal, avgsal)
AS SELECT
    e.department_id,
    d.department_name,
    MIN(e.salary),
    MAX(e.salary),
    AVG(e.salary)
FROM employees e 
JOIN departments d
ON (e.department_id = d.department_id)
GROUP BY e.department_id, department_name;

-- View (read only).
CREATE OR REPLACE VIEW vemployeesdept20
AS SELECT employee_id, first_name, last_name, department_id, salary
FROM employees
WHERE department_id = 20
WITH READ ONLY;
