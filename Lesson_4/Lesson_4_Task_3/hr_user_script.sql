--3. Тест: В новой сессии подключиться как hr_user и попытаться выполнить SELECT * FROM Employees;. (Должно сработать).
SELECT * FROM employees;
--4. Как hr_user, попытаться выполнить INSERT нового сотрудника в Employees. (Должно завершиться неудачей).
INSERT INTO Employees VALUES
(8, 'Patrick', 'Star', 'HR', 900, 'patrickStar@jjfd.jiu');
--6. Тест: Как hr_user, попробовать выполнить INSERT и UPDATE сотрудника. (Теперь должно сработать).
INSERT INTO Employees VALUES
(8, 'Patrick', 'Star', 'HR', 900, 'patrickStar@jjfd.jiu');
UPDATE Employees SET
    FirstName = 'SpongeBob',
    LastName = 'SquarePants'
WHERE
    Department = 'Director';
