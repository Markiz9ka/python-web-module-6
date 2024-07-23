SELECT students.name, grades.grade
FROM students
JOIN grades ON students.id = grades.student_id
WHERE students.group_id = (SELECT id FROM groups WHERE name = 'Group A')
AND grades.subject_id = (SELECT id FROM subjects WHERE name = 'Math');