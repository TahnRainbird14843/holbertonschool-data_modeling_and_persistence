SELECT courses.title
FROM courses
LEFT JOIN enrollments
ON courses.id = enrollments.course_id
GROUP BY courses.id
HAVING COUNT(*) > (
    SELECT COUNT(*) FROM enrollments
) / (
    SELECT COUNT(*) FROM (
        SELECT enrollments.course_id FROM enrollments GROUP BY enrollments.course_id
    )
)
ORDER BY courses.title;
