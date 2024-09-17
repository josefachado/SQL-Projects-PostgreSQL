# Introduction
Dive into data job market! Focus on data analyst role.

SQL queries? Check out [project_sql folder](/project_sql/)
# Background
Bla bla
# Tools I used
- **SQL**
- **Postgress**
- **VS Vode**
# The Analysis
Bla bla

**1. Top_paying_jobs_for_my_role**

```sql
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
```

# What I learned

# Conclusions