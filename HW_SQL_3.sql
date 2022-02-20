--SQL HomeWork 3. Joins
--
--���� ��� ������-�� ����� ���� ������� �������������� �������, ��������� � �������, �� ������� )
--
--
-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select employees.id, employee_name ,monthly_salary from employee_salary 
	join employees on employee_id = employees.id  
	join salary on salary.id = salary_id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_id, employee_name, monthly_salary from employee_salary
	join employees on employee_id = employees.id 
	join salary on salary_id = salary.id
	where monthly_salary < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select salary.id, monthly_salary from salary
	left join employee_salary on salary_id = salary.id
	where employee_id is null;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select salary.id, monthly_salary from salary 
	left join employee_salary on salary_id = salary.id 
	where employee_id is null and salary.monthly_salary < 2000;

-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name, employee_salary.salary_id from employees
	left join employee_salary on employee_id = employees.id
	where salary_id is null;

-- 6. ������� ���� ���������� � ���������� �� ���������.
select * from roles_employee

select employees.id, employee_name, role_name from roles_employee 
	join employees on employee_id = employees.id 
	join roles on role_id = roles.id 

-- 7. ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name from roles_employee
	join employees on employee_id = employees.id 
	join roles on role_id = roles.id 
	where role_name like '%Java%'
	
-- 8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name from roles_employee
	join employees on employees.id = employee_id 
	join roles on roles.id = role_id 
	where role_name like '%Python developer%'
	
-- 9. ������� ����� � ��������� ���� QA ���������.
select employee_name, role_name from roles_employee
	join employees on employee_id = employees.id 
	join roles on roles.id = role_id 
	where role_name like '%QA%'

-- 10. ������� ����� � ��������� ������ QA ���������.
select employee_name, role_name from roles_employee
	join employees on employees.id = employee_id 
	join roles on roles.id = role_id
	where role_name like '%Manual QA%'
	
-- 11. ������� ����� � ��������� ��������������� QA
select employee_name, role_name from roles_employee
	join employees on employees.id = employee_id 
	join roles on roles.id = role_id 
	where role_name like '%Automation QA%'
	
-- 12. ������� ����� � �������� Junior ������������
select employee_name, role_name, monthly_salary from employee_salary 
	join employees on employee_salary.employee_id = employees.id  
	join salary on employee_salary.salary_id = salary.id
	join roles_employee on roles_employee.employee_id  = employees.id 
	join roles on roles_employee.role_id = roles.id 
	where role_name  like '%Junior%';

-- 13. ������� ����� � �������� Middle ������������
select employee_name, role_name, monthly_salary from employee_salary
	join employees on employees.id = employee_salary.id 
	join salary on salary.id = employee_salary.salary_id 
	join roles_employee on roles_employee.employee_id = employees.id 
	join roles on roles.id = roles_employee.role_id 
	where role_name like '%Middle%'
	
-- 14. ������� ����� � �������� Senior ������������
select employee_name, role_name, monthly_salary from employee_salary
	join employees on employees.id = employee_salary.id 
	join salary on salary.id = employee_salary.salary_id 
	join roles_employee on roles_employee.employee_id = employees.id 
	join roles on roles.id = roles_employee.role_id 
	where role_name like '%Senior%'
	
-- 15. ������� �������� Java �������������
select monthly_salary from employee_salary
	join employees on employees.id = employee_salary.id 
	join salary on salary.id = employee_salary.salary_id 
	join roles_employee on roles_employee.employee_id = employees.id 
	join roles on roles.id = roles_employee.role_id 
	where role_name like '%Java developer%'
	
-- 16. ������� �������� Python �������������
select monthly_salary from employee_salary
	join employees on employees.id = employee_salary.id 
	join salary on salary.id = employee_salary.salary_id 
	join roles_employee on roles_employee.employee_id = employees.id 
	join roles on roles.id = roles_employee.role_id 
	where role_name like '%Python developer%'	
	
-- 17. ������� ����� � �������� Junior Python �������������
select employee_name, role_name, monthly_salary from employee_salary
	join employees on employees.id = employee_salary.id 
	join salary on salary.id = employee_salary.salary_id 
	join roles_employee on roles_employee.employee_id = employees.id 
	join roles on roles.id = roles_employee.role_id 
	where role_name like '%Junior Python%'	
	
-- 18. ������� ����� � �������� Middle JS �������������
select employee_name, role_name, monthly_salary from employee_salary
	join employees on employees.id = employee_salary.id 
	join salary on salary.id = employee_salary.salary_id 
	join roles_employee on roles_employee.employee_id = employees.id 
	join roles on roles.id = roles_employee.role_id 
	where role_name like '%Middle JavaScript%'	
	
