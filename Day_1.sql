with cte as(
	select user_id, count(*) as no_of_followers
	from famous
	group by user_id
)

select user_id, no_of_followers/(select count(*) from famous)*100 as famous_percentage
from cte;