select * from Std
select StdId,StdName,StdDOB,StdPhone,progId from Std
select * from Std where StdName like '[^mar]%'
select Stdname from std where stdname like 'a%s'
select * from Std where FirstSem between '3' and '6'

select * from Teacher
select * from Teacher where Status = 'Permanent'
select TeacherName,BasicSalary,Job from Teacher where Status != 'Visiting' and Job != 'J.Lecturer'  
select TeacherName from Teacher where TeacherName like '%sa%'
select * from teacher order by BasicSalary  desc

select distinct progId from Std

select * from Std where progId = '1'
select StdName from Std where progId = '1'

select TeacherName,Manager from teacher

select * from Course
select Coursename from Course where CreditHrsLab='1'

select teachername,basicSalary from teacher where basicSalary between '100000' and '200000'

select * from Course where CreditHrsTheory is not Null

select StdName from Std where StdName like 's%'
select StdName from Std where StdName like '%s'

select teacherName,Job from teacher where manager is null