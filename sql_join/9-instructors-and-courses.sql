SELECT instructors.name, courses.title
FROM instructors
LEFT JOIN courses
ON instructors.id = courses.instuctor_id
ORDER BY instructors.name, courses.title ASC