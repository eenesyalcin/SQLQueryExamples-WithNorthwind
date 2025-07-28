-- NORTHWIND SORGU �RNEKLER� 3


-- 1) Do�um tarihi 1960-05-29'dan b�y�k olan �al��anlar� listeleme
SELECT * 
FROM Employees 
WHERE BirthDate > '1960-05-29'


-- 2) Adresin i�erisinde 'House' ge�en �al��anlar�n ad�n� ve soyad�n� listeleme
SELECT FirstName, LastName
FROM Employees 
WHERE [Address] LIKE '%House%'


-- 3) Extension kolonu 3 haneli olan �al��anlar� listeleme
SELECT * 
FROM Employees
WHERE len(Extension) = 3