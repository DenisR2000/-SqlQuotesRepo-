USE Seller
SELECT * 
FROM(SELECT *
FROM Seller.dbo.Sellers WHERE comision > 0.11)a

--2. ������� �� ����� ����� ���� ��������� � ��������� ������ 0.11