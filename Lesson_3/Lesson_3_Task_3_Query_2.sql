-- Задача 2: Посчитайте общее количество заказов и среднюю сумму по каждому товару.
SELECT
	o.item,
	COUNT(o.order_id),
	AVG(o.amount)
FROM
	Orders o
GROUP BY
	o.item