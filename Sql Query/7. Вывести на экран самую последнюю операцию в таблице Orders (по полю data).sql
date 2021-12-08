USE Seller
DECLARE @id int =  (SELECT MAX(id) FROM Customers c)
SELECT * FROM Customers
WHERE id = @id

