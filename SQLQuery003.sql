-- NORTHWIND SORGU ÖRNEKLERÝ 3


-- 1) Doðum tarihi 1960-05-29'dan büyük olan çalýþanlarý listeleme
SELECT * 
FROM Employees 
WHERE BirthDate > '1960-05-29'


-- 2) Adresin içerisinde 'House' geçen çalýþanlarýn adýný ve soyadýný listeleme
SELECT FirstName, LastName
FROM Employees 
WHERE [Address] LIKE '%House%'


-- 3) Extension kolonu 3 haneli olan çalýþanlarý listeleme
SELECT * 
FROM Employees
WHERE len(Extension) = 3