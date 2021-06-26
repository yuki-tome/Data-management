SELECT EMPLOYEES.NAME AS EMPLOYEE,AGE, POSITiONS.NAME AS POSITION, DEPARTMENTS.NAME AS DEPARTMENT FROM EMPLOYEES
INNER JOIN POSITIONS ON EMPLOYEES.POSITIONID = POSITIONS.ID
INNER JOIN DEPTSTAFF ON EMPLOYEES.ID = DEPTSTAFF.EMPLOYEEID
INNER JOIN DEPARTMENTS ON DEPTSTAFF.DEPARTMENTID = DEPARTMENTS.ID WHERE DEPARTMENTS.ID = 1;

SELECT DEPARTMENTS.NAME AS DEPARTMENT_NAME, COUNT(DEPARTMENTS.ID) AS number_of_people FROM EMPLOYEES
INNER JOIN POSITIONS ON EMPLOYEES.POSITIONID = POSITIONS.ID
INNER JOIN DEPTSTAFF ON EMPLOYEES.ID = DEPTSTAFF.EMPLOYEEID
INNER JOIN DEPARTMENTS ON DEPTSTAFF.DEPARTMENTID = DEPARTMENTS.ID GROUP BY DEPARTMENTS.ID;

SELECT EMPLOYEES.NAME, POSITIONS.NAME AS POSITION, EMPLOYEES.AGE FROM EMPLOYEES
INNER JOIN POSITIONS ON EMPLOYEES.POSITIONID = POSITIONS.ID
INNER JOIN DEPTSTAFF ON EMPLOYEES.ID = DEPTSTAFF.EMPLOYEEID
INNER JOIN DEPARTMENTS ON DEPTSTAFF.DEPARTMENTID = DEPARTMENTS.ID WHERE EMPLOYEES.AGE >=25 AND EMPLOYEES.AGE <=35 AND POSITIONS.ID = 3;