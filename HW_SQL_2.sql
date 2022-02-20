--SQL_DDL
--Первая часть.
--
--Таблица employees
--
--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

--Наполнить таблицу employee 70 строками.

insert into employees (employee_name)
	values ('Vanya'),
		   ('Grisha');

insert into employees (employee_name)
	values ('Nastya'),
		   ('Fedya'),
		   ('Jackson'),
		   ('Shepherd'),
		   ('Kaiden'),
		   ('Osvaldo'),
		   ('Peter'),
		   ('Nastya'),
		   ('Jackson'),
			('Shepherd'),
			('Kaiden'),
			('Osvaldo'),
			('Yukio'),
			('Easton'),
			('Ulysses'),
			('Ulises'),
			('Kayden'),
			('Edison'),
			('Zac'),
			('Edgar'),
			('Arthur'),
			('Marshall'),
			('Dax');

insert into employees (employee_name)
	values ('Nastya'),
		   ('Fedya'),
		   ('Jackson'),
		   ('Shepherd'),
		   ('Kaiden'),
		   ('Osvaldo'),
		   ('Peter'),
		   ('Nastya'),
		   ('Jackson'),
			('Shepherd'),
			('Kaiden'),
			('Osvaldo'),
			('Yukio'),
			('Easton'),
			('Ulysses'),
			('Ulises'),
			('Kayden'),
			('Edison'),
			('Zac'),
			('Edgar'),
			('Nastya'),
		   ('Fedya'),
		   ('Jackson'),
		   ('Shepherd'),
		   ('Kaiden'),
		   ('Osvaldo'),
		   ('Peter'),
		   ('Nastya'),
		   ('Jackson'),
			('Shepherd'),
			('Kaiden'),
			('Osvaldo'),
			('Yukio'),
			('Easton'),
			('Ulysses'),
			('Ulises'),
			('Kayden'),
			('Edison'),
			('Zac'),
			('Edgar'),
			('Yukio'),
			('Easton'),
			('Ulysses'),
			('Ulises'),
			('Kayden');
		
select * from employees

--Таблица salary
--
--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null

create table salary (
	id serial primary key,
	monthly_salary int not null
);

--Наполнить таблицу salary строками:
--- 1000
--- 1100
--- 1200
--- 1300
--- 1400
--- 1500
--- 1600
--- 1700
--- 1800
--- 1900
--- 2000
--- 2100
--- 2200
--- 2300
--- 2400
--- 2500

insert into salary (monthly_salary)
	values (1000),
		   (1100),
		   (1200),
		   (1300),
		   (1400),
		   (1500),
		   (1600),
		   (1700),
		   (1800),
		   (1900),
		   (2000),
		   (2100),
		   (2200),
		   (2300),
		   (2400),
		   (2500);

select * from salary

--Таблица employee_salary
--
--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null

create table employee_salary (
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (salary_id)
		references salary (id)	
)

--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id, salary_id)
	  values (1, 16),
			 (2, 15),
			 (3, 14),
			 (4, 13),
			 (5, 12),
			 (6, 11),
			 (7, 10),
			 (8, 9),
			 (9, 8),
			 (10, 7),
			 (11, 1),
			 (12, 2),
			 (13, 3),
			 (14, 4),
			 (15, 5),
			 (16, 6),
			 (17, 7),
			 (18, 8),
			 (19, 9),
			 (20, 10),
			 (21, 11),
			 (22, 12),
			 (23, 13),
			 (24, 14),
			 (25, 15),
			 (26, 16),
			 (27, 1),
			 (28, 2),
			 (29, 3),
			 (30, 4);
--			 (71, 1),
--			 (72, 2),
--			 (73, 3),
--			 (74, 4),
--			 (75, 5),
--			 (76, 6),
--			 (77, 7),
--			 (78, 8),
--			 (79, 9),
--			 (70, 10);
	
	
select * from employee_salary 

--Таблица roles
--
--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique

create table roles (
	id serial primary key,
	role_name int unique not null 
)

--Поменять тип столба role_name с int на varchar(30)

alter table roles 
alter column role_name type varchar(30) using role_name::integer;

--Наполнить таблицу roles 20 строками:

insert into roles (role_name)
	values ('Junior Python developer'),
		   ('Middle Python developer'),
		   ('Senior Python developer'),
		   ('Junior Java developer'),
		   ('Middle Java developer'),
		   ('Senior Java developer'),
		   ('Junior JavaScript developer'),
		   ('Middle JavaScript developer'),
		   ('Senior JavaScript developer'),
		   ('Junior Manual QA engineer'),
		   ('Middle Manual QA engineer'),
		   ('Senior Manual QA engineer'),
		   ('Project Manager'),
		   ('Designer'),
		   ('HR'),
		   ('CEO'),
		   ('Sales manager'),
		   ('Junior Automation QA engineer'),
		   ('Middle Automation QA engineer'),
		   ('Senior Automation QA engineer');
	
select * from roles 

--Таблица roles_employee
--
--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

		  
create table roles_employee (
	id serial primary key,
	employee_id int unique not null ,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
)

select * from roles_employee 

--Наполнить таблицу roles_employee 40 строками:

insert into roles_employee (employee_id, role_id)
	values (1, 1),
			(2, 2),
			(3, 3),
			(4, 4),
			(5, 5),
			(6, 6),
			(7, 7),
			(8, 8),
			(9, 9),
			(10, 10),
			(11, 11),
			(12, 12),
			(13, 13),
			(14, 14),
			(15, 15),
			(16, 16),
			(17, 17),
			(18, 18),
			(19, 19),
			(20, 20),
			(21, 20),
			(22, 19),
			(23, 18),
			(24, 17),
			(25, 16),
			(26, 15),
			(27, 14),
			(28, 13),
			(29, 12),
			(30, 11),
			(31, 10),
			(32, 9),
			(33, 8),
			(34, 7),
			(35, 6),
			(36, 5),
			(37, 4),
			(38, 3),
			(39, 2),
			(40, 1);
		
--заменили salary с id 16 на 2
update employee_salary 
	set salary_id=2
	where salary_id=16
	
update employee_salary 
	set salary_id=8
	where salary_id=3
	
select * from employee_salary 