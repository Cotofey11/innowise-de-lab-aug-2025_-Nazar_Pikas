--Действия:
--1. Функция: Создать функцию PostgreSQL с именем
--CalculateAnnualBonus, которая принимает employee_id и
--Salary  в качестве входных данных и возвращает рассчитанную
--сумму бонуса (10 % от Salary) для этого сотрудника. Используйте
--PL/pgSQL для тела функции.
CREATE OR REPLACE FUNCTION CalculateAnnualBonus(
    EmployeeID INTEGER,
    Salary NUMERIC(10, 2)
)
RETURNS NUMERIC(10,2)
LANGUAGE PLpgSQL
AS $$
DECLARE
    Bonus NUMERIC(10,2);
BEGIN
    IF Salary <= 0 THEN
        RETURN 0;
    ELSE
        Bonus := Salary * 0.1;
        RETURN Bonus;
    END IF;
END;
$$;
--2. Использовать эту функцию в операторе SELECT, чтобы увидеть
--потенциальный бонус для каждого сотрудника.
SELECT
    FirstName,
    LastName,
    Department,
    CalculateAnnualBonus(EmployeeID , Salary) AS Bonus
FROM Employees;
--3. Представление (View): Создать представление с именем
--IT_Department_View, которое показывает EmployeeID,
--FirstName, LastName и Salary только для сотрудников из отдела
--'IT'.
CREATE VIEW IT_Department_View AS SELECT
    EmployeeID,
    FirstName,
    LastName,
    Salary
FROM
    Employees
WHERE
    Department = 'IT';
--4. Выбрать данные из вашего представления IT_Department_View.
SELECT *
FROM
    IT_Department_View;
