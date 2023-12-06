SELECT COUNT(*)
 FROM Product
 JOIN Department_Employee
 ON Product.DesignerID = Department_Employee.Department ID
 WHERE Product = 'Galaxy United Jersey'


SELECT Employee.EmployeeID, Employee.FirstName||Employee.LastName, Employee_Department.DepartmentID
FROM Employee
JOIN Employee_Department ON Employee.EmployeeID = Employee_Department.EmployeeID;


SELECT
    E.EmployeeID,
    E.FIRSTNAME || ' ' || E.LASTNAME AS FullName,
    D.DepartmentName,
    CASE
        WHEN D.NumberOfEmployees < 10 THEN 'Small Department'
        WHEN D.NumberOfEmployees BETWEEN 10 AND 50 THEN 'Medium Department'
        ELSE 'Large Department'
    END AS DepartmentSize
FROM
    Employee E
JOIN
    Employee_Department ED ON E.EmployeeID = ED.EmployeeID
JOIN
    Department D ON ED.DepartmentID = D.DepartmentID;

SELECT
    I.InvoiceNumber,
    V.VendorName,
    D.DepartmentName,
    CASE
        WHEN I.TotalAmount > 10000 THEN 'High Value Invoice'
        WHEN I.TotalAmount BETWEEN 5000 AND 10000 THEN 'Medium Value Invoice'
        WHEN I.TotalAmount < 5000 THEN 'Low Value Invoice'
        ELSE 'Other'
    END AS InvoiceCategory,
    CASE
        WHEN V.VendorPaymentType = 'Credit' THEN 'Credit Payment'
        WHEN V.VendorPaymentType = 'Cash' THEN 'Cash Payment'
        ELSE 'Other Payment Type'
    END AS PaymentType
FROM
    Invoice I
JOIN
    Vendor V ON I.VendorNumber = V.VendorNumber
JOIN
    Department D ON I.DepartmentID = D.DepartmentID;
