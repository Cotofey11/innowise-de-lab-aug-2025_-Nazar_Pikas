--Запрос 1: Кто больше всех сдавал арендного жилья
SELECT
    dr.First_Name,
    dr.Last_Name,
    COUNT(fla.Lessor_SK) AS Lease_Count
FROM
    Fact_Lease_Agreement fla
    JOIN Dim_Lessor dr ON fla.Lessor_SK = dr.Lessor_SK
GROUP BY
    dr.First_Name,
    dr.Last_Name
ORDER BY
    COUNT(fla.Lessor_SK) DESC
LIMIT 1;

--Запрос 2: Вывести имена тех арендаторов, кто заключал договор летом и осенью 2025 года
SELECT DISTINCT
    dse.First_Name,
    dse.Last_Name
FROM
    (Fact_Lease_Agreement fla
    JOIN Dim_Lessee dse ON fla.Lessee_SK = dse.Lessee_SK)
    JOIN Dim_Date dd ON dd.Date_SK = fla.Date_SK
WHERE
    dd.Signing_Date >= '2025-06-01'
    AND dd.Signing_Date <= '2025-11-30';

--Запрос 3: Какой объект недвижимости принёс наибольший доход
SELECT
    dlp.Property_ID,
    SUM(fla.Total_Price)
FROM
    Dim_Leased_Property dlp
    JOIN Fact_Lease_Agreement fla ON fla.Property_SK = dlp.Property_SK
GROUP BY
    dlp.Property_ID
ORDER BY
    SUM(fla.Total_Price) DESC
LIMIT 1;
