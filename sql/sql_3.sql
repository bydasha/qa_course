-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees.employee_name, salary.monthly_salary  
	from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.
select employees.employee_name
	from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
	where salary.monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select salary.monthly_salary, employee_salary.employee_id 
	from salary
left join employee_salary on salary.id = employee_salary.salary_id
	where employee_salary.employee_id is null;

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select salary.monthly_salary, employee_salary.employee_id 
	from salary
left join employee_salary on salary.id = employee_salary.salary_id
	where employee_salary.employee_id is null and salary.monthly_salary < 2000;

-- 5. Найти всех работников кому не начислена ЗП.
select employees.employee_name, employee_salary.salary_id
	from employees
left join employee_salary on employees.id = employee_salary.employee_id
	where employee_salary.salary_id is null;

-- 6. Вывести всех работников с названиями их должности.
select employees.employee_name, roles.role_name 
	from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id;

-- 7. Вывести имена и должность только Java разработчиков.
select employees.employee_name, roles.role_name 
	from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%Java%' and roles.role_name not like '%JavaScript%';

-- 8. Вывести имена и должность только Python разработчиков.
select employees.employee_name, roles.role_name 
	from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%Python%';

-- 9. Вывести имена и должность всех QA инженеров.
select employees.employee_name, roles.role_name 
	from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%QA%';

-- 10. Вывести имена и должность ручных QA инженеров.
select employees.employee_name, roles.role_name 
	from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%Manual QA%';

-- 11. Вывести имена и должность автоматизаторов QA
select employees.employee_name, roles.role_name 
	from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%Automation QA%';

-- 12. Вывести имена и зарплаты Junior специалистов
select employees.employee_name, salary.monthly_salary 
	from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов
select employees.employee_name, salary.monthly_salary
	from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов
select employees.employee_name, salary.monthly_salary
	from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков
select salary.monthly_salary
	from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%Java%'and roles.role_name not like '%JavaScript%';

-- 16. Вывести зарплаты Python разработчиков
select salary.monthly_salary
	from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%Python%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков
select employees.employee_name, salary.monthly_salary
	from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%Junior Python%';

-- 18. Вывести имена и зарплаты Middle JS разработчиков
select employees.employee_name, salary.monthly_salary
	from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%Middle JavaScript%';

-- 19. Вывести имена и зарплаты Senior Java разработчиков
select employees.employee_name, salary.monthly_salary
	from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%Senior Java%' and roles.role_name not like '%JavaScript%';

-- 20. Вывести зарплаты Junior QA инженеров
select monthly_salary
	from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_salary.employee_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where role_name like '%Junior QA%';

-- 21. Вывести среднюю зарплату всех Junior специалистов
select avg(salary.monthly_salary) as average_junior_salary
	from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_salary.employee_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%Junior%';

-- 22. Вывести сумму зарплат JS разработчиков
select sum(salary.monthly_salary) as sum_js_salary
	from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_salary.employee_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%JavaScript%';

-- 23. Вывести минимальную ЗП QA инженеров
select min(salary.monthly_salary) as min_qa_salary
	from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_salary.employee_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%QA%';

-- 24. Вывести максимальную ЗП QA инженеров
select max(salary.monthly_salary) as max_qa_salary
	from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_salary.employee_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%QA%';

-- 25. Вывести количество QA инженеров
select count(employees.id) as count_qa_engineers
	from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%QA%';

-- 26. Вывести количество Middle специалистов.
select count(employees.id) as count_middle_engineers
	from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%Middle%';

-- 27. Вывести количество разработчиков
select count(employees.id) as count_developer_engineers
	from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%developer%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(salary.monthly_salary) as sum_developer_salary
	from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_salary.employee_id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
	where roles.role_name like '%developer%';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employees.employee_name, roles.role_name, salary.monthly_salary 
	from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	order by salary.monthly_salary asc;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employees.employee_name, roles.role_name, salary.monthly_salary 
	from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where monthly_salary between 1700 and 2300
	order by salary.monthly_salary asc;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employees.employee_name, roles.role_name, salary.monthly_salary 
	from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where monthly_salary < 2300
	order by salary.monthly_salary asc;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employees.employee_name, roles.role_name, salary.monthly_salary 
	from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
	where monthly_salary in ('1100','1500','2000')
	order by salary.monthly_salary asc;
