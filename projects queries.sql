-- Q1
-- to get all students results
select s.student_id, concat(s.first_name ,' ', s.last_name) as 'student name' , c.course_name , se.score
from students s
join students_exams se on s.student_id = se.student_id
join exams e on e.exam_id = se.exam_id
join courses c on c.course_id = e.course_id ;
-- to get specific student resullt uncomment where clause 
-- where s.student_id = 1000;

----------------------------------
-- Q2
-- change department_id in where condition to see courses evaluation and teacher evaluation in that department
select c.course_id , c.course_name , sc.course_evaluation , spe.prof_id , spe.course_id , spe.evaluation as professor_evaluation, d.department_name
from courses c
join departments d on d.department_id = c.supervice_department
join students_courses sc on c.course_id = sc.course_id
join professors_departments pd on pd.department_id = d.department_id
join student_professor_evaluation spe on spe.prof_id = pd.prof_id
where d.department_id = 6
order by c.course_id;

----------------------------------
-- Q3
-- change course number in the where query to see top 10 scors in course
select s.student_id , concat(s.first_name ,' ', s.last_name) as 'student name' , c.course_name ,se.score
from students s
join students_exams se on se.student_id = s.student_id
join exams e on e.exam_id = se.exam_id
join courses c on c.course_id = e.course_id
where e.course_id = 4
order by se.score desc
limit 10;

---------------------------------
-- Q4
-- change in the where condition to see other courses top teacher evaluation
select  spe.prof_id,  concat(p.first_name ,' ', p.last_name) as professorName , pc.course_id , max(spe.evaluation) as maxEvaluation
from student_professor_evaluation spe
join professors_courses pc on spe.prof_id = pc.prof_id and spe.course_id = pc.course_id
join professors p on p.prof_id = pc.prof_id
where spe.course_id = 2
group by spe.prof_id,pc.course_id ,professorName
order by maxEvaluation desc
limit 1;





