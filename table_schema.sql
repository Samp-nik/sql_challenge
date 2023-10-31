-- Note, value lengths do not need to be defined for columns as they are defaulted to variable lengths with VARCHAR

CREATE TABLE titles(
title_id VARCHAR PRIMARY KEY NOT NULL,
title VARCHAR NOT NULL
);

CREATE TABLE employees(
emp_no INTEGER PRIMARY KEY NOT NULL,
emp_title_id VARCHAR NOT NULL,
birth_date VARCHAR NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR NOT NULL,
hire_date VARCHAR NOT NULL,
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);


CREATE TABLE salaries(
emp_no INTEGER PRIMARY KEY NOT NULL,
salary INTEGER NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE departments(
dept_no VARCHAR PRIMARY KEY NOT NULL,
dept_name VARCHAR NOT NULL
);

CREATE TABLE dept_manager(
dept_no VARCHAR NOT NULL,
emp_no INTEGER NOT NULL,
PRIMARY KEY (dept_no,emp_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_emp(
emp_no INTEGER NOT NULL,
dept_no VARCHAR NOT NULL,
PRIMARY KEY (dept_no,emp_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

