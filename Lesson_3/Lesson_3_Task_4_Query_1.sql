--Задача 1: Выведите список клиентов, отсортированный по возрасту по убыванию.
SELECT
	first_name,
	last_name,
	age
FROM
	Customers 
ORDER BY
	age DESC
