SELECT emp_id, sale_amount,
       RANK() OVER (ORDER BY sale_amount DESC) AS sales_rank,
       SUM(sale_amount) OVER (PARTITION BY emp_id) AS total_sales
FROM sales;
