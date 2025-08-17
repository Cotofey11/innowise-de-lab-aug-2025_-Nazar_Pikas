-- Действия:
-- 1. Вставить двух новых сотрудников в таблицу Employees.
INSERT INTO Employees (FirstName, LastName, Department, Salary) VALUES
('Nazar', 'Pikas', 'IT', 55000),
('Jason', 'Voorhees', 'Director', 100000);
-- 2. Выбрать всех сотрудников из таблицы Employees.
SELECT *
FROM
	Employees;
-- 3. Выбрать только FirstName и LastName сотрудников из отдела 'IT'.
SELECT
    FirstName,
    LastName
FROM
    Employees
WHERE
    Department = 'IT';
-- 4. Обновить Salary 'Alice Smith' до 65000.00.
UPDATE Employees SET Salary = 65000
WHERE
    CONCAT(FirstName, ' ', LastName) = 'Alice Smith';
-- 5. Удалить сотрудника, чья LastName — 'Prince'.
-- P.S. для этого задания пришлось сделать ON DELETE CASCADE
-- для EmployeeID в таблице EmployeeProjects
DELETE
FROM
    Employees
WHERE
    LastName = 'Prince';
-- 6. Проверить все изменения, используя SELECT * FROM Employees;
SELECT *
FROM
    Employees;
