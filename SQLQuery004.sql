-- NORTHWIND SORGU ÖRNEKLERÝ 4


-- 1) Çalýþanlarýn yaþlarýný bulma ve listeleme
SELECT FirstName, LastName, BirthDate, datediff(year, BirthDate, getdate())
AS 'CalisanlarinYaslari'
FROM Employees


-- 2) Yaþý en genç olan çalýþaný bulma
SELECT TOP 1 FirstName, LastName, datediff(year, BirthDate, getdate()) 
AS 'EnGencCalisaninYasi'
FROM Employees
ORDER BY BirthDate DESC;


-- 3) Çalýþanlarýn iþe kaç yaþýnda baþladýklarýný bulma
SELECT FirstName, LastName, datediff(year, BirthDate, HireDate)
AS 'CalisanlarinIseBaslamaYasi'
FROM Employees


-- 4) Region kolonu 'NULL' olan çalýþanlarý listeleme
SELECT * 
FROM Employees 
WHERE Region IS NULL


-- 5) Region kolonu 'NULL' olmayan çalýþanlarý listeleme
SELECT * 
FROM Employees 
WHERE Region IS NOT NULL