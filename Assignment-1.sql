Create database ORG;
Use ORG;
Create table Worker 
(WORKER_ID int not null primary key auto_increment,
FIRST_NAME varchar(25),LAST_NAME varchar(25),SALARY int(15),JOINING_DATE datetime,DEPARTMENT varchar(25));
Insert into Worker
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE,
DEPARTMENT) values
(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

Select * from Worker;

-- Question 1:
-- Write a SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>.

Select FIRST_NAME as WORKER_NAME from Worker;

-- Question 2:
-- Write a SQL query to fetch unique values of DEPARTMENT from the Worker table

Select distinct DEPARTMENT from Worker;

-- Question 3:
-- Write a SQL query to print the first three characters FIRST_Name from the Worker table.

Select MID(FIRST_NAME,1,3) as SHORT_NAME from Worker;

-- Question 4:
-- Write a SQL query that fetches the unique values of DEPARTMENT from the Worker table and prints its length.

Select distinct DEPARTMENT, length(DEPARTMENT) as DEPARTMENT_LENGTH from Worker;

-- Question 5:
-- Write a SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending

Select * from Worker order by FIRST_NAME asc , DEPARTMENT desc;

-- Question 6:
-- Write a SQL query to print details of Workers with DEPARTMENT name as “Admin”.

Select * from Worker where DEPARTMENT = "Admin";

-- Question 7:
-- Write a SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.

Select * from Worker where Salary between 100000 and 500000;

-- Question 8:
-- Write a SQL query to fetch worker names with salaries >= 50000 and <= 100000.

Select FIRST_NAME , LAST_NAME from Worker where Salary >= 50000 and Salary <= 100000;

-- Question 9:
-- Write a SQL Query to show only even rows from the WORKER table

Select * from worker where WORKER_ID % 2=0;

-- Question 10:
-- Write a SQL query to print details of the Workers who joined in Feb 2014.

Select * from Worker where JOINING_DATE >="2014-02-01" and JOINING_DATE < "2014-03-01";