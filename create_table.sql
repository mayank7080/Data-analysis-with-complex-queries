CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    emp_id INT,
    sale_amount DECIMAL(10,2),
    sale_date DATE
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);
