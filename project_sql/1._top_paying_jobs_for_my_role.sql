/*
What are the top-paying jobs for my role?
- Indentify the top 10 highest paying Data Analyst roles that are available remotely.
- Focuses on job postings with specied salaries (remove nulls).
- Why? Highlight the top paying opportunities for Data Analysts
*/

SELECT
    job_id,
    name,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND 
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10;

SELECT
    job_id,
    name,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    salary_year_avg /12 AS salary_year_monthly,
    job_posted_date
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short IN ('Machine Learning Engineer', 'Data Analyst') AND 
    job_location LIKE '%Netherlands' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10;

