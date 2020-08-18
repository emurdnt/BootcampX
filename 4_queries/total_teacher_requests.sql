SELECT count(teacher_id), name FROM assistance_requests
JOIN teachers on teachers.id = assistance_requests.teacher_id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY name;