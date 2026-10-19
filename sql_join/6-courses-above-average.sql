WITH course_enrollment AS (
    SELECT courses.title AS title, COUNT(*) AS count
    FROM courses
    LEFT JOIN enrollments
    WHERE enrollments.course_id = courses.id
    GROUP BY courses.id
)
SELECT course_enrollment.title
FROM course_enrollment
WHERE course_enrollment.count > (
    SELECT AVG(course_enrollment.count)
    FROM course_enrollment
)
ORDER BY course_enrollment.title ASC;

