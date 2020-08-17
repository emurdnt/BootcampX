Select cohorts.name, count(students.id)
FROM cohorts 
JOIN students ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.id) >= 18;