-- 1. Создать таблицу employees id. serial,  primary key, employee_name. Varchar(50), not null
create table employees (
  	id serial primary key,
  	employee_name varchar(50) not null
)
-- 2. Наполнить таблицу employee 70 строками.
insert into employees(employee_name)
values 	('Gerald Blair'),
	   	('Jessica Mitchell'),
		('Ida Powell'),
		('Lester Jones'),
		('Cathy Adams'),
		('Maria Hudson'),
		('Douglas Rodgers'),
		('Steven Smith'),
		('Thomas Grant'),
		('Nora Jensen'),
		('Jennifer Rodriguez'),
		('Leon Floyd'),
		('Juanita Arnold'),
		('Jeffery Williamson'),
		('Mark Norton'),
		('Gordon Graham'),
		('Teresa Carter'),
		('Sergio Thompson'),
		('Carol Foster'),
		('Leonard Rodriguez'),
		('Frank Myers'),
		('Becky Smith'),
		('Cynthia Murray'),
		('James Miller'),
		('Claudia Fleming'),
		('Virginia Kelly'),
		('John Ferguson'),
		('Jamie Massey'),
		('Charles Evans'),
		('Edward Jordan'),
		('Bill Jenkins'),
		('Carol Wise'),
		('Dwight Williams'),
		('Mary Hernandez'),
		('Kelly Carroll'),
		('Eugene Allen'),
		('Jessica Moore'),
		('Nancy Fisher'),
		('Anne White'),
		('Chad Bell'),
		('Tina Howard'),
		('Elizabeth Sullivan'),
		('Ashley Lopez'),
		('Grace Snyder'),
		('Matthew Hernandez'),
		('Erin Robbins'),
		('Amanda Williamson'),
		('Maria Rodriguez'),
		('Ricky Russell'),
		('Mary Johnson'),
		('Richard Jefferson'),
		('Karl Payne'),
		('Regina Alvarez'),
		('Mary Kelley'),
		('Tiffany Wheeler'),
		('Jose Cook'),
		('John Henderson'),
		('Jason Wells'),
		('Stephen Reed'),
		('Joanne Williams'),
		('Melvin Gross'),
		('Kyle Hill'),
		('Betty Smith'),
		('Nicole Campbell'),
		('Karen Lopez'),
		('Thomas Manning'),
		('Roberto Smith'),
		('Janice Howell'),
		('Karen Johnson'),
		('Maria Stone');

select * from employees;

-- 3. Создать таблицу salary - id. Serial  primary key, - monthly_salary. Int, not null
create table salary (
   	id serial primary key,
   	monthly_salary int not null
)

select * from salary;

-- 4. Наполнить таблицу salary 15 строками.
insert into salary(monthly_salary)
values 	(1000),
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
	
-- 5. Создать таблицу employee_salary - id. Serial  primary key, - employee_id. Int, not null, unique - salary_id. Int, not null
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
)

select * from employee_salary;

-- 6. Наполнить таблицу employee_salary 40 строками: - в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(employee_id, salary_id)
values 	(3,7),
		(1,4),
		(5,9),
		(40,13),
		(23,4),
		(11,2),
		(52,10),
		(15,13),
		(26,4),
		(16,1),
	    (33,7),
	    (45,5), 
	    (63,1), 
	    (32,8), 
	    (31,16), 
	    (27,11), 
	    (8,3), 
	    (44,6), 
	    (65,15), 
	    (28,13), 
	    (55,12), 
	    (39,10), 
	    (50,16), 
	    (51,1), 
		(2,4), 
		(69,9), 
		(22,11), 
		(7,7), 
		(56,6), 
		(36,9), 
		(71,1), 
		(72,10),
		(73,4), 
		(74,11),
		(75,6),
		(76,16),
		(77,13),
		(78,5),
		(79,9),
		(80,8);
		
-- 7. Создать таблицу roles - id. Serial  primary key, - role_name. int, not null, unique
create table roles (
	id serial  primary key,
	role_name int not null unique
)

select * from roles;

-- 8. Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30);

-- 9. Наполнить таблицу roles 20 строками.
insert into roles(role_name)
values	('Junior Python developer'),
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

-- 10. Создать таблицу roles_employee - id. Serial  primary key, - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id) - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
		foreign key(employee_id)
		references employees(id),
	role_id int not null,
		foreign key(role_id)
		references roles(id)
);

select * from roles_employee;

-- 11. Наполнить таблицу roles_employee 40 строками
insert into roles_employee (employee_id, role_id)
values 	(7,2),
		(20,4),
		(3,9),
		(5,13),
		(23,4),
		(11,2),
		(10,9),
		(22,13),
		(21,3),
		(34,4),
		(6,7),
		(8,7), 
		(9,3), 
		(55,8),
		(64,3),
		(32,20),
		(12,7),
		(46,19),
		(52,4),
		(1,11),
		(56,16),
		(4,1),
		(13,13),
		(67,9),
		(57,15),
		(53,7),
		(43,20),
		(30,11),
		(19,19),
		(49,8),
		(48,12),
		(33,4),
		(29,10),
		(44,14),
		(37,15),
		(27,3),
		(17,5),
		(18,11),
		(65,6),
		(40,20);