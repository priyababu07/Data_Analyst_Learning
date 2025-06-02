-- Advanced Queries
-- Which product category has the highest average profit?

SELECT p.category, 
       AVG(s.profit) AS avg_profit
FROM products p
JOIN sales s ON p.product_id = s.product_id
GROUP BY p.category
ORDER BY avg_profit DESC
LIMIT 1;
 
 -- Which city has the most orders?

SELECT city, COUNT(*) AS order_count
FROM orders
GROUP BY city
ORDER BY order_count DESC
LIMIT 1;
-- 8. Rank the top 10 products by total sales using RANK()

SELECT product_name, total_sales, RANK() OVER (ORDER BY total_sales DESC) AS rank
FROM (
    SELECT p.product_name, SUM(s.sales) AS total_sales
    FROM products p
    JOIN sales s ON p.product_id = s.product_id
    GROUP BY p.product_name
) ranked_products
LIMIT 10;