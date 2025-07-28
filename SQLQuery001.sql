-- NORTHWIND SORGU ÖRNEKLERÝ 1


-- 1) Çalýþanlarý listeleme
SELECT * 
FROM Employees


-- 2) Çalýþanlarýn sayýsýný listeleme
SELECT count(EmployeeID) 
AS 'CalisanSayisi' 
FROM Employees


-- 3) Çalýþanlarýn adýný ve soyadýný listeleme
SELECT FirstName, LastName 
FROM Employees


-- 4) Çalýþanlarýn adýný ve soyadýný tek sütunda listeleme
SELECT FirstName + ' ' + LastName 
AS 'Ad ve Soyad' 
FROM Employees


-- 5) Çalýþna kadýnlarýn adýný ve soyadýný listeleme
SELECT FirstName, LastName 
FROM Employees 
WHERE TitleOfCourtesy IN ('Mrs.', 'Ms.')