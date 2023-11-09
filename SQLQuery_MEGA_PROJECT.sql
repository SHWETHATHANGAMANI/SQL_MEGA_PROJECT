CREATE DATABASE MEGA_PROJECT

CREATE TABLE Employee_Detail_table 
(
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
salary money,
JoiningDate DATETIME,
Department VARCHAR(50),
Gender VARCHAR(100)
)
drop table Employee_Detail_table 



INSERT INTO Employee_Detail_table 
VALUES(1, 'Vikas', 'Ahlawat', 600000, '2/12/2013 11:16:00', 'IT', 'MALE')

select * from Employee_Detail_table 

-----1) Write a query to get all employee detail from "EmployeeDetail" table

select * from Employee_Detail_table 

------2) Write a query to get only "FirstName" column from "EmployeeDetail" table

select firstName from Employee_Detail_table 

--------3) Write a query to get FirstName in upper case as "First Name".

SELECT UPPER(firstName) as FIRST_NAME
FROM Employee_Detail_table 

-------4) Write a query to get FirstName in upper case as "First Name".
SELECT UPPER(firstName) as FIRST_NAME
FROM Employee_Detail_table 


-----5) Write a query for combine FirstName and LastName and display it as "Name" (also include white space between first name & last name)

SELECT CONCAT(FirstName, ' ', LastName) AS "Name"
FROM Employee_Detail_table 

----6) Select employee detail whose name is "Vikas
SELECT * FROM Employee_Detail_table 
WHERE FirstName = 'Vikas'

----7) Get all employee detail from EmployeeDetail table whose "FirstName" start with latter 'a'.
SELECT * FROM Employee_Detail_table 
WHERE FirstName LIKE 'A%'

----8) Get all employee detail from EmployeeDetail table whose "FirstName" start with latter 'a'.
SELECT * FROM Employee_Detail_table 
WHERE FirstName LIKE 'A%'

-----9. Get all employee details from EmployeeDetail table whose "FirstName" end with 'h'
SELECT * FROM Employee_Detail_table 
WHERE FirstName LIKE '%H'


---10. Get all employee detail from EmployeeDetail table whose "FirstName" start with any single character between 'a-p'
SELECT * FROM Employee_Detail_table 
WHERE FirstName LIKE '[a-p]%';


----11)	 Get all employee detail from EmployeeDetail table whose "FirstName" not start with any single character between 'a-p'
SELECT * FROM Employee_Detail_table 
WHERE FirstName NOT LIKE '[a-p]%'

-----12)	 Get all employee detail from EmployeeDetail table whose "Gender" end with 'le' and contain 4 letters. The Underscore(_) Wildcard Character represents any single character
SELECT * FROM Employee_Detail_table 
WHERE Gender LIKE '__le'

----13)	 Get all employee detail from EmployeeDetail table whose "FirstName" start with 'A' and contain 5 letters
select * from Employee_Detail_table 
where FirstName like 'A____'


----14)	 Get all employee detail from EmployeeDetail table whose "FirstName" containing '%'. ex:-"Vik%as".
select * from Employee_Detail_table 
where FirstName like '[%]'

-----15)	 Get all unique "Department" from EmployeeDetail table
select Department from Employee_Detail_table 

----16)	 Get the highest "Salary" from EmployeeDetail table.
select * from Employee_Detail_table 
where salary >=1000000

-----17)	 Get the lowest "Salary" from EmployeeDetail table
select * from Employee_Detail_table 
where salary <=480000


----18)	 Show "JoiningDate" in "dd mmm yyyy" format, ex- "15 Feb 2013
SELECT format(JoiningDate, 'dd MMM yyyy') AS JoiningDate_ddmmyyyy
FROM Employee_Detail_table 



------19)	Show "JoiningDate" in "yyyy/mm/dd" format, ex- "2013/02/15"
select format(joiningDate, 'yyyy mm dd') AS joiningdate_yyyymmdd
from Employee_Detail_table 

-----20)	 Show only time part of the "JoiningDate"
-----UNABLE TO ADD TIMINGS

-----21)	Get only Year part of "JoiningDate"
SELECT YEAR(JoiningDate) AS JoiningYear
FROM Employee_Detail_table 

----22)	Get only Month part of "JoiningDate”
SELECT MONTH (JoiningDate) AS JoiningMONTH
FROM Employee_Detail_table 

-----23)	Get system date


----24)	Get UTC date.

-----a)	Get the first name, current date, joiningdate and diff between current date and joining date in months.
SELECT
    FirstName,
    ------CurrentDate,
    JoiningDate,
    ------difference B/w current datea and joining date in months
FROM Employee_Detail_table
----------------



