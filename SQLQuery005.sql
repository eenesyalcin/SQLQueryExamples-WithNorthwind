-- NORTHWIND SORGU ÖRNEKLERÝ 5


-- 1) Çalýþanlarýn isimlerini A'dan Z'ye sýralayarak lsiteleme
SELECT FirstName, LastName
FROM Employees
ORDER BY FirstName ASC


-- 2) Çalýþanlarýn soyisimlerini Z'den A'ya sýralayarak lsiteleme
SELECT FirstName, LastName
FROM Employees
ORDER BY LastName DESC


-- 3) Çalýþanlarýn yaþ ortalamasýný bulma
SELECT avg(datediff(year, BirthDate, getdate()))
AS 'CalisanlarinYasOrtalamasi'
FROM Employees