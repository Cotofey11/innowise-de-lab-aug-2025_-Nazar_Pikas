-- Задача 2: Выведите все заказы, у которых сумма (amount) больше 1000.
SELECT
	order_id,
	item,
	amount,
	customer_id
FROM
	Orders o
WHERE 
	o.amount > 1000