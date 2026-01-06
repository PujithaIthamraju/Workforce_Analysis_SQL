USE NEW
CREATE TABLE Emp
(
	EmployeeID	INT,
	Name VARCHAR(30),
	DepartmentID	INT,
	Salary	INT,
	HireDate DATE
)

INSERT INTO Emp (EmployeeID, Name, DepartmentID, Salary, HireDate) VALUES
(101, 'Ravi', 2, 60000, '2021-06-15'),
(102, 'Sita', 1, 45000, '2022-01-10'),
(103, 'Amit', 3, 55000, '2020-09-25'),
(104, 'Neha', 2, 70000, '2019-11-05'),
(105, 'Kiran', 4, 40000, '2023-03-18');

CREATE TABLE Dept
(
	DepartmentID	INT,
	DepartmentName VARCHAR(20)
)

INSERT INTO Dept (DepartmentID, DepartmentName) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Sales');

CREATE TABLE Project
(
	ProjectID	INT,
	ProjectName	VARCHAR(20),
	StartDate	DATE,
	EndDate DATE
)

INSERT INTO Project (ProjectID, ProjectName, StartDate, EndDate) VALUES
(201, 'Payroll System', '2022-04-01', '2022-09-30'),
(202, 'Sales Analysis', '2023-01-15', '2023-06-30'),
(203, 'HR Automation', '2021-07-01', '2021-12-31');

CREATE TABLE Emp_project
(
	EmployeeID	INT,
	ProjectID INT

)

INSERT INTO Emp_project (EmployeeID, ProjectID) VALUES
(101, 201),
(102, 203),
(103, 201),
(104, 202),
(105, 202),
(101, 202);

SELECT *
FROM EMP

SELECT *
FROM EMP_project


SELECT *
FROM Dept

SELECT *
FROM project

--1. Retrieve all employees who work in the 'IT' department.
SELECT A.name,B.departmentname
FROM Emp AS A JOIN Dept AS B ON A.departmentid=B.departmentid
WHERE B.departmentname='IT'
GROUP BY B.Departmentname,name

--2. List the names of employees whose salary is above 75000.
SELECT name,salary
FROM Emp --AS A JOIN Dept AS B ON A.departmentid=B.departmentid
WHERE Salary >75000

--3. Display employees who were hired after January 1, 2020.
SELECT Name,Hiredate
FROM EMP
WHERE Hiredate>'2020-01-01'

--4. Show the total salary paid in each department.
SELECT B.departmentname, SUM(A.Salary) Total_sal
FROM Emp AS A JOIN Dept AS B ON A.departmentid=B.departmentid
GROUP BY departmentname

--5. List the employees who are not assigned to any project.
SELECT A.*
FROM Emp AS A LEFT JOIN Emp_project AS B ON A.employeeid=B.employeeid
WHERE B.Projectid IS NULL

--6. Display the department name along with the count of employees in each department.
SELECT departmentname, COUNT(Employeeid) AS Total_emp
FROM Emp AS A JOIN Dept AS B ON A.departmentid=B.departmentid
GROUP BY Departmentname

--7. Retrieve the names of employees working on the 'Sales Anlaysis' project.
SELECT A.name 
FROM Emp AS A JOIN Emp_project AS B ON A.employeeid=B.employeeid
			  JOIN project AS C ON B.projectid=C.projectid
WHERE Projectname = 'Sales Analysis';

--8. Show the highest salary in each department.
SELECT B.departmentname, MAX(A.Salary) Highest_sal
FROM Emp AS A JOIN Dept AS B ON A.departmentid=B.departmentid
GROUP BY departmentname

--9. List employees along with their department names.
SELECT name,departmentname
FROM Emp AS A JOIN Dept AS B ON A.departmentid=B.departmentid

--10. Find the average salary of employees hired before 2020.
SELECT ROUND(AVG(Salary), 2) AS Avg_Salary
FROM Emp
WHERE HireDate < '2020-01-01';

--11. Show employees who are part of multiple projects.
SELECT A.name,count(C.projectid) total_projects
FROM Emp AS A JOIN Emp_project AS B ON A.employeeid=B.employeeid
			  JOIN project AS C ON B.projectid=C.projectid
GROUP BY name
HAVING COUNT(C.Projectid) >1

--12. Retrieve employees who are working on projects that ended before 2022.
SELECT DISTINCT A.Name
FROM Emp A JOIN Emp_project B ON A.EmployeeID = B.EmployeeID
		   JOIN Project C ON B.ProjectID = C.ProjectID
WHERE C.EndDate < '2022-01-01';


--13. Display employees with the second highest salary.
SELECT Name, Salary
FROM Emp
WHERE Salary = (
    SELECT MAX(Salary)
    FROM Emp
    WHERE Salary < (SELECT MAX(Salary) FROM Emp)
);

--14. List departments that have no employees assigned.
SELECT B.departmentname
FROM Emp AS A Right JOIN Dept AS B ON A.departmentid=B.departmentid
WHERE A.employeeid IS NULL

--15. Retrieve the total number of projects each employee is assigned to.
SELECT A.name,COUNT(C.projectid) AS Total_Projects
FROM Emp AS A JOIN Emp_project AS B ON A.employeeid=B.employeeid
			  JOIN project AS C ON B.projectid=C.projectid
GROUP BY A.name

















