--12.Вывести на экран имя покупателя, продавца, сумму сделки, место проживания покупателя, место проживания продавца, рейтинг покупателя,
--комиссию продавца, сумму, заработанную продавцом в период с '01.01.2015' по '20.01.2015'

USE Seller 
SELECT c.CName, c.id_city, se.SName, se.id_city, c.Raiting, se.comision, o.Summa, Summa_S
FROM Orders o inner join Customers c on o.id_Cus = c.id
inner join Sellers se on o.id_Sel = se.id
left join (SELECT o.id_Sel, SUM(Summa) Summa_S FROM Orders o WHERE data between '01.01.2015' and '20.01.2015' GROUP BY o.id_Sel) s1 ON o.id_Sel = s1.id_Sel

