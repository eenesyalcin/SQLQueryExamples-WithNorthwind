-- NORTHWIND SORGU ÖRNEKLERÝ 6


-- 1) Müþteri adý 'A' harfi ile baþlayan þirketleri listeleme
SELECT * 
FROM Customers 
WHERE CompanyName LIKE 'A%'


-- 2) Fax ve Region kolonlarý null olan müþterileri listeleme
SELECT * 
FROM Customers 
WHERE Fax IS NULL AND Region IS NULL


-- 3) CustomerID'si 'AA' ile biten müþterileri listeleme
SELECT * 
FROM Customers 
WHERE CustomerID LIKE '%AA'