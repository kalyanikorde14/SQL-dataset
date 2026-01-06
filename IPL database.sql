USE ipl;
#1 Find the total amount spent by each team across all years.
SELECT team, SUM(amount) AS total_spent_money FROM ipl_data GROUP BY team ORDER BY total_spent_money DESC;

#2 Display year_wise average amount, rounded 2 decimal.
SELECT year, round(avg(amount), 2) FROM ipl_data Group by year ORDER by year;

#3 Show teams that bought at least 3 overseas players in a year.
SELECT team, year, COUNT(*) AS overseas_player_count FROM ipl_data WHERE `Player Origin` <> 'India' GROUP BY year, team HAVING COUNT(*) >= 3;
USE ipl;
#4 Find the number of distinct roles bought by each team.
SELECT team, COUNT(DISTINCT role) AS distinct_role_count FROM ipl_data GROUP BY team ORDER BY distinct_role_count DESC;

#5 Display year_wise highest amount paid.
SELECT year, MAX(amount) FROM ipl_data GROUP BY year;

#6 Find teams that bought more than 10 players in total.
SELECT team, COUNT(*) AS total_player_Bought FROM ipl_data GROUP BY team HAVING COUNT(*) >10;

#7 Show role_wise minimum and maximum amount
SELECT role, max(amount) AS max_amount , min(amount) AS min_amount FROM ipl_data GROUP BY role;

#8 Display teams whose average spending per player is greater than 5 crore.
SELECT team, AVG(Amount) AS average_amount FROM ipl_data GROUP BY team HAVING  average_amount> 5; 

#9 Find year_wise count of indian vs overseas players.
SELECT CASE WHEN `Player Origin`= 'India' THEN 'Indian' ELSE 'Overseas' END AS player_type, COUNT(*) AS player_count FROM ipl_data GROUP BY CASE WHEN `Player Origin`= 'India' THEN 'Indian' ELSE 'Overseas' END;
USE ipl;