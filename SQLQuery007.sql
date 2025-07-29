-- NORTHWIND SORGU �RNEKLER� 7


-- 1) �r�nlerin KDV hari� fiyatlar�n� ve KDV dahil fiyatlar�n� listeleme
SELECT ProductName, UnitPrice 
AS 'KDVHaricFiyat', (UnitPrice * 0.18 + UnitPrice) 
AS 'KDVDahilFiyat' 
FROM Products 


-- 2) KDV oran� 2 TL'den az olan �r�nleri listeleme
SELECT ProductName, 
(UnitPrice * 0.18) AS 'KDVFiyat'
FROM Products 
WHERE (UnitPrice * 0.18) < 2


-- 3) KDV dahil en pahal� 5 �r�n� listeleme
SELECT TOP 5 ProductName, (UnitPrice * 0.18 + UnitPrice) AS 'KDVDahilFiyat' 
FROM Products 
ORDER BY KDVDahilFiyat DESC