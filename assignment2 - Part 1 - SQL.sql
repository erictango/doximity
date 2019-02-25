--  PART II


--  Q 1. a
--  --------

SELECT region, avg(age)
FROM users
GROUP BY region


--  Q 1. b
--  --------

TODO 
top 10 most viewd users 

SELECT TOP 10 viewed_user_id, count(*) as view_counts
FROM internal_profile_views
GROUP BY viewed_user_id
ORDER by view_counts


--  Q 1. c
--  --------
SELECT TOP 1 u.region, count(distinct v.viewed_user_id) as num_viewed_users
FROM internal_profile_views v INNER JOIN users u ON v.viewed_user_id=u.id
GROUP BY u.region
ORDER BY num_viewed_users 

