SELECT Employees.Name AS Employee,Age, Positions.Name AS Position, Departments.Name AS Department FROM Employees
INNER JOIN Positions ON Employees.PositionID = Positions.ID
INNER JOIN DeptStaff ON Employees.ID = DeptStaff.employeeID 
INNER JOIN Departments ON Deptstaff.DepartmentID = Departments.ID;
