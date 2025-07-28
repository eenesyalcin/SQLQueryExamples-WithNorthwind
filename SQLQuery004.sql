-- NORTHWIND SORGU �RNEKLER� 4


-- 1) �al��anlar�n ya�lar�n� bulma ve listeleme
SELECT FirstName, LastName, BirthDate, datediff(year, BirthDate, getdate())
AS 'CalisanlarinYaslari'
FROM Employees


-- 2) Ya�� en gen� olan �al��an� bulma
SELECT TOP 1 FirstName, LastName, datediff(year, BirthDate, getdate()) 
AS 'EnGencCalisaninYasi'
FROM Employees
ORDER BY BirthDate DESC;


-- 3) �al��anlar�n i�e ka� ya��nda ba�lad�klar�n� bulma
SELECT FirstName, LastName, datediff(year, BirthDate, HireDate)
AS 'CalisanlarinIseBaslamaYasi'
FROM Employees


-- 4) Region kolonu 'NULL' olan �al��anlar� listeleme
SELECT * 
FROM Employees 
WHERE Region IS NULL


-- 5) Region kolonu 'NULL' olmayan �al��anlar� listeleme
SELECT * 
FROM Employees 
WHERE Region IS NOT NULL