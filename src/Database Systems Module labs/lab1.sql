SELECT emp.ENAME, emp.DEPTNO, emp.SAL FROM emp WHERE emp.SAL >= 1000 AND emp.SAL <= 2000;

SELECT emp.ENAME, dept.DNAME, emp.SAL FROM emp, dept WHERE emp.SAL >= 1000 AND emp.SAL <= 2000 AND dept.DEPTNO = emp.DEPTNO;

SELECT emp.JOB FROM emp;

SELECT emp.ENAME, emp.SAL, emp.JOB FROM emp WHERE emp.DEPTNO = 30 OR emp.DEPTNO = 10;

SELECT emp.ENAME, dept.DNAME, emp.HIREDATE from emp, dept WHERE dept.DEPTNO = emp.DEPTNO AND EXTRACT(year FROM emp.HIREDATE) = 1982;

SELECT emp.ENAME from emp WHERE LOWER(emp.ENAME) LIKE '%th%' OR LOWER(emp.ENAME) LIKE '%ll%';

SELECT dept.DEPTNO, dept.DNAME FROM dept ORDER BY dept.DNAME;

SELECT dept.DEPTNO, dept.DNAME FROM dept ORDER BY dept.DNAME DESC;

SELECT emp.ENAME, emp.JOB, emp.SAL, emp.COMM FROM emp WHERE emp.MGR IS NULL;

SELECT emp.ENAME, emp.COMM, emp.SAL FROM emp WHERE LOWER(emp.JOB) = 'salesman' ORDER BY emp.COMM/emp.SAL DESC;

SELECT emp.ENAME, emp.COMM/emp.SAL FROM emp WHERE LOWER(emp.JOB) = 'salesman' ORDER BY emp.COMM/emp.SAL DESC;

SELECT emp.ENAME, (emp.SAL+emp.COMM)*12 AS COMP FROM emp WHERE LOWER(emp.JOB) = 'salesman';

SELECT emp.ENAME, emp.SAL, dept.DNAME FROM emp, dept WHERE emp.DEPTNO = 30 AND emp.SAL >= 1500 AND LOWER(emp.JOB) = 'salesman' AND emp.DEPTNO = dept.DEPTNO;