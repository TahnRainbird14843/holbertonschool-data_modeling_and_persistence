SELECT ALL courses.title, students.name from courses
LEFT JOIN enrollments ON courses.id = enrollments.course_id
LEFT JOIN students on enrollments.student_id = students.id
ORDER BY courses.title, students.name ASC;
