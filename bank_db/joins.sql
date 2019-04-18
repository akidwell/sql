-- "wrong" way to do a join
SELECT account_holder, TXN_Type, amount
 FROM accounts, transactions
Where accounts.id = transactions.Account_ID;

-- the book way to do an inner join
SELECT account_holder, TXN_Type, amount
from accounts a
	inner join
		transactions t
        on a.id = t.Account_ID;
        
-- left outer join
SELECT account_holder, TXN_Type, amount
from accounts a
	left outer join
		transactions t
        on a.id = t.Account_ID;