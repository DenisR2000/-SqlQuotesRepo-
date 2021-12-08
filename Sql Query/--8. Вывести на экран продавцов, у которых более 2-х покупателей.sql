USE Seller
SELECT *
FROM Customers c
WHERE c.id_Sel in (SELECT id_Sel from Sellers WHERE id_Sel > 2)

