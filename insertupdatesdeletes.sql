Select * from customer;
Select * from Customer
Where name like '%A%';
	-- or name like 'D%';
    
    Select * from Customer
    Where name like '%A%.'
    and state = 'NJ';
    
    -- use regex to return all records with names starting with a vowel
    
    Select * from customer
    Where name REGEXP "^[AEIOU].*";
    
    -- insert stmt
    Select * From customer;
    Insert into Customer Values (13, 'Fender', 'Scotsdale', 'AZ', 456789000, 1);
    Insert into Customer Values (14, 'Gibson Guitars', 'Memphis', 'TN', 764623477, 1);
    
    Insert into Customer 
    (Name, city, state, sales, active)
    values 
    ('Ibanez', 'Bensalem', 'PA', 48484848, 1),
	('Ibanez', 'Bensalem', 'PA', 48484848, 1);

-- update stmt
Select * from customer;
Update customer 
	set name = 'Pearl',
    city = 'Test',
    State = 'TE'
    Where id = 16;
    
-- delete stmt 
Select * from Customer;
delete from Customer
Where id = 19;
    
-- select using in clause
select * from customer
where id in (14,15,16);
    
    