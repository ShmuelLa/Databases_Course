select p.ProductName, c.CompanyName , date_format(o.OrderDate, "%Y") as OrderYear, 
	(select coalesce(FLOOR(sum(D.Quantity)*D.UnitPrice), 0) from customers as c1
	 join orders as o1 on c1.CustomerID=o1.CustomerID
	 join `order details` as D on D.OrderID=o1.OrderID
	 join products as p1 on p1.ProductID=D.ProductID where quarter(OrderDate) = 1 and p.ProductName = ProductName and c.CompanyName = CompanyName and date_format(o.OrderDate, "%Y") = date_format(OrderDate, "%Y")) as Qrt1 ,
	(select coalesce(FLOOR(sum(D.Quantity)*D.UnitPrice), 0) from customers as c1
	 join orders as o1 on c1.CustomerID=o1.CustomerID
	 join `order details` as D on D.OrderID=o1.OrderID
	 join products as p1 on p1.ProductID=D.ProductID where quarter(OrderDate) = 2 and p.ProductName = ProductName and c.CompanyName = CompanyName and date_format(o.OrderDate, "%Y") = date_format(OrderDate, "%Y")) as Qrt2,
	(select coalesce(FLOOR(sum(D.Quantity)*D.UnitPrice), 0) from customers as c1
	 join orders as o1 on c1.CustomerID=o1.CustomerID
	 join `order details` as D on D.OrderID=o1.OrderID
	 join products as p1 on p1.ProductID=D.ProductID where quarter(OrderDate) = 3 and p.ProductName = ProductName and c.CompanyName = CompanyName and date_format(o.OrderDate, "%Y") = date_format(OrderDate, "%Y")) as Qrt3,
	(select coalesce(FLOOR(sum(D.Quantity)*D.UnitPrice), 0) from customers as c1
	 join orders as o1 on c1.CustomerID=o1.CustomerID
	 join `order details` as D on D.OrderID=o1.OrderID
	 join products as p1 on p1.ProductID=D.ProductID where quarter(OrderDate) = 4 and p.ProductName = ProductName and c.CompanyName = CompanyName and date_format(o.OrderDate, "%Y") = date_format(OrderDate, "%Y")) as Qrt4
from customers as c
	 join orders as o on c.CustomerID=o.CustomerID
	 join `order details` as OD on OD.OrderID=o.OrderID
	 join products as p on p.ProductID=OD.ProductID
group by ProductName, CompanyName, date_format(OrderDate, "%Y")
order by ProductName, CompanyName