-- =======================================
-- Use the database
-- =======================================

USE mini_projectDB;

-- =======================================
-- 2. Some business questions from SQL. 
-- =======================================

-- Q1: 
SELECT *
FROM small_social_media;


SELECT *
FROM social_media_entertainment_data;

-- Q2. Retrieve all users from USA. 
SELECT country
FROM small_social_media; 

-- Q3. Count the total of people by country. 
SELECT country, COUNT(*) AS total_people
FROM small_social_media
GROUP BY country;

-- Q4. Average age by primary_platform. 
SELECT primary_platform, AVG(age) AS average_age
FROM small_social_media
GROUP BY primary_platform;

-- Q5. Average Social Media time by gender.
SELECT gender, AVG(`daily_social_media_time_(hrs)`) AS average_time
FROM small_social_media
GROUP BY gender;

-- Q6. Most popular primary platform by Gender. 
SELECT gender, primary_platform, COUNT(*) AS platform_count
FROM small_social_media
GROUP BY gender, primary_platform
ORDER BY gender, platform_count DESC;

-- Q7. Average Messaging Time by Martial Status
SELECT marital_status, AVG(`daily_messaging_time_(hrs)`) AS average_messaging_time
FROM small_social_media
GROUP BY marital_status;

-- Q8. Total monthly income by occupation. 
SELECT occupation, SUM(`monthly_income_(usd)`) AS total_income
FROM small_social_media
GROUP BY occupation
ORDER BY total_income DESC;


