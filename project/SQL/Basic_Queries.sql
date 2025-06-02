-- BASIC QUERIES
SELECT DISTINCT c.customer_id, c.customer_name 
FROM customers c 
JOIN orders o ON c.customer_id = o.customer_id 
WHERE o.region = 'West';

SELECT DISTINCT * FROM orders WHERE Ship_Mode = 'First Class';

