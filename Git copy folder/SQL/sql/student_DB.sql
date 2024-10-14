--create database student_DB;
use student_DB;

CREATE TABLE students(
student_id INT IDENTITY(2323, 3) PRIMARY KEY,
First_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
gender VARCHAR(50),
);


INSERT INTO students(first_name, last_name, gender) VALUES('tj', 'adams', 'male');
INSERT INTO students(first_name, last_name) VALUES('christine', 'adams');
INSERT INTO students(first_name, last_name, gender) VALUES('paul', 'fischer', 'male');
INSERT INTO students(first_name, last_name, gender) VALUES('abby', 'badmus', 'female');
INSERT INTO students(first_name, last_name) VALUES('maria', 'jones');
INSERT INTO students(first_name, last_name, gender) VALUES('johnson', 'banky', 'male');
INSERT INTO students(first_name, last_name, gender) VALUES('max', 'brent', 'male');
INSERT INTO students(first_name, last_name, gender) VALUES('phillip', 'anderson', 'male');
INSERT INTO students(first_name, last_name, gender) VALUES('abigael', 'anderson', 'female');
INSERT INTO students(first_name, last_name) VALUES('christine', 'jones');
INSERT INTO students(first_name, last_name) VALUES('alice', 'cooper');
INSERT INTO students(first_name, last_name, gender) VALUES('pooja', 'singh', 'female');
INSERT INTO students(first_name, last_name, gender) VALUES('joanne', 'price', 'female');
INSERT INTO students(first_name, last_name, gender) VALUES('romeo', 'ceasar', 'male');
INSERT INTO students(first_name, last_name, gender) VALUES('rj', 'lara', 'male');
INSERT INTO students(first_name, last_name, gender) VALUES('melinda', 'smart', 'female');
INSERT INTO students(first_name, last_name) VALUES('jacob', 'sylvester');
INSERT INTO students(first_name, last_name, gender) VALUES('melissa', 'andrew', 'female');
INSERT INTO students(first_name, last_name, gender) VALUES('kevin', 'patterson', 'male');
INSERT INTO students(first_name, last_name, gender) VALUES('james', 'durant', 'male');
INSERT INTO students(first_name, last_name, gender) VALUES('george', 'drogba', 'male');
INSERT INTO students(first_name, last_name, gender) VALUES('kayla', 'martins', 'female');
INSERT INTO students(first_name, last_name) VALUES('tobias', 'sylvester');
INSERT INTO students(first_name, last_name, gender) VALUES('paula', 'schmidts', 'female');
INSERT INTO students(first_name, last_name, gender) VALUES('fatima', 'abubarka', 'female');


CREATE TABLE courses(
course_id VARCHAR(50) PRIMARY KEY,
course_name VARCHAR(50),
semester VARCHAR(50)
);


INSERT INTO courses(course_id, course_name, semester) VALUES('BIO101', 'introduction to biology', 'fall'); 
INSERT INTO courses(course_id, course_name, semester) VALUES('CSC220', 'data analysis', 'spring'); 
INSERT INTO courses(course_id, course_name, semester) VALUES('DBA305', 'database administration', 'spring');
INSERT INTO courses(course_id, course_name, semester) VALUES('MTH230', 'vectors', 'fall');
INSERT INTO courses(course_id, course_name, semester) VALUES('ECN433', 'globalization', 'fall');
INSERT INTO courses(course_id, course_name, semester) VALUES('CSC098', 'data visualization', 'summer');
INSERT INTO courses(course_id, course_name, semester) VALUES('ECN322', 'cost benefit analysis', 'summer');


CREATE TABLE grades(
grade INT,
student_id INT,
course_id  VARCHAR(50),
FOREIGN KEY(student_id) REFERENCES students(student_id),
FOREIGN KEY(course_id) REFERENCES courses(course_id),
PRIMARY KEY(student_id, course_id)
);



