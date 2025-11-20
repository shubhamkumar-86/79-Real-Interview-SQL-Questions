-- 🚀 Day 1 Complete: 79-Day SQL Practice Series! 🚀
-- Today marks the beginning of my 79-day journey to mastering SQL, and I'm excited to share that Day 1 & thanks to Nishant Kumar 🎉
-- 📝 Problem Statement:

-- A table named “famous” has two columns called user id and follower id. It represents each user ID has a particular follower ID. These follower IDs are also users of hashtag#Facebook / hashtag#Meta. Then, find the famous percentage of each user. 
-- Famous Percentage = number of followers a user has / total number of users on the platform.

-- 📂 𝐒𝐜𝐡𝐞𝐦𝐚 𝐚𝐧𝐝 𝐃𝐚𝐭𝐚𝐬𝐞𝐭:
-- CREATE TABLE famous (user_id INT, follower_id INT);

-- INSERT INTO famous VALUES
-- (1, 2), (1, 3), (2, 4), (5, 1), (5, 3), 
-- (11, 7), (12, 8), (13, 5), (13, 10), 
-- (14, 12), (14, 3), (15, 14), (15, 13);


with cte as(
	select user_id, count(*) as no_of_followers
	from famous
	group by user_id
)

select user_id, no_of_followers/(select count(*) from famous)*100 as famous_percentage
from cte;