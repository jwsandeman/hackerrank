-- 3 columns - name, grade, mark
-- if grade < 8 name = null
-- student marks must be between min marks and max marks in grades table
-- order by grade decending and name ascending


SELECT CASE WHEN g.Grade > 7 THEN s.Name ELSE 'NULL' END, g.Grade, s.Marks
FROM Students s
CROSS JOIN Grades g WHERE s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
ORDER BY g.Grade DESC, s.Name ASC;