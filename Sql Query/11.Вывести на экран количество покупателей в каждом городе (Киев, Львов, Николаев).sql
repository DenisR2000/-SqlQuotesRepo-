--11.������� �� ����� ���������� ����������� � ������ ������ (����, �����, ��������)
USE Seller
SELECT  COUNT(O.id_Cus)
FROM dbo.Orders O
WHERE id_Cus in (SELECT c.id FROM Customers c WHERE c.id_city = 5)