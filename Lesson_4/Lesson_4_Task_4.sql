--Действия:
--1. Увеличить Salary всех сотрудников в отделе 'HR' на 10%.
UPDATE Employees SET Salary = Salary * 1.1
WHERE
    Department = 'HR';
--2. Обновить Department любого сотрудника с Salary выше 70000.00 на 'Senior IT'.
UPDATE Employees SET Department = 'Senior IT'
WHERE
    Salary > 70000;
--3. Удалить всех сотрудников, которые не назначены ни на один проект в таблице EmployeeProjects.
--Подсказка: Используйте подзапрос NOT EXISTS или LEFT JOIN
DELETE FROM Employees em
WHERE
    NOT EXISTS (
        SELECT
            EmployeeID
        FROM
            EmployeeProjects ep
        WHERE
            em.EmployeeID = ep.EmployeeID
    );
--4. Вставить новый проект и назначить на него двух существующих
--сотрудников с определенным количеством HoursWorked в
--EmployeeProjects, и все это в одном блоке BEGIN/COMMIT.
BEGIN;
    INSERT INTO Projects VALUES
    (4, 'AbraKadabra', 3000, '2025-01-01', '2025-08-17');
    UPDATE EmployeeProjects SET ProjectID = 4
    WHERE
        hoursworked IN (200, 80);
COMMIT;
