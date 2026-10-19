SELECT courses.title
FROM assignments
INNER JOIN courses
ON assignments.course_id = courses.id
GROUP BY assignments.course_id
HAVING COUNT(*) > (
    SELECT COUNT(*) FROM assignments
) / (
    SELECT COUNT(*) FROM (
        SELECT COUNT(*) FROM assignments GROUP BY assignments.course_id
    )
)
ORDER BY courses.title ASC