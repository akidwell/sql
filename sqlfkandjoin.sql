SELECT c.Name, c.State, c.City
from customer c
	inner join
		state s
        on c.state = s.code;