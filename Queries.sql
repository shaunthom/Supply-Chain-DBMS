SELECT COUNT(*)
 FROM Product
 JOIN Department_Employee
 ON Product.DesignerID = Department_Employee.Department ID
 WHERE Product = 'Galaxy United Jersey'


SELECT Employee.EmployeeID, Employee.FirstName||Employee.LastName, Employee_Department.DepartmentID
FROM Employee
JOIN Employee_Department ON Employee.EmployeeID = Employee_Department.EmployeeID;
