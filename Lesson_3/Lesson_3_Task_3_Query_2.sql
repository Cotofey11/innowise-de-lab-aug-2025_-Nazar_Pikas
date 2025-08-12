-- Задача 2: Посчитайте общее количество заказов и среднюю сумму по каждому товару.
SELECT
	item,
	COUNT(order_id) AS total_orders,
	AVG(amount) AS avarage_amount
FROM
	Orders
GROUP BY
	item
