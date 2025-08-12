--Задача 1: Выведите список клиентов, отсортированный по возрасту по убыванию.
SELECT
	c.first_name,
	c.last_name,
	c.age
FROM
	Customers c
ORDER BY
	c.age DESC