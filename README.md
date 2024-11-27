**Library Management System**
This repository contains the implementation of a Library Management System designed to manage various aspects of a library, including books, employees, customers, issue and return status, and branches.

Database Schema
The database is structured with the following tables:

1. Branch
Stores information about the library branches.
Branch_no (Primary Key)
Manager_Id
Branch_address
Contact_no

2. Employee
Stores employee details, including the branch each employee works in.
Emp_Id (Primary Key)
Emp_name
Position
Salary
Branch_no (Foreign Key, references Branch)

3. Books
Stores information about the books available in the library.
ISBN (Primary Key)
Book_title
Category
Rental_Price
Status (Available or Not Available)
Author
Publisher

4. Customer
Stores information about the library's customers.
Customer_Id (Primary Key)
Customer_name
Customer_address
Reg_date (Registration date)

5. IssueStatus
Keeps track of the books issued by customers.
Issue_Id (Primary Key)
Issued_cust (Foreign Key, references Customer)
Issued_book_name
Issue_date
Isbn_book (Foreign Key, references Books)

6. ReturnStatus
Keeps track of the books returned by customers.
Return_Id (Primary Key)
Return_cust (Foreign Key, references Customer)
Return_book_name
Return_date
Isbn_book2 (Foreign Key, references Books

**Queries Implemented**
1. Retrieve the book title, category, and rental price of all available books.
2. List the employee names and their respective salaries in descending order of salary.
3. Retrieve the book titles and the corresponding customers who have issued those books.
4. Display the total count of books in each category.
5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
6. List the customer names who registered before 2022-01-01 and have not issued any books yet.
7.  Display the branch numbers and the total count of employees in each branch.
8.  Display the names of customers who have issued books in the month of June 2023.
9.  Retrieve book_title from book table containing history.
10.  Retrieve the branch numbers along with the count of employees for branches having more than 5 employees.
11.  Retrieve the names of employees who manage branches and their respective branch addresses.
12.  Display the names of customers who have issued books with a rental price higher than Rs. 25.
