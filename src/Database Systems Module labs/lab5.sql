SELECT dept.deptno, AVG(emp.sal) FROM (dept LEFT JOIN emp ON dept.deptno = emp.deptno) GROUP BY dept.deptno;

SELECT dept.deptno, emp.job, COUNT(*), AVG(emp.sal+nvl(emp.comm, 0))*12 FROM (dept JOIN emp ON emp.deptno = dept.deptno) GROUP BY dept.deptno, emp.job;

SELECT dept.dname, emp.job, COUNT(*), AVG(emp.sal+nvl(emp.comm, 0))*12 FROM (dept JOIN emp ON emp.deptno = dept.deptno) GROUP BY dept.dname, emp.job;

SELECT dept.dname, emp.job, COUNT(*) as EMPS, AVG(emp.sal+nvl(emp.comm, 0))*12 FROM (dept JOIN emp ON emp.deptno = dept.deptno)
HAVING COUNT(*) > 1 GROUP BY dept.dname, emp.job;

SELECT dept.dname, COUNT(*) FROM (dept JOIN emp ON emp.deptno = dept.deptno AND emp.job = 'CLERK') HAVING COUNT(*) > 1 GROUP BY dept.dname;

SELECT dept.dname, AVG(emp.comm), AVG(emp.sal) FROM (dept JOIN emp ON emp.deptno = dept.deptno) HAVING AVG(emp.comm) > AVG(emp.sal)/4 GROUP BY dept.dname;

SELECT dept.dname, AVG(emp.sal) FROM (dept JOIN emp ON emp.deptno = dept.deptno AND emp.job <> 'MANAGER' AND emp.job <> 'PRESIDENT') GROUP BY dept.dname;

SELECT emp.job, AVG(nvl(emp.comm, 0)+emp.sal)*12 AS AVERAGE FROM emp HAVING COUNT(*) > 2 GROUP BY emp.job;