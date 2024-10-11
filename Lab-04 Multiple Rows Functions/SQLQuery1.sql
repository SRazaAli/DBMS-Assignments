/* For Student db */
select * from Teacher
select Job,max(BasicSalary) as 'MaxSalary' from Teacher group by Job
select Job,sum(BasicSalary) as 'SumOfBasicSalary',avg(BasicSalary) as 'AVGBasicSalary' from Teacher group by Job
select count(*) as 'NoHouseRent' from Teacher where HouseRent is null
select Job,max(BasicSalary) as 'MaxSalary' from Teacher group by Job having max(BasicSalary)>230000 order by 'MaxSalary' desc
select Job,count(*) as NoOfEmployees from Teacher where Job like 'J. Assist Prof' group by Job 
select TeacherName,BasicSalary,format(TeacherDOJ,'mmm-dd-yyyy') as NewTeacherDOJ from Teacher where TeacherDOJ < '1984-01-01' group by TeacherName,BasicSalary,TeacherDOJ


/* For Employee db */
select * from emp
select Job,avg(sal + isnull(comm,0)) as 'AVGSalary' from emp group by Job having avg(sal + isnull(comm,0))>1400 
select Job as 'JobTitle',count(*) as 'NumberOfEmp', round(avg(sal),3) as 'AvgSalary' from emp group by job
