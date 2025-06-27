USE four_db;

//-- AGGREGATE STATEMENTS

SELECT COUNT(*) FROM EMP;

SELECT SUM(bonus) AS total_bonus FROM EMP;

SELECT AVG(salary) AS avg_salary FROM EMP;

SELECT COUNT(emp_id), state
FROM EMP
GROUP BY state;

SELECT AVG(salary) AS AVG_salary, dept_id
FROM EMP
GROUP BY dept_id;

SELECT SUM(salary) AS total_salary, dept_name, dept_id
FROM EMP
GROUP BY dept_name, dept_id

SELECT COUNT(emp_id) AS total_employees, dept_id, dept_name
FROM EMP
GROUP BY dept_id, dept_name;

SELECT COUNT(*) FROM DEPT;

SELECT SUM(salary) AS total_dept_salary, DEPT_ID
FROM EMP
GROUP BY dept_id
HAVING SUM(salary) BETWEEN 10000 AND 500000;

SELECT AVG(bonus) AS avg_dept_bonus, dept_name
FROM EMP
GROUP BY dept_name
HAVING AVG(bonus)>4000;

SELECT COUNT(emp_id) AS total_emp, dept_name
FROM EMP
GROUP BY dept_name
HAVING COUNT(emp_id) IN (2,3);

SELECT SUM(salary), state, job_title
FROM EMP
GROUP BY state, job_title
HAVING SUM(salary)>30000;


SELECT SUM(salary), job_title
FROM EMP
GROUP BY job_title
HAVING SUM(salary)<50000;

SELECT COUNT(dept_id), state
FROM EMP
GROUP BY state;

SELECT COUNT(job_title), state
FROM EMP
GROUP BY state
HAVING COUNT(job_title)>=1;

SELECT SUM(salary) as total_salary FROM EMP;

SELECT SUM(bonus) as total_bonus FROM EMP;

