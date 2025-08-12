-- Задача 1: Подсчитайте количество клиентов в каждой стране.
SELECT
	c.country,
	COUNT(c.customer_id)
FROM
	Customers c
GROUP BY
	c.country