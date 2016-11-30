select id , country , money, creation_date
from (
       SELECT *,ROW_NUMBER() OVER (PARTITION BY country order by money DESC) AS Row_ID
       FROM public.users
     ) as r
where Row_id <=3;


select country, count(id) from users u
WHERE u.creation_date BETWEEN  '2016-11-01' AND '2016-11-06'
GROUP BY country;
