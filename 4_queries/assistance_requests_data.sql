SELECT teachers.name as teacher, students.name as students, assignments.name as assignments, (assistance_requests.completed_at - assistance_requests.started_at) as duration
FROM assistance_requests
JOIN teachers on assistance_requests.teacher_id = teachers.id 
JOIN students on assistance_requests.student_id = students.id
JOIN assignments on assistance_requests.assignment_id = assignments.id
ORDER BY duration;