

SELECT AVG(avg_duration) as average_total_duration
  FROM (
    SELECT cohorts.name as name, SUM(assistance_requests.completed_at - assistance_requests.started_at) as avg_duration
    FROM assistance_requests
    JOIN students on assistance_requests.student_id = students.id 
    JOIN cohorts on cohorts.id = students.cohort_id
    GROUP BY cohorts.name
  ) as avg_total;

  