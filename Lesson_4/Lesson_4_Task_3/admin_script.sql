--Действия:
--1. Создать нового пользователя PostgreSQL (роль) с именем hr_user и простым паролем.
CREATE USER hr_user WITH PASSWORD '7410';
CREATE ROLE hr_role;
--2. Предоставить hr_user право SELECT на таблицу Employees.
GRANT SELECT ON Employees TO hr_role;
GRANT hr_role TO hr_user;
--3. Тест: В новой сессии подключиться как hr_user и попытаться выполнить SELECT * FROM Employees;. (Должно сработать).
--4. Как hr_user, попытаться выполнить INSERT нового сотрудника в Employees. (Должно завершиться неудачей).
--5. Как пользователь-администратор, предоставить hr_user права INSERT и UPDATE на таблицу Employees.
GRANT INSERT, UPDATE ON Employees TO hr_role;
--6. Тест: Как hr_user, попробовать выполнить INSERT и UPDATE сотрудника. (Теперь должно сработать).
