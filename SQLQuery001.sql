-- NORTHWIND SORGU �RNEKLER� 1


-- 1) �al��anlar� listeleme
SELECT * 
FROM Employees


-- 2) �al��anlar�n say�s�n� listeleme
SELECT count(EmployeeID) 
AS 'CalisanSayisi' 
FROM Employees


-- 3) �al��anlar�n ad�n� ve soyad�n� listeleme
SELECT FirstName, LastName 
FROM Employees


-- 4) �al��anlar�n ad�n� ve soyad�n� tek s�tunda listeleme
SELECT FirstName + ' ' + LastName 
AS 'Ad ve Soyad' 
FROM Employees


-- 5) �al��na kad�nlar�n ad�n� ve soyad�n� listeleme
SELECT FirstName, LastName 
FROM Employees 
WHERE TitleOfCourtesy IN ('Mrs.', 'Ms.')