----25)	Get the first name, current date, joiningdate and diff between current date and joining date in days.
------------------same as above
-----26)	 Get all employee details from EmployeeDetail table whose joining year is 2013

select * from Employee_Detail_table
where year(joiningdate) = 2013

-----27)	Get all employee details from EmployeeDetail table whose joining month is Jan(1)
select * from Employee_Detail_table
where month(joiningdate) = 01


-------28)	Get all employee details from EmployeeDetail table whose joining month is Jan(1)
select * from Employee_Detail_table
where month(joiningdate) = 01

------29)	Get how many employee exist in "EmployeeDetail" table

SELECT COUNT(*) AS employee_count
FROM Employee_Detail_table

-----31. Select only one/top 1 record from "EmployeeDetail" table
SELECT TOP 1 *
FROM Employee_Detail_table

----32. Select all employee detail with First name "Vikas","Ashish", and "Nikhil".
select * from Employee_Detail_table
where firstname in ('vikas', 'ashish', 'nikhil')

----33. Select all employee detail with First name not in "Vikas","Ashish", and "Nikhil"
select * from Employee_Detail_table
where firstname not in ('vikas', 'ashish', 'nikhil')

-----34. Select first name from "EmployeeDetail" table after removing white spaces from right side
SELECT RTRIM(firstName) AS trimmed_first_name
FROM Employee_Detail_table

-----35. Select first name from "EmployeeDetail" table after removing white spaces from left side
SELECT LTRIM(firstName) AS trimmed_first_name
FROM Employee_Detail_table

36. Display first name and Gender as M/F.(if male then M, if Female then F)
select
      firstname,
	  case
	      when gender = 'male' then  'M'
	      when gender = 'Female' then  'F'
	  end as gender
from Employee_Detail_table

-----37. Select first name from "EmployeeDetail" table prifixed with "Hello

SELECT CONCAT('Hello',' ', firstname) AS HELLO_NAMES
FROM Employee_Detail_table

----38. Get employee details from "EmployeeDetail" table whose Salary greater than 600000
SELECT * FROM Employee_Detail_table
WHERE Salary > 600000
      
----39. Get employee details from "EmployeeDetail" table whose Salary less than 700000
SELECT * FROM Employee_Detail_table
WHERE Salary < 700000

----40. Get employee details from "EmployeeDetail" table whose Salary between 500000 than 600000
SELECT * FROM Employee_Detail_table
WHERE Salary between 500000 and 600000

----41. Give records of ProjectDetail table
CREATE TABLE Project_Detail_table 
(
ProjectDetailID INT PRIMARY KEY,
EmployeeDetailId INT,
ProjectName VARCHAR(50)
)
insert into Project_Detail_table
values (1,1,'Task Track')

select * from Project_Detail_table
-----42. Write the query to get the department and department wise total(sum) salary from "EmployeeDetail" table.
SELECT Department, SUM(Salary) AS TotalSalary
FROM Employee_Detail_table
GROUP BY Department;

SELECT * FROM Employee_Detail_table

select * from Project_Detail_table

-----43. Write the query to get the department and department wise total(sum) salary, display it in ascending order according to salary.
SELECT Department, SUM(Salary) AS TotalSalary
FROM Employee_Detail_table
GROUP BY Department
ORDER BY TotalSalary ASC;


----44. Write the query to get the department and department wise total(sum) salary, display it in descending order according to salary
SELECT Department, SUM(Salary) AS TotalSalary
FROM Employee_Detail_table
GROUP BY Department
ORDER BY TotalSalary DESC;


--------45. Write the query to get the department, total no. of departments, total(sum) salary with respect to department from "EmployeeDetail" table.
SELECT 
    Department,
    COUNT(DISTINCT Department) AS TotalDepartments,
    SUM(Salary) AS TotalSalary
FROM Employee_Detail_table
GROUP BY Department;



-----46. Get department wise average salary from "EmployeeDetail" table order by salary ascending

SELECT Department, AVG(Salary) AS AverageSalary
FROM Employee_Detail_table
GROUP BY Department
ORDER BY AverageSalary ASC;

-----47 . Get department wise maximum salary from "EmployeeDetail" table order by salary ascending
SELECT DEPARTMENT, MAX(SALARY) AS MAXIMUM_SALARY
FROM Employee_Detail_table
GROUP BY DEPARTMENT
ORDER BY MAXIMUM_SALARY ASC;

----48.Get department wise minimum salary from "EmployeeDetail" table order by salary ascending.
SELECT DEPARTMENT, MIN(SALARY) AS MINIMUM_SALARY
FROM Employee_Detail_table
GROUP BY DEPARTMENT
ORDER BY MINIMUM_SALARY ASC;


