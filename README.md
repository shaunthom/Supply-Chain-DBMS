# Supply-Chain-DBMS

### Project Overview

Welcome to my detailed database project documentation, which focuses on a system designed for handling inventory and resource management in supply chains. My database development began with analyzing metadata, followed by designing clusters and establishing their interrelations based on business rules. I finally created a comprehensive ER diagram by integrating these clusters. Of course, I identified primary keys and foreign keys before drawing the final ER model diagram!

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


### Normalization:


![norm](https://github.com/shaunthom/Supply-Chain-DBMS/assets/134566032/b3109284-7011-4683-ad7e-5d05c0c994d3)
