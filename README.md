# Supply-Chain-DBMS

### Project Overview

Welcome to my detailed database project documentation, which focuses on a system designed for handling inventory and resource management in supply chains. 

### Methodology:

Given below is a concise methdology for this project:

1. Metadata Analysis: This step involves gathering and examining data from various sources within the supply chain. I focus on understanding the data types, allowable values, and other constraints of this data, identifying key fields essential for managing inventory and resources.

2. Cluster Design: Based on my metadata analysis, I group the related data fields into clusters. Each cluster represents a logical grouping of data, such as products, suppliers, or transactions.

3. Defining Interrelations: I then establish how these clusters relate to each other according to business rules. This involves determining relationships like which products are supplied by which suppliers, or how transactions affect inventory levels.

4. ER Diagram Creation: The final step is integrating these clusters and their interrelations into a comprehensive Entity-Relationship (ER) diagram. This diagram serves as a blueprint of my database, visually representing the data structure and how different entities are connected.

5. Normalization: I identify the different dependencies present in my database and seek to eliminate them. In this process, I create a new final ER model diagram using which I will implement the database.

### Metadata

In any Database project, analyzing metadata is the first step. That is exactly what I have done here. A single metadata table is given below. For more explanation, go to Folder titled "Metadata" in this repository.


![image](https://github.com/shaunthom/Supply-Chain-DBMS/assets/134566032/b1ba3266-5e14-4b9e-84c0-38af28d19e78)

### Database Relationship Rules (or Business Rules)

###### Cluster 1: Product-Line Relationships

Rule 1: Each product is produced by one specific production line, forming a one-to-one relationship from 'Product' to 'Production Line'.

Rule 2: Each production line produces only one type of product, reinforcing a one-to-one relationship from 'Production Line' to 'Product'.

###### Cluster 2: Vendor-Material-Warehouse Relationships

Rule 1: Vendors supply many raw materials to various warehouses, establishing one-to-many relationships between vendors, raw materials, and warehouses.

Rule 2: Multiple warehouses can be supplied by multiple vendors, indicating many-to-many relationships.

###### Cluster 3: Operational Unit-Employee Relationships

Rule 1: The company comprises departments, warehouses, and production lines.

Rule 2: Multiple employees are associated with each department, warehouse, or production line, suggesting many-to-one relationships.

Rule 3: Designers (employees) can design multiple products, indicating a one-to-many relationship between designers and products.

###### Cluster 4: Vendor-Invoice Procedures

Rule 1: Vendors issue invoices for supplying raw materials, standardizing transaction procedures.

Rule 2: The accounting department processes these invoices, assigning them responsibility for invoice management.

### Initial ER Model diagram:

Based on the business rules indicated above, I designed individual clusters which was then integrated to give a ER model diagram. Our ER model effectively outlines our company's operational structure. We categorized employees into distinct roles, enhancing data organization and minimizing null entries.
Our database intricately tracks employee roles and their connections to other operational aspects. The Production Line Employee table indicates which employee works on which line, linked to the main Production Line Table that details production capacities. This table connects to the Consumption Table, recording the usage of products and materials. The Consumption Table further links to the Supply Schedule, Product Table, and Raw Material Table, providing insights into material supply, product creation, and material usage. Additionally, the Department Employee Table and Warehouse Table detail employee roles in specific departments and warehouses, respectively. This setup ensures a coherent understanding of how employees, production lines, and materials interrelate. The ER model diagram visually represents these relationships.

![288303728-e50e4b8d-2d2b-426f-a774-fc2700189129](https://github.com/shaunthom/Supply-Chain-DBMS/assets/134566032/1d203412-505e-460b-b093-abf87b101712)


### Primary Key Allocation

Department Table: The DepartmentID serves as the primary key, uniquely identifying each department.

Production Line Table: The Production LineID acts as the primary key, functioning like a serial number for each production line.

Invoice Table: Here, the Invoice Number is the primary key, uniquely tracking each invoice.

Vendor Table: The Vendor Number is the primary key, uniquely identifying each vendor.

Supply Schedule Table: This table uses a Supply Code as the primary key, similar to a tracking number for shipments.

Raw Material Table: The Raw Material ID is the primary key, uniquely identifying each type of material.

Product Table: The Product Number serves as the primary key, similar to an individual barcode for each product.

Consumption Table: This table uses a composite primary key comprising the Product Number and Raw Material ID. The Product Number is a foreign key from the Product Table, and the Raw Material ID is a foreign key from the Raw Material Table. This composite key is essential for tracking the use of various raw materials in the same product.


### Checking for Dependencies and Normalization:

My ER model has been designed, but I identified some dependency issues in my database. I noticed partial dependency in the relationship between ProductNumber, RawMaterialName, and LineNumber, where LineNumber depends only on ProductNumber. Additionally, a transitive dependency was found in the Invoice table, with VendorPaymentType depending on VendorNumber, which in turn depended on InvoiceNumber, leading to potential data update inefficiencies.

To address these, I created a new table named Product and Product Line, containing ProductNumber and LineNumber, clarifying their relationship. We removed LineNumber from the original table, redefining its primary key to include only ProductNumber and RawMaterialName, thus eliminating partial dependency. Another table, Product and Raw Material, lists available raw materials for each product.

For the transitive dependency, I separated the data into two tables: Invoice (tracking invoice numbers and vendor numbers) and Vendor (including VendorPaymentType). This change directly links vendors with their payment types, independent of invoices, and updates the existing Vendor Table to include this new attribute, removing the transitive dependency. My final normalized ER Model diagram reflects these changes:

![norm](https://github.com/shaunthom/Supply-Chain-DBMS/assets/134566032/b3109284-7011-4683-ad7e-5d05c0c994d3)


## SQL Queries - Outputs:


I loaded all the data into the tables in Oracle Apex Database. For instance, the Invoice Table is shown below:



![image](https://github.com/shaunthom/Supply-Chain-DBMS/assets/134566032/c0157f1a-8ad4-4601-9463-e0ab9c4fdd71)

![image](https://github.com/shaunthom/Supply-Chain-DBMS/assets/134566032/a1eadd7b-1d79-4d5f-9e34-18d3a44eb2de)

![image](https://github.com/shaunthom/Supply-Chain-DBMS/assets/134566032/97542cc9-44ff-4c5a-9aa8-9919690f95dc)

![image](https://github.com/shaunthom/Supply-Chain-DBMS/assets/134566032/955ac59a-d54f-4610-a220-1e88b3607fc2)


In conclusion, my project successfully developed an efficient database for supply chain management. I overcame challenges in data organization by applying normalization & creating a clear and functional system. I also got the opportunity to do some JOIN operations and CASE Statements on SQL. It is given below in a different section.

### Additional Operations!

This SQL query calculates the number of employees from a department who are linked to the design of a specific product, the 'Galaxy United Jersey'. It does this by joining two tables: 'Product' and 'Department_Employee', based on a common field, 'DesignerID' in 'Product' and 'Department ID' in 'Department_Employee'. Only those rows where the product is 'Galaxy United Jersey' are considered for the count.


![image](https://github.com/shaunthom/Supply-Chain-DBMS/assets/134566032/3cd7d121-7ff6-4c84-bdfe-bd721f90117b)


This SQL query gathers and categorizes data from invoices, vendors, and departments. It selects invoice numbers, vendor names, and department names, then classifies invoices by their total amount (as high, medium, or low value) and payment types (like credit or cash). It joins data from the Invoice, Vendor, and Department tables based on shared identifiers.

"""
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
    
"""