----49. Get department wise minimum salary from "EmployeeDetail" table order by salary ascending
SELECT Department, MIN(Salary) AS MinimumSalary
FROM Employee_Detail_table
GROUP BY Department
ORDER BY MinimumSalary ASC;

----------50. Join both the table that is Employee and ProjectDetail based on some common paramter
SELECT EmployeeID 
FROM Employee_Detail_table 
INNER JOIN
Project_Detail_table
ON
Employee_Detail_table.EMPLOYEEID = Project_Detail_table.EMPLOYEEDetailID;

select * from Employee_Detail_table 
select * from Project_Detail_table

----------51. Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for those employee which have assigned project already.

SELECT Employee_Detail_table.FirstName AS EmployeeFirstName, Project_Detail_table.ProjectName
FROM Employee_Detail_table 
INNER JOIN 
Project_Detail_table 
ON
Employee_Detail_table.EmployeeID = Project_Detail_table.EmployeedetailID
ORDER BY Employee_Detail_table.FirstName;

---------52. Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee even they have not assigned project.
SELECT E.firstname as Employees_first_name, P.Projectname
from Employee_Detail_table as E
inner join
Project_Detail_table as P
on 
E.EmployeeID = P.EmployeedetailID
ORDER BY Employees_first_name;

-------53) Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee if project is not assigned then display "-No Project Assigned"
SELECT E.FirstName AS EmployeeName, COALESCE(P.ProjectName, '-No Project Assigned') AS ProjectName
FROM Employee_Detail_table AS E
LEFT JOIN 
Project_Detail_table AS P 
ON
E.EmployeeID = P.EmployeedetailID
ORDER BY E.FirstName;

---------54.Get all project name even they have not matching any employeeid, in left table, order by firstname from "EmployeeDetail" and "ProjectDetail

SELECT E.FirstName AS EmployeeName, COALESCE(P.ProjectName, '-No Project Assigned') AS ProjectName
FROM Employee_Detail_table AS E
LEFT JOIN
Project_Detail_table AS P 
ON
E.EmployeeID = P.EmployeedetailID
UNION
SELECT NULL AS EmployeeName, ProjectName
FROM Project_Detail_table
WHERE ProjectName IS NOT NULL
ORDER BY EmployeeName, ProjectName;

