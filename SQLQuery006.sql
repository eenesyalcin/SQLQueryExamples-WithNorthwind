-- NORTHWIND SORGU �RNEKLER� 6


-- 1) M��teri ad� 'A' harfi ile ba�layan �irketleri listeleme
SELECT * 
FROM Customers 
WHERE CompanyName LIKE 'A%'


-- 2) Fax ve Region kolonlar� null olan m��terileri listeleme
SELECT * 
FROM Customers 
WHERE Fax IS NULL AND Region IS NULL


-- 3) CustomerID'si 'AA' ile biten m��terileri listeleme
SELECT * 
FROM Customers 
WHERE CustomerID LIKE '%AA'