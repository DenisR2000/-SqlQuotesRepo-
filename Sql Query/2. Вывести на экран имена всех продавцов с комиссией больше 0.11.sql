USE Seller
SELECT * 
FROM(SELECT *
FROM Seller.dbo.Sellers WHERE comision > 0.11)a

--2. Вывести на экран имена всех продавцов с комиссией больше 0.11