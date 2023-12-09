# Supply-Chain-DBMS

### Project Overview

Welcome to my detailed database project documentation, which focuses on a system designed for handling inventory and resource management in supply chains. My database development began with analyzing metadata, followed by designing clusters and establishing their interrelations based on business rules. I finally created a comprehensive ER diagram by integrating these clusters. Of course, I identified primary keys and foreign keys before drawing the final ER model diagram!

### Metadata

In any Database project, analyzing metadata is the first step. That is exactly what I have done here. A single metadata table is given below. For more explanation, go to Folder titled "Metadata" in this repository.

Name	              Type	         Length 	Min	 Max        	Description
DepartmentID	    Alphanumeric	     4			              Unique identifier
DepartmentName	  Text	           Varies			            Name of department
Location         	Alphanumeric	   Varies			            Physical location
NumberOfEmployees	Integer	           1	     2 	  4	      Total number of employees
PhoneNumber	       Alphanumeric   	14		              	Contact phone number

![image](https://github.com/shaunthom/Supply-Chain-DBMS/assets/134566032/b1ba3266-5e14-4b9e-84c0-38af28d19e78)



### Before Normalization:

![288303728-e50e4b8d-2d2b-426f-a774-fc2700189129](https://github.com/shaunthom/Supply-Chain-DBMS/assets/134566032/1d203412-505e-460b-b093-abf87b101712)




### Normalization:


![norm](https://github.com/shaunthom/Supply-Chain-DBMS/assets/134566032/b3109284-7011-4683-ad7e-5d05c0c994d3)
