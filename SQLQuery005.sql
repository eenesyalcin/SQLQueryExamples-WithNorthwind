-- NORTHWIND SORGU �RNEKLER� 5


-- 1) �al��anlar�n isimlerini A'dan Z'ye s�ralayarak lsiteleme
SELECT FirstName, LastName
FROM Employees
ORDER BY FirstName ASC


-- 2) �al��anlar�n soyisimlerini Z'den A'ya s�ralayarak lsiteleme
SELECT FirstName, LastName
FROM Employees
ORDER BY LastName DESC


-- 3) �al��anlar�n ya� ortalamas�n� bulma
SELECT avg(datediff(year, BirthDate, getdate()))
AS 'CalisanlarinYasOrtalamasi'
FROM Employees