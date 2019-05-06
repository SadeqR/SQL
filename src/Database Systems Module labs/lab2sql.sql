SELECT COUNT(*) AS MANAGERS FROM emp WHERE LOWER(emp.JOB) = 'manager';

SELECT AVG(emp.SAL+emp.COMM)*12 AS AVG_SAL FROM emp WHERE LOWER(emp.JOB) = 'salesman';

SELECT MAX(emp.sal), MIN(emp.sal), max(emp.sal)-min(emp.sal) FROM emp;

SELECT MAX(length(dept.dname)) FROM dept;

SELECT avg(emp.comm) FROM emp;

SELECT avg(nvl(emp.comm, 0)) FROM emp;

SELECT avg(emp.sal), avg(emp.comm), avg(emp.sal+emp.comm), avg(emp.sal + nvl(emp.comm, 0)) FROM emp;

SELECT emp.sal/22, emp.sal/22/8 FROM emp;
SELECT ROUND(emp.sal/22,2), ROUND(emp.sal/22/8,2) FROM emp;
SELECT TRUNC(emp.sal/22,2), TRUNC(emp.sal/22/8,2) FROM emp;