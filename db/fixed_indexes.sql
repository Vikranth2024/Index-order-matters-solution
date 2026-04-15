/* Remove incorrect index */

DROP INDEX IF EXISTS idx_salary_department;

/* Create correct composite index */

CREATE INDEX idx_department_salary
ON employees(department, salary);
