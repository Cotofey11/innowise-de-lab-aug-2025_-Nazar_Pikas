--● Действия:
--1. Найти ProjectName всех проектов, в которых 'Bob Johnson' работал более 150 часов.
SELECT DISTINCT p.ProjectName
FROM 
    Projects p
    JOIN EmployeeProjects ep ON ep.ProjectID = p.ProjectID
    JOIN Employees e ON e.EmployeeID = ep.EmployeeID
WHERE e.FirstName = 'Bob'
    AND e.LastName = 'Johnson'
    AND ep.HoursWorked > 150;
--2. Увеличить Budget всех проектов на 10%, если к ним назначен хотя бы один сотрудник из отдела 'IT'.
UPDATE Projects p SET Budget = Budget * 1.1
WHERE EXISTS (
        SELECT 1
        FROM EmployeeProjects ep
            JOIN Employees e ON e.EmployeeID = ep.EmployeeID
        WHERE ep.ProjectID = p.ProjectID
            AND e.Department = 'IT'
    );
--3. Для любого проекта, у которого еще нет EndDate (EndDate IS NULL), установить EndDate на один год позже его StartDate.
UPDATE Projects SET EndDate = StartDate + INTERVAL '1 year'
WHERE
    EndDate IS NULL;
--4. Вставить нового сотрудника и немедленно назначить его на проект 'Website Redesign' с 80 отработанными часами, все в рамках одной
--транзакции. Использовать предложение RETURNING, чтобы получить EmployeeID вновь вставленного сотрудника.
BEGIN;
    INSERT INTO Employees (FirstName, LastName, Department, Salary, Email) VALUES
    ('Nazar', 'Pikas', 'IT', 30000, 'jhfyg@hgf.fjh');
    INSERT INTO EmployeeProjects SELECT
    3, MIN(ProjectID), 80
    FROM Projects
    WHERE ProjectName = 'Website Redesign'
    RETURNING EmployeeID;
COMMIT;
