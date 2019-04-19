SELECT CONCAT(Title, " ", Rating) AS 'Movie Rating'
FROM Movie;

Update Actor
	set firstname = 'Helena'
    Where id = 6;

    
-- inner join
SELECT c.ROLE,
a.firstname, a.lastname,
        m.title
from Credit C
Inner join 
Actor A
inner join 
Movie M
on A.id = C.Actorid and M.ID = C.Movieid;

Select * from Actor
Order by LastName; 
        
        
        
        
-- concat and inner join
SELECT CONCAT(Firstname, lastname) as 'Name' from actor, c.ROLE, m.title 
inner join
Credit C
inner join
Movie M
on A.id = C.Actorid and M.ID = C.Movieid;        

-- 

Select * from actor where birthdate > 1980;
--

Select * from Movie 
order by Title desc; 




