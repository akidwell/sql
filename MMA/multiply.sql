select price, count(price), from mma.product
group by price;

-- multiply

select *, li.quantity*p.price from lineitem li 
join product p
on li.productid = p.id;


