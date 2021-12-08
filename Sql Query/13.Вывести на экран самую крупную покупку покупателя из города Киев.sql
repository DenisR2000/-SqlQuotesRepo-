--13.Вывести на экран самую крупную покупку покупателя из города Киев
USe Seller
SELECT MAX(o.Summa)
FROM Orders o inner join Customers c on o.id_Cus = c.id
WHERE c.id_city = 5 
