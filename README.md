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

### Before Normalization:

![288303728-e50e4b8d-2d2b-426f-a774-fc2700189129](https://github.com/shaunthom/Supply-Chain-DBMS/assets/134566032/1d203412-505e-460b-b093-abf87b101712)




### Normalization:


![norm](https://github.com/shaunthom/Supply-Chain-DBMS/assets/134566032/b3109284-7011-4683-ad7e-5d05c0c994d3)
