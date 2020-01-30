SELECT COUNT(*) "Job ID = AD_PRES" FROM asma_hr.employees where job_id = 'AD_PRES'

Select sum(max_salary) "Total of max salaries" from asma_hr.jobs

select avg (distinct min_salary) "Average Job Minimum Salary"from asma_hr.jobs

select min(min_salary) "Lowest Job Salary" from asma_hr.jobs

select max(max_salary) "Highest Job Salary" from asma_hr.jobs

select department_id "Department", count(*)"Department Count" from asma_hr.employeesgroup by department_id