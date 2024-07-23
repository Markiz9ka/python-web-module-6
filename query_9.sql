SELECT subjects.name
FROM subjects
JOIN grades ON subjects.id = grades.subject_id
WHERE grades.student_id = (SELECT id FROM students WHERE name = 'Alice Smith');