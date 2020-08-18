-- SELECT x.name as name, x.highest_avg
--   FROM (
--     SELECT cohorts.id, cohorts.name as name, AVG(assistance_requests.completed_at - assistance_requests.started_at) as highest_avg
--     FROM assistance_requests
--     JOIN students on assistance_requests.student_id = students.id 
--     JOIN cohorts on cohorts.id = students.cohort_id
--     GROUP BY cohorts.name, cohorts.id
--     ORDER BY highest_avg
--   ) as x
-- where highest_avg = (
--                       SELECT MAX(Y.highest_avg)
--                         from (
--                           SELECT cohorts.id, cohorts.name as name, AVG(assistance_requests.completed_at - assistance_requests.started_at) as highest_avg
--                           FROM assistance_requests
--                           JOIN students on assistance_requests.student_id = students.id 
--                           JOIN cohorts on cohorts.id = students.cohort_id
--                           GROUP BY cohorts.name, cohorts.id
--                           ORDER BY highest_avg
--                         ) as Y
--                       )   

SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;
