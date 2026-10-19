SELECT students.name, courses.title
FROM registrations
INNER JOIN students
ON students.id = registrations.student_id
INNER JOIN courses
ON courses.id = registrations.course_id
ORDER BY students.name ASC, courses.title ASC