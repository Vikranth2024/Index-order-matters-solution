CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary NUMERIC,
    hire_date DATE
);

/* Broken index kept here for demonstration */
CREATE INDEX idx_salary_department ON employees(salary, department);
