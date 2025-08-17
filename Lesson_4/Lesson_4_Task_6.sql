 --● Действия:
--1. Найти ProjectName всех проектов, в которых 'Bob Johnson' работал более 150 часов.
SELECT ProjectName
FROM
    Projects p
WHERE
    EXISTS(SELECT
            ProjectID
        FROM
            Employeeprojects ep
        WHERE
            ep.HoursWorked > 150
            AND p.ProjectID = ep.ProjectID
            AND EXISTS(SELECT
                EmployeeID
            FROM
                Employees e
            WHERE
                e.EmployeeID = ep.EmployeeID
                AND CONCAT(FirstName, ' ', e.lastname ) = 'Bob Johnson'));
--2. Увеличить Budget всех проектов на 10%, если к ним назначен хотя бы один сотрудник из отдела 'IT'.
UPDATE Projects p SET Budget = Budget * 1.1
WHERE
    EXISTS(SELECT
            ProjectID p
        FROM
            Employeeprojects ep
        WHERE
            p.ProjectID = ep.ProjectID
            AND EXISTS(SELECT
                    EmployeeID
                FROM
                    Employees e
                WHERE
                    e.EmployeeID = ep.EmployeeID
                    AND (CASE WHEN e.Department = 'IT' THEN 1 ELSE 0 END) > 0));
--3. Для любого проекта, у которого еще нет EndDate (EndDate IS NULL), установить EndDate на один год позже его StartDate.
UPDATE Projects SET EndDate = StartDate + INTERVAL '1 year'
WHERE
    EndDate IS NULL;
--4. Вставить нового сотрудника и немедленно назначить его на проект 'Website Redesign' с 80 отработанными часами, все в рамках одной
--транзакции. Использовать предложение RETURNING, чтобы получить EmployeeID вновь вставленного сотрудника.
BEGIN;
    INSERT INTO Employees VALUES
    (4, 'Nazar', 'Pikas', 'IT', 30000, 'jhfyg@hgf.fjh');
    INSERT INTO EmployeeProjects SELECT
    4, MIN(ProjectID), 80
    FROM Projects
    WHERE ProjectName = 'Website Redesign';
COMMIT;
