SELECT emp.ename, emp.job FROM emp WHERE emp.job IN (SELECT emp.job FROM emp WHERE emp.ename = 'JONES');

SELECT emp.job FROM emp WHERE emp.ename = 'JONES';



SELECT emp.ename FROM emp WHERE emp.deptno = 10 AND emp.job IN (SELECT emp.job FROM emp WHERE emp.deptno = 30);

SELECT emp.job FROM emp WHERE emp.deptno = 30;



SELECT emp.ename, emp.job, emp.sal FROM emp WHERE (emp.job, emp.sal) IN (SELECT emp.job, emp.sal FROM emp WHERE emp.ename = 'FORD');

SELECT emp.job, emp.sal FROM emp WHERE emp.ename = 'FORD';



SELECT emp.ename, emp.job, emp.deptno FROM emp, (SELECT emp.sal FROM emp WHERE emp.ename = 'FORD') ford WHERE emp.job IN (SELECT emp.job FROM emp WHERE emp.ename = 'JONES') OR emp.sal >= ford.sal;

SELECT e.ename, e.job, e.deptno FROM (emp e FULL JOIN (SELECT emp.sal FROM emp WHERE emp.ename = 'FORD') ford ON 1=1) WHERE e.job IN (SELECT emp.job FROM emp WHERE emp.ename = 'JONES') OR e.sal >= ford.sal;

SELECT emp.job FROM emp WHERE emp.ename = 'JONES';
SELECT emp.sal FROM emp WHERE emp.ename = 'FORD';



SELECT emp.ename, emp.job FROM emp WHERE emp.deptno = 10 AND emp.job IN (SELECT emp.job FROM emp, dept WHERE emp.deptno = dept.deptno AND dept.dname = 'SALES');

SELECT emp.job FROM emp, dept WHERE emp.deptno = dept.deptno AND dept.dname = 'SALES';



SELECT emp.ename, emp.job, dept.loc FROM emp, dept WHERE emp.deptno = dept.deptno AND dept.loc = 'CHICAGO' AND emp.job IN (SELECT emp.job FROM emp WHERE emp.ename = 'ALLEN') ORDER BY emp.ename;

SELECT emp.job FROM emp WHERE emp.ename = 'ALLEN';

SELECT emp.ename, emp.job, dept.loc FROM emp, dept WHERE emp.deptno = dept.deptno;



SELECT emp.ename, emp.sal, a.average FROM emp, (SELECT emp.deptno, AVG(emp.sal) AS average FROM emp GROUP BY emp.deptno) a WHERE a.deptno = emp.deptno AND emp.sal > a.average;

SELECT emp.deptno, AVG(emp.sal) AS average FROM emp GROUP BY emp.deptno;












