-- TYPE YOUR SQL QUERY BELOW

-- PART 1: Create a SQL query that maps out the daily average users before and after the feature change

SELECT
    DATE(login_timestamp, 'unixepoch') AS date,
    COUNT(DISTINCT user_id) AS daily_user_count
FROM login_history
WHERE login_timestamp < 1527897600 -- Unix timestamp for 2018-06-02
GROUP BY date
ORDER BY date;

-- PART 2: Create a SQL query that indicates the number of status changes by card