------55. Get complete record (employeename, project name) from both tables ([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL
SELECT E.firstname as Employees_first_name, P.Projectname
from Employee_Detail_table as E
left join
Project_Detail_table as P
on 
E.EmployeeID = P.EmployeedetailID

----------56. Get complete record (employeename, project name) from both tables ([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL
SELECT E.firstname as Employees_first_name, P.Projectname
from Employee_Detail_table as E
left join
Project_Detail_table as P
on 
E.EmployeeID = P.EmployeedetailID

---------57.Get complete record (employeename, project name) from both tables ([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL
SELECT E.firstname as Employees_first_name, P.Projectname
from Employee_Detail_table as E
left join
Project_Detail_table as P
on 
E.EmployeeID = P.EmployeedetailID

------58.Write down the query to fetch EmployeeName & Project who has assign more than one project

SELECT E.firstname, P.Projectname
FROM (
    SELECT EmployeeID, firstname
    FROM Employee_Detail_table
) AS E
JOIN (
    SELECT EmployeeDetailID, Projectname
    FROM Project_Detail_table
    GROUP BY EmployeeDetailID, Projectname
    HAVING COUNT(*) > 1
) AS P
ON 
E.EmployeeID = P.EmployeedetailID

select * from Employee_Detail_table
select * from Project_Detail_table
-------59. Write down the query to fetch ProjectName on which more than one employee are working along with EmployeeName
SELECT E.firstName, P.ProjectName
FROM Employee_Detail_table AS E
JOIN (
    SELECT ProjectdetailID, ProjectName
    FROM Project_Detail_table as P
    GROUP BY ProjectDetailID, ProjectName
    HAVING COUNT(EmployeeID) > 1
) AS P
ON E.EmployeeID = P.EmployeeDetailID;


-------60. Apply Cross Join in Both the tables
SELECT E.firstName, P.ProjectName
FROM Employee_Detail_table AS E
CROSS JOIN 
Project_Detail_table AS P;


------Advanced:-
------Project Type(B):-
--------1.	Write down the query to print first letter of a Name in Upper Case and all other letter in Lower Case.(EmployDetail table)
Select UPPER(SUBSTRING(Firstname, 1,1))+ 
LOWER(SUBSTRING(Firstname, 2, Len(FirstName)-1))As Firstname from Employee_Detail_table

select * from Employee_Detail_table

-----2.	1. Write down the query to display all employee name in one cell seprated by ',' ex:-"Vikas, nikita, Ashish, Nikhil , anish"(EmployDetail table)

SELECT STRING_AGG(FirstName, ', ') AS ConcatenatedList
FROM Employee_Detail_table;

------3.	Write down the query to get ProjectName and respective EmployeeName(firstname) which are working on the project, --if more then one employee working on same project, then it should be in same cell seprated by comma 
------for example :- Task Tracker : Vikas, Ashish
--------------------------------------------------------------------------------

------4.	: You have a table(FuelDetail) with ID, Fuel, And Date columns. --Fuel column is contain fuel quantity at a particular time when car start traveling.
 -----So we need to find out that when the driver fill Petrol in his/her car.
 --By FuelDetail Table image on the top of this post, you can understand the query.
 --Car start driving at 10 Am on 25th April with petrol(10 liter) 
--at 11 AM Petrol was 9 liters
 --at 12 AM petrol was 8 liters 
--at 2 PM (14) petrol was 12 liters... 
--This means that he/she fill the petrol at 25th April 2014 at 2PM --Next time he fill petrol at 7PM 25th April 2014 
--and Next time he fill petrol at 11PM 25th April 2014

CREATE TABLE Fuel_Detail_table 
(
EmployeeID INT PRIMARY KEY,
Fuel INT,
Fuel_date DATETIME
)

select * from Fuel_Detail_table
INSERT INTO Fuel_Detail_table 
VALUES(1, 10, '2014-04-25 10:00:00')
INSERT INTO Fuel_Detail_table 
VALUES(2, 9, '2014-04-25 11:00:00')
INSERT INTO Fuel_Detail_table 
VALUES(3, 8, '2014-04-25 12:00:00')
INSERT INTO Fuel_Detail_table 
VALUES(4, 6, '2014-04-25 13:00:00')
INSERT INTO Fuel_Detail_table 
VALUES(5, 12, '2014-04-25 14:00:00')
INSERT INTO Fuel_Detail_table 
VALUES(6, 11, '2014-04-25 15:00:00')
INSERT INTO Fuel_Detail_table 
VALUES(7, 10, '2014-04-25 16:00:00')
INSERT INTO Fuel_Detail_table 
VALUES(8, 9, '2014-04-25 17:00:00')
INSERT INTO Fuel_Detail_table 
VALUES(9, 8, '2014-04-25 18:00:00')
INSERT INTO Fuel_Detail_table 
VALUES(10, 10, '2014-04-25 19:00:00')
INSERT INTO Fuel_Detail_table 
VALUES(11, 9, '2014-04-25 20:00:00')
INSERT INTO Fuel_Detail_table 
VALUES(12, 8, '2014-04-25 21:00:00')
INSERT INTO Fuel_Detail_table 
VALUES(13, 7, '2014-04-25 22:00:00')
INSERT INTO Fuel_Detail_table 
VALUES(14, 15, '2014-04-25 23:00:00')

----5.What would be the out-put of the following Sql query? 
SELECT A.A FROM (SELECT 1 A, 2 B) A JOIN (SELECT 1 A,1 B)B ON A.A = B.B 

------------------Answer : c
----5.What would be the out-put of the following Sql query? 
SELECT B.A FROM (SELECT 1 A) A JOIN (SELECT 1 A, 2 B)B ON A.A = B.A 

------------------Answer : c

-----6.	What would be the out-put of the following Sql query? 
SELECT B.A FROM (SELECT 1 A) A JOIN (SELECT 1 A, 2 B)B ON A.A = B.B 

------------------Answer : B
------7.	What would be the out-put of the following Sql query? 
SELECT * FROM (SELECT 1 A UNION ALL SELECT 2 B) A JOIN (SELECT 1 A,2 B)B ON A.A = B.B

----------------Answer : D

-------Project Type©(Syntax Based Project):-
-------Write a Syntax queries of All Questions:-

-----1)	 How to select random record form a table?
SELECT * FROM your_table_name
ORDER BY RAND()
LIMIT 1;

-----2)	Suppose that you have table Employee with a column EName which contain Records Employee name(EName) as A,B,A,A,B,D,C,M,A, Write a query which will change/Swap the EName A to B and B to A
UPDATE Employee
SET EName = CASE
    WHEN EName = 'A' THEN 'B'
    WHEN EName = 'B' THEN 'A'
    ELSE EName
END;

-----3)	Write a query to create a clone of existing table without using Create Command
-- SQL Server
SELECT *
INTO ClonedTable
FROM OriginalTable
WHERE 1 = 0;



-----5)	Write a query to print 1 to 100 in sql server without using loops
WITH NumbersCTE AS (
    SELECT 1 AS N
    UNION ALL
    SELECT N + 1
    FROM NumbersCTE
    WHERE N < 100
)

SELECT N
FROM NumbersCTE;


