-- NORTHWIND SORGU ÖRNEKLERÝ 2


-- 1) Çalýþan erkekleri listeleme
SELECT * 
FROM Employees 
WHERE TitleOfCourtesy = 'Mr.'


-- 2) Çalýþan erkeklerin adýný ve soyadýný listeleme
SELECT FirstName, LastName 
FROM Employees 
WHERE TitleOfCourtesy = 'Mr.'


-- 3) Çalýþan erkeklerin sayýsýný bulma
SELECT count(EmployeeID) 
AS 'CalisanErkekSayisi'
FROM Employees 
WHERE TitleOfCourtesy = 'Mr.'


-- 4) Çalýþan kadýnlarýn sayýsýný bulma
SELECT count(EmployeeID) 
AS 'CalisanKadinSayisi'
FROM Employees 
WHERE TitleOfCourtesy IN ('Ms.', 'Mrs.') 


-- 5) Çalýþanlarýn kaç farklý þehirde çalýþtýklarýný listeleme
SELECT DISTINCT City 
FROM Employees


-- 6) Çalýþanlarýn kaç farklý þehirde çalýþtýklarýnýn sayýsýný bulma
SELECT City, count(City) 
AS 'SehirSayisi' 
FROM Employees 
GROUP BY City