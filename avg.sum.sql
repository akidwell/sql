SELECT * FROM transactions;
select count(*) from transactions;

select count(*) from transactions
where TXN_Type = 'Deposit';

Select avg(Amount) as 'Total'
	from transactions;	