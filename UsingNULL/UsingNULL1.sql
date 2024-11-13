-- List the teachers who have NULL for their department.

SELECT name FROM teacher
WHERE dept IS NULL
