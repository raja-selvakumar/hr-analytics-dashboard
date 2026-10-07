SELECT * FROM public.hr_p1
ORDER BY "EmpID" ASC ;

--1.Total employee
select count(*) As total_employees from hr_p1;

--2.attrition count
select count(*) from hr_p1 where "Attrition" ='Yes';

--3.attrition rate(%)
select ROUND(count(case when "Attrition"='Yes' then 1 end)*100.0 /count(*),2) as attrition_rate from hr_p1;

--4.department-wise attrition
select "Department",count(*) as employees_left from hr_p1 where "Attrition"='Yes' group by "Department" order by employees_left DESC ;

--5.gender distribution
select "Gender", count(*) as employee_count from hr_p1 group by "Gender";

--6.average salary by department
select "Department",round(avg("MonthlyIncome"),2) as avg_salary from hr_p1 group by "Department";

--7.job satisfaction by department
select "Department", round(avg("JobSatisfaction"),2)as satisfaction from hr_p1 group by "Department";

--8.overtime vs attrition
select "OverTime",count(*) as employees_left from hr_p1 where "Attrition"='Yes' group by "OverTime";