-- Задача 1: Найдите всех клиентов, которые сделали заказ с максимальной суммой.
SELECT
	c.first_name,
	c.last_name,
	o.amount
FROM
	Customers c
	INNER JOIN Orders o ON c.customer_id = o.customer_id
WHERE
	o.amount IN (
		SELECT
			MAX(amount)
		FROM
			Orders
	)