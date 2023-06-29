CREATE TABLE employee (
  sn_no INT PRIMARY KEY,
  employee_name NVARCHAR(50),
  employee_id NVARCHAR(20),
  age INT,
  sex NVARCHAR(10),
  department NVARCHAR(50),
  position NVARCHAR(50),
  salary DECIMAL(10, 2),
  dob DATE
);
select * from employee;

INSERT INTO employee (sn_no, employee_name, employee_id, age, sex, department, position, salary, dob)
VALUES
  (1, 'John Smith', 'EMP001', 32, 'Male', 'Sales', 'Manager', 5000.00, '1990-07-15'),
  (2, 'Emma Johnson', 'EMP002', 28, 'Female', 'Marketing', 'Analyst', 4000.00, '1993-05-22'),
  (3, 'James Anderson', 'EMP003', 35, 'Male', 'Finance', 'Accountant', 4500.00, '1986-11-30'),
  (4, 'Sophia Williams', 'EMP004', 31, 'Female', 'HR', 'Recruiter', 3800.00, '1990-09-18'),
  (5, 'Daniel Thompson', 'EMP005', 29, 'Male', 'Operations', 'Supervisor', 4200.00, '1992-03-12'),
   (6, 'Neha Gupta', 'EMP006', 27, 'Female', 'IT', 'Software Developer', 5500.00, '1994-06-28'),
  (7, 'Aryan Patel', 'EMP007', 33, 'Male', 'Sales', 'Sales Executive', 4200.00, '1988-09-12'),
  (8, 'Priya Sharma', 'EMP008', 30, 'Female', 'Marketing', 'Marketing Manager', 6000.00, '1991-12-05'),
  (9, 'Rahul Kumar', 'EMP009', 29, 'Male', 'Finance', 'Financial Analyst', 4800.00, '1992-03-20'),
  (10, 'Anjali Singh', 'EMP010', 26, 'Female', 'HR', 'HR Assistant', 3600.00, '1995-08-16'),
  (11, 'Vivek Verma', 'EMP011', 34, 'Male', 'Operations', 'Operations Manager', 6500.00, '1987-04-10'),
  (12, 'Swati Desai', 'EMP012', 31, 'Female', 'IT', 'Database Administrator', 5200.00, '1990-10-25'),
  (13, 'Rohit Sharma', 'EMP013', 28, 'Male', 'Sales', 'Sales Representative', 4000.00, '1993-07-08'),
  (14, 'Meera Patel', 'EMP014', 29, 'Female', 'Marketing', 'Marketing Coordinator', 3800.00, '1992-05-15'),
  (15, 'Amit Singh', 'EMP015', 32, 'Male', 'Finance', 'Finance Manager', 5800.00, '1989-11-28');


select * from employee;

select max(salary) as second_largestsalary from employee
where salary <(select max(salary) from employee);

select department, COUNT(*) as employee_count
from employee
group by department;
