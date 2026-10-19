SELECT students.name    
FROM registrations
LEFT JOIN students
ON students.id = registrations.student_id
GROUP BY students.id
HAVING COUNT(registrations.course_id) > 0
ORDER BY students.name ASC