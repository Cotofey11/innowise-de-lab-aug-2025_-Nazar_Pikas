--Найдите клиентов, которые: 
--	1. Сделали хотя бы 2 заказа (любых), 
--	2. Имеют хотя бы одну доставку со статусом 'Delivered'. 
--Для каждого такого клиента выведите: 
--	● full_name (имя + фамилия), 
--	● общее количество заказов, 
--	● общую сумму заказов, 
--	● страну проживания. 
SELECT
	CONCAT(c.first_name, ' ', c.last_name) AS full_name,
	c.country,
	COUNT(o.order_id) AS total_orders,
	SUM(o.amount) AS total_amount
FROM 
	Customers c
	LEFT JOIN Orders o ON c.customer_id = o.customer_id
	LEFT JOIN Shippings s ON c.customer_id = s.customer
GROUP BY 
	c.first_name, c.last_name, c.country
HAVING 
	COUNT(o.order_id) >= 2
	AND SUM(CASE WHEN s.status = 'Delivered' THEN 1 ELSE 0 END) > 0