-- 19. ������� ����� � �������� Senior Java �������������
select employee_name, role_name, monthly_salary from employee_salary
	join employees on employees.id = employee_salary.id 
	join salary on salary.id = employee_salary.salary_id 
	join roles_employee on roles_employee.employee_id = employees.id 
	join roles on roles.id = roles_employee.role_id 
	where role_name like '%Senior Java developer%'		
	
select * from roles
	where role_name like '%QA%'

-- 20. ������� �������� Junior QA ���������
select employee_name, role_name, monthly_salary from employee_salary
	join employees on employees.id = employee_salary.id 
	join salary on salary.id = employee_salary.salary_id 
	join roles_employee on roles_employee.employee_id = employees.id 
	join roles on roles.id = roles_employee.role_id 
	where roles.id in (10, 18)	
	
-- 21. ������� ������� �������� ���� Junior ������������ 
	--�. 12 ��� ��������
select AVG(monthly_salary) from employee_salary
	join employees on employees.id = employee_salary.id 
	join salary on salary.id = employee_salary.salary_id 
	join roles_employee on roles_employee.employee_id = employees.id 
	join roles on roles.id = roles_employee.role_id 
	where role_name like '%Junior%'
	
-- 22. ������� ����� ������� JS �������������
select sum(monthly_salary) from employee_salary
	join employees on employees.id = employee_salary.id 
	join salary on salary.id = employee_salary.salary_id 
	join roles_employee on roles_employee.employee_id = employees.id 
	join roles on roles.id = roles_employee.role_id 
	where role_name like '%JavaScript%'	
	
-- 23. ������� ����������� �� QA ���������
select min(monthly_salary) from employee_salary
	join employees on employees.id = employee_salary.id 
	join salary on salary.id = employee_salary.salary_id 
	join roles_employee on roles_employee.employee_id = employees.id 
	join roles on roles.id = roles_employee.role_id 
	where role_name like '%QA%'		
	
-- 24. ������� ������������ �� QA ���������
select max(monthly_salary) from employee_salary
	join employees on employees.id = employee_salary.id 
	join salary on salary.id = employee_salary.salary_id 
	join roles_employee on roles_employee.employee_id = employees.id 
	join roles on roles.id = roles_employee.role_id 
	where role_name like '%QA%'		
	
-- 25. ������� ���������� QA ���������
select count(*) from roles_employee 
	join roles on roles.id = role_id
	where role_name like '%QA%';
	
-- 26. ������� ���������� Middle ������������.
select count(*) from roles_employee
	join roles on roles.id = role_id 
	where role_name like '%Middle%'
	
-- 27. ������� ���������� �������������
select count(*) from roles_employee re 
	join roles r on r.id = re.role_id 
	where role_name like '%developer%'
	
-- 28. ������� ���� (�����) �������� �������������.
select  sum(monthly_salary) from employee_salary 
	join salary on employee_salary.salary_id = salary.id 
	join roles_employee  on roles_employee.employee_id = employee_salary.employee_id 
	join roles on roles.id =roles_employee.role_id 
	where roles.role_name like '%developer';

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary from employee_salary
	join employees on employees.id = employee_salary.id 
	join salary on salary.id = employee_salary.salary_id 
	join roles_employee on roles_employee.employee_id = employees.id 
	join roles on roles.id = roles_employee.role_id 
	order by monthly_salary;
			
-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary from employee_salary
	join employees on employees.id = employee_salary.id 
	join salary on salary.id = employee_salary.salary_id 
	join roles_employee on roles_employee.employee_id = employees.id 
	join roles on roles.id = roles_employee.role_id 
	where monthly_salary > 1700 and monthly_salary < 2300
	order by monthly_salary;

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary from employee_salary
	join employees on employees.id = employee_salary.id 
	join salary on salary.id = employee_salary.salary_id 
	join roles_employee on roles_employee.employee_id = employees.id 
	join roles on roles.id = roles_employee.role_id 
	where monthly_salary < 2300
	order by monthly_salary;

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000

select employee_name, role_name, monthly_salary from employee_salary
	join employees on employees.id = employee_salary.id 
	join salary on salary.id = employee_salary.salary_id 
	join roles_employee on roles_employee.employee_id = employees.id 
	join roles on roles.id = roles_employee.role_id 
	where (monthly_salary = 1100) or (monthly_salary = 1500) or (monthly_salary = 2000)
	order by monthly_salary;