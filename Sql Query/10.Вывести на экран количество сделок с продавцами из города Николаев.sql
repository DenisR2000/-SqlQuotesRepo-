--10.������� �� ����� ���������� ������ � ���������� �� ������ ��������

SELECT COUNT(o.id_Sel)
from dbo.Orders o
WHERE o.id_Sel = (SELECT id FROM Sellers s WHERE s.id_city = 4)