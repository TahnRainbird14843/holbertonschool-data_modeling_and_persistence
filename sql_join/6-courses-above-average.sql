SELECT courses.title, COUNT(*)
FROM courses
LEFT JOIN enrollments
ON courses.id = enrollments.course_id
GROUP BY courses.id
HAVING COUNT(*) > (
    SELECT COUNT(*) FROM enrollments
) / (
    SELECT COUNT(*) FROM courses
)
ORDER BY courses.title;

SELECT COUNT(*) FROM enrollments;

SELECT COUNT(*) FROM courses
