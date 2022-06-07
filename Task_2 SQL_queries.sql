
--- commands for MySQL

--- using the required database
use db1;

-- select the top 20 rows of the deliveries table
select top 20 * from deliveries  ;

-- select the top 20 rows of the matches table
select  top 20 * from matches;

-- renaming date column to avoid mix with inbukt functions
exec sp_rename 'matches.date', 'match_date', 'column';

-- Fetch data of all the matches played on 2nd May 2013
select * from matches
where   match_date = '2013-05-02';

-- Fetch data of all the matches where the margin of victory is more than 100 runs
select * from matches
where  result_margin > 100;

-- Fetch data of all the matches where the final scores of both teams tied and order it in descending order of the date
select * from matches
where result = 'tie'
order by match_date desc;

-- Get the count of cities that have hosted an IPL match.
select count(distinct city) as count_of_cities from matches;


