SELECT instructors.name
FROM instructors
LEFT JOIN (
    SELECT courses.instructor_id AS instructor_id
    FROM courses
    LEFT JOIN registrations
    ON courses.id = registrations.course_id
    GROUP BY registrations.course_id
    HAVING COUNT(registrations.course_id) > 0
) AS active_courses
ON active_courses.instructor_id = instructors.id
GROUP BY active_courses.instructor_id
HAVING COUNT(active_courses.instructor_id) > 0
ORDER BY instructors.name ASC