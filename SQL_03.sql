-- Higher Than 75 Marks
/Select NAME
FROM STUDENTS
WHERE MARKS >75
ORDER BY RIGHT (NAME,3), id;

--1667. Fix Names in a Table
SELECT USER_ID, 
cONCAT(UPPER (LEFT(NAME,1)),
LOWER (RIGHT(NAME,LENGTH(NAME)-1))) AS NAME
FROM USERS;

--[CVS Health SQL Interview Question]
SELECT MANUFACTURER,
'$' || ROUND(SUM (total_sales)/1000000,0) ||' '||'million' as sales
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM (total_sales)DESC, manufacturer;

--Average Review Ratings
SELECT 
EXTRACT(month from submit_date) as mth,
Product_Id,
ROUND(AVG(stars),2) as avg_stars
FROM reviews
GROUP BY EXTRACT(month from submit_date), product_id
ORDER BY mth, product_id;

--Teams Power Users
SELECT sender_id,
COUNT(message_id) as Message_count
FROM messages
where EXTRACT(month from sent_date)=8
and EXTRACT(year from sent_date)=2022
GROUP BY sender_id
order by message_count DESC
limit 2;

--1683. Invalid Tweets
Select tweet_id
from Tweets
where length (content)>15

--1141. User Activity for the Past 30 Days I
select activity_Date AS DAY,
COUNT(distinct user_id) AS active_users
 from Activity
 WHERE activity_Date between '2019-06-28' and '2019-07-27'
 group by activity_date

--Number of Hires During Specific Time Period
select 
Count(id) as  number_employees
from employees
where extract (month from joining_date) between 1 and 7
and extract (year from joining_date)=2022

--Positions Of Letter 'a'
select 
Position('a' in first_name) as position
from worker
where first_name='Amitah'

-- Macedonian Vintages
select 
Substring(title, length(winery)+2,4)
from winemag_p2
where country='Macedonia'

