--5. Вывести на экран имена всех покупателей, у которых нету продавцов 
SELECT *
FROM (SELECT * FROM Customers WHERE id_Sel IS NULL)A