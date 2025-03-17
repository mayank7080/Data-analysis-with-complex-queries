WITH MonthlySales AS (
    SELECT DATE_FORMAT(sale_date, '%Y-%m') AS month,
           SUM(sale_amount) AS total_sales
    FROM sales
    GROUP BY month
)
SELECT month, total_sales FROM MonthlySales;
