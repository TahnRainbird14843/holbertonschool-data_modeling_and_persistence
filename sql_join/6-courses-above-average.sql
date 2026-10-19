SELECT courses.title
FROM enrollments
INNER JOIN courses
ON courses.id = enrollments.course_id
GROUP BY courses.id
HAVING COUNT(*) > (
    SELECT COUNT(*) FROM enrollments
) / (
    SELECT COUNT(*) FROM courses
);
