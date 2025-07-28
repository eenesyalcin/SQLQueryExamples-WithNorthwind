-- NORTHWIND SORGU �RNEKLER� 2


-- 1) �al��an erkekleri listeleme
SELECT * 
FROM Employees 
WHERE TitleOfCourtesy = 'Mr.'


-- 2) �al��an erkeklerin ad�n� ve soyad�n� listeleme
SELECT FirstName, LastName 
FROM Employees 
WHERE TitleOfCourtesy = 'Mr.'


-- 3) �al��an erkeklerin say�s�n� bulma
SELECT count(EmployeeID) 
AS 'CalisanErkekSayisi'
FROM Employees 
WHERE TitleOfCourtesy = 'Mr.'


-- 4) �al��an kad�nlar�n say�s�n� bulma
SELECT count(EmployeeID) 
AS 'CalisanKadinSayisi'
FROM Employees 
WHERE TitleOfCourtesy IN ('Ms.', 'Mrs.') 


-- 5) �al��anlar�n ka� farkl� �ehirde �al��t�klar�n� listeleme
SELECT DISTINCT City 
FROM Employees


-- 6) �al��anlar�n ka� farkl� �ehirde �al��t�klar�n�n say�s�n� bulma
SELECT City, count(City) 
AS 'SehirSayisi' 
FROM Employees 
GROUP BY City