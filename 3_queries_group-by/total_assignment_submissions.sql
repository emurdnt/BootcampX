SELECT cohorts.name AS cohort, count(assignment_submissions.id)  AS total_submissions
FROM cohorts
JOIN students on cohorts.id = students.cohort_id
JOIN assignment_submissions on students.id = assignment_submissions.student_id
GROUP BY cohorts.name
ORDER BY count(assignment_submissions.id) DESC;