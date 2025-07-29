-- NORTHWIND SORGU ÖRNEKLERÝ 7


-- 1) Ürünlerin KDV hariç fiyatlarýný ve KDV dahil fiyatlarýný listeleme
SELECT ProductName, UnitPrice 
AS 'KDVHaricFiyat', (UnitPrice * 0.18 + UnitPrice) 
AS 'KDVDahilFiyat' 
FROM Products 


-- 2) KDV oraný 2 TL'den az olan ürünleri listeleme
SELECT ProductName, 
(UnitPrice * 0.18) AS 'KDVFiyat'
FROM Products 
WHERE (UnitPrice * 0.18) < 2


-- 3) KDV dahil en pahalý 5 ürünü listeleme
SELECT TOP 5 ProductName, (UnitPrice * 0.18 + UnitPrice) AS 'KDVDahilFiyat' 
FROM Products 
ORDER BY KDVDahilFiyat DESC