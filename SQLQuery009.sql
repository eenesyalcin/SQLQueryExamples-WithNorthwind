-- NORTHWIND SORGU �RNEKLER� 9


-- 1) Stok say�s� 20 ile 50 aras�nda olan �r�nleri listeleme
SELECT ProductName, UnitsInStock 
FROM Products 
WHERE UnitsInStock BETWEEN 20 AND 50


-- 2) En pahal� �r�n�n fiyat�n� bulma
SELECT max(UnitPrice) 
AS 'EnPahaliUrunFiyati' 
FROM Products


-- 3) Ka� �e�it �r�n oldu�unu bulma
SELECT count(DISTINCT CategoryID) 
AS 'KategoriSayisi'
FROM Products