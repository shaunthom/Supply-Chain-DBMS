SELECT COUNT(*)
 FROM Product
 JOIN Department_Employee
 ON Product.DesignerID = Department_Employee.Department ID
 WHERE Product = 'Galaxy United Jersey'
