CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(30),
    salary DECIMAL(10, 2)
);


INSERT INTO employees (emp_id, name, age, department, salary) VALUES
(101, 'Alice', 30, 'HR', 50000),
(102, 'Bob', 24, 'IT', 60000),
(103, 'Charlie', 28, 'Finance', 55000),
(104, 'David', 35, 'IT', 70000),
(105, 'Eva', 26, 'HR', 52000);


-- Select all
SELECT * FROM employees;

-- Select specific columns
SELECT name, salary FROM employees;

-- With conditions
SELECT * FROM employees WHERE department = 'IT';


-- Increase salary by 10% for IT department
UPDATE employees
SET salary = salary * 1.10
WHERE department = 'IT';



-- Add a new column
ALTER TABLE employees ADD COLUMN join_date DATE;

-- Modify column
ALTER TABLE employees MODIFY COLUMN salary DECIMAL(12, 2);

-- Rename column
ALTER TABLE employees CHANGE COLUMN name full_name VARCHAR(100);


-- Top 3 highest paid employees
SELECT * FROM employees ORDER BY salary DESC LIMIT 3;


-- Drop column
ALTER TABLE employees DROP COLUMN join_date;

-- Drop entire table
DROP TABLE employees;
