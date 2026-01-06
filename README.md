# Employee, Department & Project Management – SQL Analysis

##  Project Overview
This project demonstrates **relational database design and SQL querying skills** using an Employee–Department–Project management system.  
It focuses on **table creation, data insertion, joins, aggregations, subqueries, and real-world business queries** commonly asked in interviews and assessments.


##  Database Schema
The database consists of **four related tables**:

### 1️. Emp (Employee Table)
Stores employee details such as salary, department, and hire date.

| Column | Description |
|------|-------------|
| EmployeeID | Unique employee identifier |
| Name | Employee name |
| DepartmentID | Department reference |
| Salary | Employee salary |
| HireDate | Date of joining |


### 2️. Dept (Department Table)
Stores department master data.

| Column | Description |
|------|-------------|
| DepartmentID | Unique department identifier |
| DepartmentName | Department name |


### 3️.  Project (Project Table)
Stores project details with start and end dates.

| Column | Description |
|------|-------------|
| ProjectID | Unique project identifier |
| ProjectName | Project name |
| StartDate | Project start date |
| EndDate | Project end date |

### 4️.  Emp_project (Mapping Table)
Represents a **many-to-many relationship** between employees and projects.

| Column | Description |
|------|-------------|
| EmployeeID | Employee reference |
| ProjectID | Project reference |


## Business Problems Solved
This project answers **real-world HR and project management questions**, including:

1. Employees working in a specific department (IT)
2. High salary employees
3. Employees hired after a certain date
4. Total salary cost per department
5. Employees not assigned to any project
6. Employee count per department
7. Employees working on a specific project
8. Highest salary in each department
9. Employee–department mapping
10. Average salary of senior employees
11. Employees working on multiple projects
12. Employees working on completed projects
13. Second highest salary in the organization
14. Departments with no employees
15. Project count per employee


## SQL Concepts Used
- `CREATE TABLE`
- `INSERT INTO`
- `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`
- `GROUP BY`, `HAVING`
- Aggregate functions: `SUM`, `COUNT`, `AVG`, `MAX`
- Subqueries
- Date filtering
- DISTINCT records
- Many-to-many relationship handling


## Sample Insights
- IT and Finance departments have higher salary allocations
- Some employees work on **multiple projects**
- Certain departments may exist without active employees
- Senior employees (hired before 2020) have higher average salaries
- Project timelines help identify completed assignments


## Tools & Technologies
- SQL (MySQL / SQL Server compatible)
- Relational Database Design
- Query Optimization Techniques


## Files Included
- `Hotel, Orders & Customer SQL Database.sql`  
  (Contains table creation, data insertion, and all analysis queries)


## Why this project matters
This project reflects **interview-level SQL knowledge**, covering:
- Data modeling
- Joins & aggregations
- Analytical queries
- Business-driven problem solving

It is suitable for **Data Analyst, SQL Developer, and Fresher-level roles**.

## 📌 About
This project is part of my **SQL portfolio**, demonstrating hands-on experience with relational databases and real-world query scenarios.
