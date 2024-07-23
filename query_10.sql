SELECT subjects.name
FROM subjects
JOIN grades ON subjects.id = grades.subject_id
WHERE grades.student_id = (SELECT id FROM students WHERE name = 'Alice Smith')
AND subjects.teacher_id = (SELECT id FROM teachers WHERE name = 'John Doe');