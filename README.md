# Hotel_Booking_System
The project is a database management system 
## Description of the project :
### The hotel has EMPLOYEES 
- Each employee has a name, social security number, address, salary, sex, job and birthdate. 
### Many employees service customers.
- Each customer described by address, name, unique ID, sex, unique social security number, email, birthdate, multiple phone number. We also keep track of the direct supervisor of each employee.
## Each customer may have several dependents. 
- For each dependent, we keep track of their name, sex, birthdate, and relationship to the customer for insurance purposes.
### One customer can book many rooms, but one room can be booked by many customers in different times and room price’s dependent on the class and type of the room that the customer booked . 
- Each Room described by unique number, unique password, status, type, level, price, view and class type.   
- We keep track of the number of rooms that the customer booked them and the date(start, end)
- All the payments of the customer will be in one bill and one bill should be paid by one customer.
- Each bill has unique ID and may have discount. 
- We keep track of total price and pay time.

### ER Diagram for project covering some points such as: (entities, attributes, relationships, cardinality ratio of relationships, primary keys, attribute types, ...).

![ERD](https://user-images.githubusercontent.com/92521186/175804288-b3908f5e-a5a9-459a-a239-7101381c0e87.png)

### Designing schema of project covering some points such as: , ...).

- relationship mapping (1:1, 1: M, M: N):

![Cardinality Ratio](https://user-images.githubusercontent.com/92521186/175804454-ba2778ae-4d3a-475e-9942-47b215b54e5b.png)

- attributes mapping (composite, multiValued, attribute on relation):

![mapping](https://user-images.githubusercontent.com/92521186/175804292-1ddcae32-40e3-4a14-b761-130616158478.jpeg)

## The steps of project :
1- Creating the tables and relationships of ERD physically on oracle SQL Developer.

2- Using Oracle forms builder to create three data entry forms or any other form with a valid functionality. The forms utilizes all the following :
- Check box
- Radio buttons
- Combo box
- List of Values (LOV)
- Triggers
- Alert
- Master Detail
- Calculated fields (formula & summary)

3- Using Oracle reports builder to create a report covers all the following :
- Group field
- Summary function
- User parameters
