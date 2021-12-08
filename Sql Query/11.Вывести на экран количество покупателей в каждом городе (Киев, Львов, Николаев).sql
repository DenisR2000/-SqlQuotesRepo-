--11.Вывести на экран количество покупателей в каждом городе (Киев, Львов, Николаев)
USE Seller
SELECT  COUNT(O.id_Cus)
FROM dbo.Orders O
WHERE id_Cus in (SELECT c.id FROM Customers c WHERE c.id_city = 5)