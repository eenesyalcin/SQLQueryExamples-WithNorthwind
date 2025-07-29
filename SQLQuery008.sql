-- NORTHWIND SORGU ÖRNEKLERÝ 8


-- 1) En ucuz 5 ürünün ortalama fiyatýný bulma
SELECT avg(EnUcuzBesUrunFiyatTablo.EnUcuzBesUrunFiyat)
AS 'EnUcuzBesUrunFiyatOrtalama'
FROM (
SELECT TOP 5 UnitPrice 
AS 'EnUcuzBesUrunFiyat'
FROM Products 
ORDER BY UnitPrice ASC) 
AS EnUcuzBesUrunFiyatTablo


-- 2) Ürün adlarýný büyük harf yaparak listeleme
SELECT upper(ProductName) 
FROM Products


-- 3) Stoðu olmayan ürünlerin sayýsýný bulma
SELECT * 
FROM Products 
WHERE UnitsInStock = 0;