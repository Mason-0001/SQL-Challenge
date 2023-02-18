-- Create all tables
create table titles
(title_id VARCHAR(30) PRIMARY KEY NOT NULL,
title VARCHAR(30) NOT NULL
);

create table employees
(emp_no INT PRIMARY KEY NOT NULL,
emp_title_id VARCHAR(30) NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
sex VARCHAR(6),
hire_date DATE,
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

create table departments
(dept_no varchar(5) PRIMARY KEY NOT NULL,
dept_name varchar(30)
);

create table dep_emp
(emp_no INT NOT NULL,
dept_no varchar(5) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

create table dept_manager
(dept_no VARCHAR(5) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
emp_no INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

create table salaries
(emp_no INT NOT NULL,
salary INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- test to make sure tables were made/imported properly

select * from dep_emp
select * from departments
select * from dept_manager
select * from employees
select * from salaries
select * from titles