INSERT INTO grades(grade, student_id, course_id) VALUES(85, 2395, 'CSC098');
INSERT INTO grades(grade, student_id, course_id) VALUES(90, 2395, 'DBA305');
INSERT INTO grades(grade, student_id, course_id) VALUES(95, 2395, 'ECN433');
INSERT INTO grades(grade, student_id, course_id) VALUES(90, 2395, 'MTH230');
INSERT INTO grades(grade, student_id, course_id) VALUES(87, 2392, 'ECN433');
INSERT INTO grades(grade, student_id, course_id) VALUES(90, 2389, 'CSC098');
INSERT INTO grades(grade, student_id, course_id) VALUES(80, 2389, 'MTH230');
INSERT INTO grades(grade, student_id, course_id) VALUES(87, 2383, 'MTH230');
INSERT INTO grades(grade, student_id, course_id) VALUES(90, 2377, 'DBA305');
INSERT INTO grades(grade, student_id, course_id) VALUES(92, 2374, 'BIO101');
INSERT INTO grades(grade, student_id, course_id) VALUES(90, 2374, 'ECN322'); 
INSERT INTO grades(grade, student_id, course_id) VALUES(85, 2323, 'CSC098');
INSERT INTO grades(grade, student_id, course_id) VALUES(90, 2323, 'DBA305');
INSERT INTO grades(grade, student_id, course_id) VALUES(90, 2329, 'CSC098');
INSERT INTO grades(grade, student_id, course_id) VALUES(90, 2329, 'DBA305');
INSERT INTO grades(grade, student_id, course_id) VALUES(92, 2329, 'MTH230');
INSERT INTO grades(grade, student_id, course_id) VALUES(95, 2329, 'ECN322');
INSERT INTO grades(grade, student_id, course_id) VALUES(94, 2332, 'MTH230');
INSERT INTO grades(grade, student_id, course_id) VALUES(93, 2332, 'DBA305');
INSERT INTO grades(grade, student_id, course_id) VALUES(80, 2335, 'DBA305');
INSERT INTO grades(grade, student_id, course_id) VALUES(90, 2338, 'ECN322');
INSERT INTO grades(grade, student_id, course_id) VALUES(85, 2338, 'MTH230');
INSERT INTO grades(grade, student_id, course_id) VALUES(90, 2338, 'CSC220');
INSERT INTO grades(grade, student_id, course_id) VALUES(98, 2338, 'CSC098');
INSERT INTO grades(grade, student_id, course_id) VALUES(87, 2341, 'ECN433');
INSERT INTO grades(grade, student_id, course_id) VALUES(80, 2347, 'ECN433');
INSERT INTO grades(grade, student_id, course_id) VALUES(82, 2347, 'MTH230');
INSERT INTO grades(grade, student_id, course_id) VALUES(90, 2350, 'MTH230');
INSERT INTO grades(grade, student_id, course_id) VALUES(95, 2353, 'BIO101');
INSERT INTO grades(grade, student_id, course_id) VALUES(100, 2359,'ECN433');
INSERT INTO grades(grade, student_id, course_id) VALUES(87, 2356, 'DBA305');
INSERT INTO grades(grade, student_id, course_id) VALUES(80, 2362, 'CSC098');
INSERT INTO grades(grade, student_id, course_id) VALUES(96, 2365, 'CSC098');
INSERT INTO grades(grade, student_id, course_id) VALUES(90, 2365, 'CSC220');
INSERT INTO grades(grade, student_id, course_id) VALUES(90, 2368, 'DBA305');
INSERT INTO grades(grade, student_id, course_id) VALUES(98, 2368, 'ECN322');
INSERT INTO grades(grade, student_id, course_id) VALUES(90, 2368, 'ECN433');
INSERT INTO grades(grade, student_id, course_id) VALUES(98, 2368, 'CSC220');

Select * from students;

--Select * from courses;

Select * from grades ;

select COUNT(student_id) ,gender from students  group by gender;

select s.first_name, s.last_name, g.grade from students as s
INNER JOIN
 grades as g ON
s.student_id=g.student_id order by first_name, last_name;

select c.course_name,  g.grade from courses as c
INNER JOIN
 grades as g ON
c.course_id=g.course_id order by course_name;

select c.course_name,  COUNT(g.grade) as'no.of.reg' from courses as c
INNER JOIN
 grades as g ON
c.course_id=g.course_id 
group by c.course_name
order by 'no.of.reg';

select c.course_name,  COUNT(g.grade) as'no.of.reg' from courses as c
LEFT JOIN
 grades as g ON
c.course_id=g.course_id 
group by c.course_name
order by 'no.of.reg';

select c.course_name,  COUNT(g.grade) as'no.of.reg' from courses as c
RIGHT JOIN
 grades as g ON
c.course_id=g.course_id 
group by c.course_name
order by 'no.of.reg';


select s.student_id, s.first_name, g.grade from students as s
INNER JOIN
 grades as g ON
s.student_id=g.student_id 
where grade is null
order by first_name;

select s.student_id, s.first_name, g.grade from grades as g
LEFT JOIN
 students as s ON
s.student_id=g.student_id
where grade is null
order by first_name;
                   /*  left join that takes from the initial assigning with join statement table
				   "from students as s
                   LEFT JOIN
                   grades as g ON"   */
select s.student_id, s.first_name, g.grade from students as s
LEFT JOIN
 grades as g ON
s.student_id=g.student_id
where grade is null
order by first_name;

/*select s.student_id, s.first_name, g.grade from students as s
RIGHT JOIN
 grades as g ON
s.student_id=g.student_id 
where grade is null
order by first_name;*/

select s.student_id, s.first_name, g.grade from students as s
LEFT JOIN
 grades as g ON
s.student_id=g.student_id
where grade is not null
order by first_name;

Select * from students;
Select * from courses;
Select * from grades ;


select s.first_name, s.last_name, c.course_name, g.grade from students as s 
INNER JOIN 
grades as g ON s.student_id= g.student_id
INNER JOIN
courses as c ON g.course_id=c.course_id
--where grade is not null
ORDER BY grade DESC;


select s.first_name, s.last_name, AVG(g.grade) as 'average grade' from students as s
INNER JOIN 
grades as g
ON s.student_id=g.student_id
group by s.First_name, s.last_name
order by 'average grade';

Select * from students;
Select * from courses;
Select * from grades ;






                                --Analysis of table

select CONCAT(UPPER(s.last_name),' , ',s.first_name) as 'Full name', COUNT(grade) as 'no of courses', 
ISNULL(MIN(g.grade),0) as 'minimum grade',
ISNULL(MAX(g.grade),0) as 'maximum grade', ISNULL(AVG(g.grade),0) as 'average grade',
CASE
when AVG(g.grade)>=90 then 'A'
when AVG(g.grade)>=80 then 'B'
when AVG(g.grade)>=70 then 'C'
else 'F'
END as 'Letter Grade',
CASE
when AVG(g.grade)>0 then 'enrolled'
else 'not enrolled'
END as 'Enrollment'
from students as s 
LEFT JOIN grades as g 
ON s.student_id=g.student_id
--LEFT JOIN courses as c
--ON c.course_id=g.course_id 
group by s.first_name, last_name 
order by 'average grade' DESC;

