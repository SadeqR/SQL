SELECT emp.ename, emp.sal FROM emp, dept WHERE emp.deptno = dept.deptno AND LOWER(dept.loc) = 'dallas';
SELECT emp.ename, emp.sal FROM emp INNER JOIN dept ON emp.deptno = dept.deptno WHERE LOWER(dept.loc) = 'dallas';

SELECT * FROM emp FULL JOIN dept ON emp.deptno = dept.deptno ORDER BY emp.deptno;

SELECT * FROM dept;
SELECT dept.dname FROM dept LEFT JOIN emp ON dept.deptno = emp.deptno;

SELECT dept.dname FROM dept LEFT JOIN emp ON dept.deptno = emp.deptno WHERE emp.ename is NULL;

SELECT emp.ename, emp.sal FROM emp INNER JOIN emp e ON e.ename = 'JONES' WHERE emp.sal > e.sal;
SELECT emp.ename, emp.sal FROM emp JOIN emp e ON e.ename = 'JONES' AND emp.sal > e.sal;

SELECT emp.ename, emp.sal, mgr.ename, mgr.sal FROM (emp JOIN emp mgr ON emp.mgr = mgr.empno) WHERE emp.sal > mgr.sal;