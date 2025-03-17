WITH EmployeePerformance AS (
    SELECT e.emp_id, e.emp_name, e.department, e.salary, 
           SUM(s.sale_amount) AS total_sales,
           RANK() OVER (ORDER BY SUM(s.sale_amount) DESC) AS sales_rank
    FROM employees e
    LEFT JOIN sales s ON e.emp_id = s.emp_id
    GROUP BY e.emp_id, e.emp_name, e.department, e.salary
)
SELECT * FROM EmployeePerformance;
