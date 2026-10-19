SELECT ALL students.name, courses.title FROM enrollments
INNER JOIN students on enrollments.student_id = students.id
INNER JOIN courses on enrollments.course_id = courses.id
ORDER BY students.name, courses.title ASC