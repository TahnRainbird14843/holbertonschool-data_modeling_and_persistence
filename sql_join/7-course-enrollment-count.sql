SELECT courses.title, COUNT(enrollments.course_id) AS count
FROM courses
LEFT JOIN enrollments
ON enrollments.course_id = courses.id
GROUP BY courses.id
ORDER BY count DESC, courses.title ASC