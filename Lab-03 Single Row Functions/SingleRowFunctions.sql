select * from Teacher
select TeacherName,Job, upper(TeacherName) as TeacherNameUpper, upper(Job) as JobUpper from Teacher
select TeacherName, datediff(year,TeacherDOJ,getdate()) as yearServed from Teacher
select TeacherName,Job,TeacherDOJ,format(TeacherDOJ,'mm-dd-yyyy') as TeacherDOJFormated from Teacher where TeacherDOB < '01-31-2004'
select TeacherName,HouseRent,isnull(cast(HouseRent as varchar),'not given') as HouseRentReplaced from Teacher
select TeacherName,BasicSalary,HouseRent,(BasicSalary+isnull(HouseRent,0)) as TotalSalary from Teacher

select TeacherName,Job,BasicSalary,(BasicSalary+isnull(HouseRent,0)) as TotalSalary,
case
	when Job = 'S. Lecturer' or Job = 'J. Lecturer' then BasicSalary*0.20 
	when Job = 'J. Assist Prof' or Job =  'S. Assist Prof' then BasicSalary*0.25
	when Job = 'J. Associate Prof' or Job = 'Sr. Associate Prof' then BasicSalary*0.30
	else NULL
end as EmpBonus
from Teacher

select * from std
select StdName,replace(StdName,'a','sh') as StdNameReplaced from Std
select StdName,StdPhone, concat(substring(StdPhone,1,3),substring(StdName,len(StdName)-2,3)) as StdNewName from Std