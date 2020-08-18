SELECT assignments.id, assignments.name, assignments.day, chapter, COUNT(assignments.id) as total_requests
FROM assistance_requests 
JOIN  assignments ON assignments.id = assistance_requests.assignment_id
GROUP BY assignments.id, assignments.name, assignments.day, chapter
ORDER BY total_requests DESC;

