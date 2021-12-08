DECLARE @AVG_R INT = (SELECT AVG(Raiting) FROM Customers WHERE id_city = 1)
SELECT *
FROM Customers
WHERE Raiting = (SELECT AVG(Raiting) FROM Customers WHERE id_city = 1)