-- Задача 1: Подсчитайте количество клиентов в каждой стране.
SELECT
	country,
	COUNT(customer_id) AS total_customers_in_country 
FROM
	Customers
GROUP BY
	country
