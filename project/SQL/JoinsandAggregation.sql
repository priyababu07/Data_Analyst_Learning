-- Total sales and profit by region
SELECT 
  o.region, 
  SUM(s.sales) AS total_sales, 
  SUM(s.profit) AS total_profit
FROM sales s
JOIN orders o ON s.order_id = o.order_id
GROUP BY o.region
ORDER BY o.region;

-- Top 5 customers by total sales
SELECT c.customer_name, SUM(s.sales) AS total_sale
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN sales s ON o.order_id = s.order_id
GROUP BY c.customer_name
LIMIT 5;

-- Monthly sales trend over the years

SELECT DATE_TRUNC('month', o.order_date) AS month,
       SUM(s.sales) AS total_sales
FROM orders o
JOIN sales s ON o.order_id = s.order_id
GROUP BY month
ORDER BY month;

