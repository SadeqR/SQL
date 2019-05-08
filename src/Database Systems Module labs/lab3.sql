SELECT emp.ename, emp.job, emp.hiredate from emp;
SELECT emp.ename, emp.job, TO_CHAR(emp.hiredate, 'mm-dd-yy') FROM emp;

SELECT emp.ename, emp.job, TO_CHAR(emp.hiredate, 'day, month, dd, yyyy') FROM emp;

SELECT TO_CHAR(emp.hiredate, 'ddth') FROM emp;

SELECT emp.ename, TRIM(TRAILING FROM TO_CHAR(emp.hiredate, 'month'))||TO_CHAR(emp.hiredate, ' ddth, yyyy, hh:mi am') AS HIREDATE FROM emp WHERE emp.deptno = 20;





SELECT TRIM(TRAILING FROM TO_CHAR(emp.hiredate, 'day'))||'test' FROM emp;