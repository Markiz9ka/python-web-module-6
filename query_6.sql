SELECT students.name
FROM students
WHERE group_id = (SELECT id FROM groups WHERE name = 'Group A');