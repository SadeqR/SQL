CREATE TABLE loans (
	lno number(3),
	empno number(4),
	type char(1),
	amnt number(8,2)
);

INSERT INTO loans VALUES (23, 7499, 'm', 20000.00);
INSERT INTO loans VALUES (42, 7499, 'c', 2000.00);
INSERT INTO loans VALUES (65, 7844, 'm', 3564.20);

SELECT * FROM loans;

ALTER TABLE loans ADD outst number(8,2);

UPDATE loans SET amnt = amnt*1.1 WHERE type='m';

DELETE FROM loans WHERE amnt<3000;

RENAME loans TO accounts;

ALTER TABLE accounts RENAME COLUMN lno TO loanno;

CREATE VIEW emp_view (NAME, EMPNUM, JOB, HIREDATE) AS (SELECT emp.ename, emp.empno, emp.job, emp.hiredate FROM emp WHERE emp.deptno = 30);

SELECT * FROM emp_view WHERE job <> 'SALESMAN';

ALTER TABLE accounts DROP COLUMN type;