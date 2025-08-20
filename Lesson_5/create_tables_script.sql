--Создание таблиц 
CREATE TABLE Dim_Lessee (
Lessee_SK SERIAL PRIMARY KEY,
Lessee_ID VARCHAR(15) NOT NULL UNIQUE,
First_Name VARCHAR(20) NOT NULL,
Last_Name VARCHAR(25) NOT NULL,
Middle_Name VARCHAR(25) NULL,
Gender VARCHAR(1) NOT NULL,
Date_Of_Birthday DATE NOT NULL,
Citizenship VARCHAR(20) NOT NULL);

CREATE TABLE Dim_Lessor (
Lessor_SK SERIAL PRIMARY KEY,
Lessor_ID VARCHAR(15) NOT NULL UNIQUE,
First_Name VARCHAR(20) NOT NULL,
Last_Name VARCHAR(25) NOT NULL,
Middle_Name VARCHAR(25) NULL,
Gender VARCHAR(1) NOT NULL,
Date_Of_Birthday DATE NOT NULL,
Citizenship VARCHAR(20) NOT NULL);

CREATE TABLE Dim_Leased_Property (
Property_SK SERIAL PRIMARY KEY,
Property_ID VARCHAR(10) NOT NULL UNIQUE,
Area NUMERIC(5,2) NOT NULL,
Room_Count SMALLINT NOT NULL);

CREATE TABLE Dim_Address (
Address_SK SERIAL PRIMARY KEY,
Address_ID VARCHAR(130) NOT NULL UNIQUE,
Region VARCHAR(25) NOT NULL,
District VARCHAR(25) NOT NULL,
Locality VARCHAR(30) NOT NULL,
Street VARCHAR(30) NOT NULL,
Building_Number INTEGER NOT NULL,
Apartment_Number INTEGER NOT NULL DEFAULT 0,
Property_SK INTEGER NOT NULL UNIQUE,
FOREIGN KEY (Property_SK) REFERENCES Dim_Leased_Property(Property_SK));

CREATE TABLE Dim_Date (
Date_SK SERIAL PRIMARY KEY,
Date_ID VARCHAR(50) NOT NULL UNIQUE,
Signing_Date DATE NOT NULL,
Lease_Start_Date DATE NOT NULL,
Lease_End_Date DATE NOT NULL);

CREATE TABLE Fact_Lease_Agreement (
Lease_Agreement_SK SERIAL PRIMARY KEY,
Lease_Agreement_ID VARCHAR(20) NOT NULL UNIQUE,
Total_Price NUMERIC NOT NULL,
Additional_Conditions TEXT NULL,
Lessee_SK INTEGER,
Lessor_SK INTEGER,
Property_SK INTEGER,
Date_SK INTEGER,
FOREIGN KEY (Lessee_SK) REFERENCES Dim_Lessee(Lessee_SK),
FOREIGN KEY (Lessor_SK) REFERENCES Dim_Lessor(Lessor_SK),
FOREIGN KEY (Property_SK) REFERENCES Dim_Leased_Property(Property_SK),
FOREIGN KEY (Date_SK) REFERENCES Dim_Date(Date_SK));

--Добавление ограничений
ALTER TABLE Dim_Lessee
    ADD CONSTRAINT UQ_Lessee_Data UNIQUE (Lessee_SK, Citizenship),
    ADD CONSTRAINT CHK_Lessee_Age CHECK (EXTRACT(YEAR FROM AGE(CURRENT_DATE,  Date_Of_Birthday)) >= 18
        AND EXTRACT(YEAR FROM AGE(CURRENT_DATE,  Date_Of_Birthday)) < 125),
    ADD CONSTRAINT CHK_Gender CHECK (Gender IN ('M', 'F'));

ALTER TABLE Dim_Lessor
    ADD CONSTRAINT UQ_Lessor_Data UNIQUE (Lessor_SK, Citizenship),
    ADD CONSTRAINT CHK_Lessor_Age CHECK (EXTRACT(YEAR FROM AGE(CURRENT_DATE,  Date_Of_Birthday)) >= 18
        AND EXTRACT(YEAR FROM AGE(CURRENT_DATE,  Date_Of_Birthday)) < 125),
    ADD CONSTRAINT CHK_Gender CHECK (Gender IN ('M', 'F'));

ALTER TABLE Dim_Leased_Property
    ADD CONSTRAINT CHK_Area_And_Rooms CHECK (Room_Count > 0 AND Area > 0);

ALTER TABLE Fact_Lease_Agreement
    ADD CONSTRAINT CHK_Price CHECK (Total_Price > 0);

ALTER TABLE Dim_Date
    ADD CONSTRAINT CHK_Date_Start_End CHECK(Lease_End_Date > Lease_Start_Date),
    ADD CONSTRAINT CHK_Date_Signing_Start CHECK(Signing_Date < Lease_Start_Date);
