SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests)
FROM assistance_requests
JOIN teachers on assistance_requests.teacher_id = teachers.id 
JOIN students on assistance_requests.student_id = students.id
JOIN cohorts on students.cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohort
ORDER BY teacher;