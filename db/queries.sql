EXPLAIN ANALYZE
SELECT *
FROM employees
WHERE department = 'Sales'
AND salary > 50000;

EXPLAIN ANALYZE
SELECT *
FROM employees
WHERE department = 'Engineering'
AND salary >= 70000;
