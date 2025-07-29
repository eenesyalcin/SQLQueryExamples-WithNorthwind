-- NORTHWIND SORGU �RNEKLER� 8


-- 1) En ucuz 5 �r�n�n ortalama fiyat�n� bulma
SELECT avg(EnUcuzBesUrunFiyatTablo.EnUcuzBesUrunFiyat)
AS 'EnUcuzBesUrunFiyatOrtalama'
FROM (
SELECT TOP 5 UnitPrice 
AS 'EnUcuzBesUrunFiyat'
FROM Products 
ORDER BY UnitPrice ASC) 
AS EnUcuzBesUrunFiyatTablo


-- 2) �r�n adlar�n� b�y�k harf yaparak listeleme
SELECT upper(ProductName) 
FROM Products


-- 3) Sto�u olmayan �r�nlerin say�s�n� bulma
SELECT * 
FROM Products 
WHERE UnitsInStock = 0;