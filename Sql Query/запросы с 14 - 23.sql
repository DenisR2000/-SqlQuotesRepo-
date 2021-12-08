--14. ������� �� ����� ���������� ������ �������� 
    --���� � ������������ �� ������ �����
SELECT COUNT(o.id_Cus) Count_Orders
FROM Seller.dbo.Sellers s left join Seller.dbo.Customers c on s.id = c.id_Sel
                          left join Seller.dbo.Cities ci on ci.id = c.id_city
						  left join Seller.dbo.Orders o on c.id = o.id
WHERE c.id_city = 1
--15. ������� �� ����� ���� �����������, �������� ����� ��
    --2015-02-10 ����� �� ���������� ������ 2000
SELECT *
FROM Seller.dbo.Customers c left join Seller.dbo.Orders o on c.id = o.id
WHERE o.data <= '2015-02-10' and o.Summa < 2000

--16. ������� �� ����� ��� ������� ���������� �� ������ �����
SELECT *
FROM Seller.dbo.Orders o left join Seller.dbo.Customers c on o.id = c.id
                         left join (SELECT * FROM Seller.dbo.Cities ci WHERE ci.id = 1) ci on c.id_city = ci.id
WHERE c.id = 1;

 
--17. ������� �� ����� ����� ������� �������� �� 2015���

SELECT s.SName, SUM(o.Summa) Income
FROM Seller.dbo.Sellers s left join Seller.dbo.Orders o on s.id = o.id_Sel
WHERE o.data between '2014' and '2016'
group by s.SName

--18.������� �� ����� ����� ���� ���������, � ������� ���� �����������
SElect s.SName
from Seller.dbo.Sellers s left join Seller.dbo.Customers c on s.id = c.id_Sel
WHERE c.id_Sel is null

--19.������� �� ����� �����������, ������� �������� � ���������� : ����, ������, �������
SELECT *
FROM Seller.dbo.Customers c left join Seller.dbo.Sellers s on c.id_Sel = s.id
WHERE s.id = 1 or s.id = 4 or s.id = 5

--20.������� �� ����� �����������, ������� �������� ������ � ��������� �� ������ �������

SELECT *
FROM Seller.dbo.Customers c left join Seller.dbo.Sellers s on c.id_Sel = s.id
                            left join Seller.dbo.Cities ci on c.id_city = ci.id


--21.������� �� ����� ���������, ������� ������� ����� ����������� �� ����� � ������
SELECT s.SName, c.CName, ci.City_Name
FROM Seller.dbo.Sellers s left join Seller.dbo.Customers c on s.id = c.id_Sel
                          left join(SELECT * FROM Seller.dbo.Cities c WHERE c.id = 1 or c.id = 5) ci on c.id_city = ci.id




--22.������� �� ����� ��� �������, � ������� ���������� �� �� ������ ��������
SELECT *
FROM Seller.dbo.Orders o left join Seller.dbo.Customers c on o.id_Cus = c.id
                         left join Seller.dbo.Sellers s on c.id_Sel = s.id
WHERE c.id_city != s.id_city


--23.������� �� ����� ��� �������, � ������� ���������� �� ������ ��������
SELECT *
FROM Seller.dbo.Orders o left join Seller.dbo.Customers c on o.id_Cus = c.id
                         left join Seller.dbo.Sellers s on c.id_Sel = s.id
WHERE s.id_city = c.id_city