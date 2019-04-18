SELECT i.ID, i.Customername, i.Ordernumber, i.Orderdate, 
		li.Quantity,
		p.code as 'Description', p. price
from LineItem LI
Inner join 
Product P
Inner join 
Invoice i
on I.id = LI.invoiceid and LI.productid = p.id;









	

        