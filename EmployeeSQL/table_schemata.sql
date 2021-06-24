DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Title;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Dept_emp;
DROP TABLE IF EXISTS Dept_manager;
DROP TABLE IF EXISTS Salaries;

CREATE TABLE Departments (
	dept_no VARCHAR(255) PRIMARY KEY,
	dept_name VARCHAR(255) NOT NULL
);

CREATE TABLE Title (
	title_id VARCHAR(255) PRIMARY KEY,
	title VARCHAR(255) NOT NULL
);

CREATE TABLE Employees (
	emp_no INT PRIMARY KEY,
	title_id VARCHAR(255) NOT NULL,
	birth_date date NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name  VARCHAR(255) NOT NULL,
	sex VARCHAR(255) NOT NULL,
	hire_date date NOT NULL,
	FOREIGN KEY (title_id) REFERENCES Title (title_id)  
);

CREATE TABLE Dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(255) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),  
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)  
);

CREATE TABLE Dept_manager (
	dept_no VARCHAR(255) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),  
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)  
);

CREATE TABLE Salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)  
);