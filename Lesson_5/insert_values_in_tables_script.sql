INSERT INTO Dim_Lessee (Lessee_ID, First_Name, Last_Name, Middle_Name, Gender, Date_Of_Birthday, Citizenship) VALUES
('LS001', 'Maria', 'Kolesnik', 'Ivanovna', 'F', '1992-04-15', 'Belarus'),
('LS002', 'Sergey', 'Novikov', 'Petrovich', 'M', '1985-12-03', 'Russia'),
('LS003', 'Emily', 'Clark', NULL, 'F', '1990-07-22', 'UK'),
('LS004', 'Ali', 'Khan', 'Mustafa', 'M', '1988-09-10', 'Pakistan'),
('LS005', 'Natalia', 'Orlova', 'Victorovna', 'F', '1995-01-30', 'Belarus');

INSERT INTO Dim_Lessor (Lessor_ID, First_Name, Last_Name, Middle_Name, Gender, Date_Of_Birthday, Citizenship) VALUES
('LR001', 'Ivan', 'Petrov', 'Sergeevich', 'M', '1980-05-12', 'Belarus'),
('LR002', 'Anna', 'Kuznetsova', 'Sergeevna', 'F', '1975-09-30', 'Russia'),
('LR003', 'John', 'Smith', NULL, 'M', '1988-03-22', 'USA'),
('LR004', 'Olga', 'Ivanova', 'Nikolaevna', 'F', '1990-11-05', 'Belarus'),
('LR005', 'Mehmet', 'Yildiz', NULL, 'M', '1982-07-18', 'Turkey');

INSERT INTO Dim_Leased_Property (Property_ID, Area, Room_Count) VALUES
('PR001', 45.50, 2),
('PR002', 60.00, 3),
('PR003', 38.75, 1),
('PR004', 72.30, 4),
('PR005', 55.00, 2);

INSERT INTO Dim_Address (Address_ID, Region, District, Locality, Street, Building_Number, Apartment_Number, Property_SK) VALUES
('AD001', 'Moscow', 'Central', 'Moscow', 'Tverskaya', 12, 45, 1),
('AD002', 'Gomel', 'Novobelitsky', 'Gomel', 'Lenina', 5, 12, 2),
('AD003', 'Minsk', 'Sovetsky', 'Minsk', 'Nezavisimosti', 101, 0, 3),
('AD004', 'Kyiv', 'Shevchenkivskyi', 'Kyiv', 'Khreshchatyk', 22, 7, 4),
('AD005', 'Almaty', 'Bostandyk', 'Almaty', 'Abay', 33, 14, 5);

INSERT INTO Dim_Date (Date_ID, Signing_Date, Lease_Start_Date, Lease_End_Date) VALUES
('DT001', '2023-01-01', '2023-02-01', '2024-02-01'),
('DT002', '2022-05-10', '2022-06-01', '2023-06-01'),
('DT003', '2023-09-15', '2023-10-01', '2024-10-01'),
('DT004', '2021-11-20', '2021-12-01', '2022-12-01'),
('DT005', '2024-03-05', '2024-04-01', '2025-04-01');

INSERT INTO Fact_Lease_Agreement (Lease_Agreement_ID, Total_Price, Additional_Conditions, Lessee_SK, Lessor_SK, Property_SK, Date_SK) VALUES
('FA001', 25000, 'No pets allowed', 1, 2, 3, 4),
('FA002', 30000, 'Includes parking', 2, 3, 4, 5),
('FA003', 18000, NULL, 3, 4, 5, 1),
('FA004', 22000, 'Furnished apartment', 4, 5, 1, 2),
('FA005', 27000, 'Utilities included', 5, 1, 2, 3),
('FA006', 32000, 'Short-term lease', 1, 3, 5, 5);

