SELECT count(assistance_requests.*) AS total_assistances, name FROM assistance_requests
JOIN students on students.id = assistance_requests.student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY name;