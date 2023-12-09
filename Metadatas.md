### Warehouse Table Metadata:

The warehouse metadata table defines a database schema with three fields: WarehouseNumber (a variable-length
alphanumeric for warehouse number and address), Address (a variable-length alphanumeric for the
warehouse's address), and PhoneNumber (a 14-character alphanumeric for the warehouse's phone
number).


| Name            | Type         | Length | Min | Max | Description                          |
|-----------------|--------------|--------|-----|-----|--------------------------------------|
| WarehouseNumber | Alphanumeric | Varies |     |     | Combined field for Warehouse number & Address |
| Address         | Alphanumeric | Varies |     |     | Address of warehouse                 |
| Phone Number    | Alphanumeric | 14     |     |     | Phone number of warehouse            |


### Employee Table Metadata:

In the Employee table given below, we have fields like ‘EmployeeID’, ‘EmployeeName’, and
'JobTitle'. Each of these has details like what kind of data it is and how long it can be. 'EmployeeID' is a
good example - it's a short, alphanumeric code to identify each employee.


| Name            | Type          | Length | Min   | Max       | Description                       |
|-----------------|---------------|--------|-------|-----------|-----------------------------------|
| EmployeeID      | Alphanumeric  | 4      |       |           | Unique identifier                 |
| EmployeeName    | Text          | Varies |       |           | Full name                         |
| JobTitle        | Text          | Varies |       |           | Job title                         |
| Salary          | Numeric       | Varies | 40,000| 1,500,000 | Annual salary in dollars          |
| WorkCategory    | Text          | Varies |       |           | Work the employee is involved     |
| DepartmentID    | Alphanumeric  | 4      |       |           | Identifier for department         |
| WarehouseNumber | Alphanumeric  | 5      |       |           | Identifier for warehouse          |
| LineNumber      | Alphanumeric  | 4      |       |           | Identifier for production line    |


### Product Table Metadata:

| Name          | Type         | Length | Min | Max | Description                   |
|---------------|--------------|--------|-----|-----|-------------------------------|
| ProductNumber | Alphanumeric | Varies |     |     | Unique identifier             |
| ProductType   | Alphanumeric | Varies |     |     | Type of the product           |
| ProductName   | Alphanumeric | Varies |     |     | Name of the product           |
| DesignerID    | Alphanumeric | 4      |     |     | Identifier of designer        |
| Price         | Numeric      | Varies | 4   | 150 | Price in units of currency    |
| Cost          | Numeric      | Varies | 2   | 90  | Cost of item in currency units|
| Color         | Text         | Varies |     |     | Color of item                 |
| Weight        | Numeric      | Varies |0.02 | 10  | Weight of item in pounds      |


 ### Invoice Table Metadata:

| Name              | Type         | Length | Min  | Max  | Description                        |
|-------------------|--------------|--------|------|------|------------------------------------|
| InvoiceNumber     | Alphanumeric | 7      |      |      | Unique identifier for invoice      |
| Total Amount ($)  | Numeric      | Varies | 750  | 5750 | Total monetary amount              |
| VendorNumber      | Alphanumeric | 4      |      |      | Unique identifier for vendor       |
| VendorPaymentType | Text         | Varies |      |      | Type of payment made               |


### Line  Table Metadata:

| Name         | Type         | Length | Min | Max | Description                 |
|--------------|--------------|--------|-----|-----|-----------------------------|
| LineNumber   | Alphanumeric | 4      |     |     | Unique identifier          |
| LineCapacity | Numeric      | 3      | 130 | 230 | Capacity of the line       |
| PhoneNumber  | Alphanumeric | 12     |     |     | Contact phone number       |
| Address      | Text         | Varies |     |     | Physical address of line   |


 ### Vendor Table Metadata:

| Name         | Type         | Length | Min | Max | Description                        |
|--------------|--------------|--------|-----|-----|------------------------------------|
| VendorNumber | Alphanumeric | 4      |     |     | Unique identifier for each vendor  |
| VendorName   | Text         | Varies |     |     | Name of the vendor                 |
| Address      | Alphanumeric | Varies |     |     | Physical address of vendor         |
| PhoneNumber  | Alphanumeric | 12     |     |     | Contact phone number of vendor     |


