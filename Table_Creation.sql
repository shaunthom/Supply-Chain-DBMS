CREATE TABLE Department (
    DepartmentID VARCHAR2(4),
    DepartmentName VARCHAR2(50),
    StreetAddress VARCHAR2(50),
    City VARCHAR2(50),
    NumberOfEmployees INT,
    PhoneNumber VARCHAR2(20),
    PRIMARY KEY (DepartmentID)
);

CREATE TABLE ProductionLine (
    LineNumber VARCHAR2(20),
    LineCapacity NUMBER,
    PhoneNumber VARCHAR2(20),
    StreetAddress VARCHAR2(100),
    City VARCHAR2(50),
    Region VARCHAR2(2),
    ZipCode VARCHAR2(10),
    PRIMARY KEY (LineNumber)
);

CREATE TABLE Warehouse (
    WarehouseNumber VARCHAR2(20),
    StreetAddress VARCHAR2(100),
    City VARCHAR2(50),
    PhoneNumber VARCHAR2(20),
    PRIMARY KEY (WarehouseNumber)
);

CREATE TABLE Vendor (
    VendorNumber VARCHAR2(20),
    VendorName VARCHAR2(100),
    StreetAddress VARCHAR2(100),
    City VARCHAR2(50),
    PhoneNumber VARCHAR2(20),
    VendorPaymentType VARCHAR2(20),
    PRIMARY KEY (VendorNumber)
);

CREATE TABLE Invoice (
    InvoiceNumber VARCHAR2(20),
    TotalAmount NUMBER,
    VendorNumber VARCHAR2(20),
    DepartmentID VARCHAR2(20),
    PRIMARY KEY (InvoiceNumber),
    FOREIGN KEY (VendorNumber) REFERENCES Vendor(VendorNumber),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Employee(
    EmployeeID VARCHAR2(5),
    FIRSTNAME VARCHAR2(15),
    LASTNAME VARCHAR2(15),
    POSITION VARCHAR2(50),
    SALARY NUMBER,
    WORKCATEGORY VARCHAR2(50),
    PRIMARY KEY (EmployeeID)
);

CREATE TABLE Employee_Department (
    EmployeeID VARCHAR2(20),
    DepartmentID VARCHAR2(20),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
    PRIMARY KEY (EmployeeID, DepartmentID)
);


CREATE TABLE Employee_Warehouse (
    EmployeeID VARCHAR2(20),
    WarehouseNumber VARCHAR2(20),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (WarehouseNumber) REFERENCES Warehouse(WarehouseNumber),
    PRIMARY KEY (EmployeeID, WarehouseNumber)
);


CREATE TABLE Employee_ProductionLine (
    EmployeeID VARCHAR2(20),
    LineNumber VARCHAR2(20),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (LineNumber) REFERENCES ProductionLine(LineNumber),
    PRIMARY KEY (EmployeeID, LineNumber)
);


CREATE TABLE Product (
    ProductNumber VARCHAR2(20),
    ProductType VARCHAR2(50),
    ProductName VARCHAR2(100),
    DesignerID VARCHAR2(20),
    Price NUMBER,
    Cost NUMBER,
    Color VARCHAR2(20),
    Weight_lbs NUMBER,
    PRIMARY KEY (ProductNumber),
    FOREIGN KEY (DesignerID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE Rawmaterial1 (
    ProductNumber VARCHAR2(6),
    RawmaterialName VARCHAR2(20),
    FOREIGN KEY (ProductNumber) REFERENCES Product(ProductNumber)
);

ALTER TABLE Rawmaterial1
ADD CONSTRAINT Rawmaterial1_pk PRIMARY KEY (ProductNumber, RawmaterialName);


CREATE TABLE Rawmaterial2 (
    ProductNumber VARCHAR2(6),
    LineNumber VARCHAR2(20),
    FOREIGN KEY (ProductNumber) REFERENCES Product(ProductNumber),
    FOREIGN KEY (LineNumber) REFERENCES ProductionLine(LineNumber)
);

ALTER TABLE Rawmaterial2
ADD CONSTRAINT Rawmaterial2_pk PRIMARY KEY (ProductNumber, LineNumber);


CREATE TABLE SupplySchedule (
    SupplyCode VARCHAR2(20) PRIMARY KEY,
    ProductNumber VARCHAR2(20),
    RawmaterialName VARCHAR2(100),
    WarehouseNumber VARCHAR2(20),
    VendorNumber VARCHAR2(20),
    Date DATE,
    FOREIGN KEY (ProductNumber, RawmaterialName) REFERENCES RawMaterial1(ProductNumber,RawMaterialName),
    FOREIGN KEY (WarehouseNumber) REFERENCES Warehouse(WarehouseNumber),
    FOREIGN KEY (VendorNumber) REFERENCES Vendor(VendorNumber)
);
