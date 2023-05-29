SELECT Name, Grade, Marks 
FROM Students 
LEFT JOIN Grades 
ON Students.Marks >= Grades.Min_Mark 
    and Students.Marks <= Grades.Max_Mark
WHERE Grade >= 8 
ORDER BY Grade DESC, Name;

SELECT NULL, Grade, Marks 
FROM Students 
LEFT JOIN Grades 
ON Students.Marks >= Grades.Min_Mark 
    and Students.Marks <= Grades.Max_Mark

WHERE Grade < 8
order by Grade DESC, Marks;


/*Another Solution*/

/*
SELECT CASE WHEN Grade >= 8 THEN Name ELSE NULL END, Grade, Marks 
FROM Students 
LEFT JOIN Grades 
ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark
ORDER BY Grade DESC, Name, Marks;
*/

