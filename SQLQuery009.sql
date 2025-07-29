-- NORTHWIND SORGU ÖRNEKLERÝ 9


-- 1) Stok sayýsý 20 ile 50 arasýnda olan ürünleri listeleme
SELECT ProductName, UnitsInStock 
FROM Products 
WHERE UnitsInStock BETWEEN 20 AND 50


-- 2) En pahalý ürünün fiyatýný bulma
SELECT max(UnitPrice) 
AS 'EnPahaliUrunFiyati' 
FROM Products


-- 3) Kaç çeþit ürün olduðunu bulma
SELECT count(DISTINCT CategoryID) 
AS 'KategoriSayisi'
FROM Products