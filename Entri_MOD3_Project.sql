CREATE DATABASE Library;
USE Library;

-- Table creation

CREATE TABLE Branch (
Branch_No INT PRIMARY KEY,
Manager_Id VARCHAR(50),
Branch_Address VARCHAR(100),
Contact_No VARCHAR(20) NOT NULL
);
SELECT * FROM Branch;

CREATE TABLE Employee (
Emp_Id VARCHAR(50) PRIMARY KEY,
Emp_Name VARCHAR(50),
Position VARCHAR(50),
Salary DECIMAL(10,2),
Branch_No INT,
FOREIGN KEY (Branch_No) REFERENCES Branch(Branch_No)
);
SELECT * FROM Employee;

CREATE TABLE Books (
ISBN VARCHAR(50) PRIMARY KEY,
Book_Title VARCHAR(100),
Category VARCHAR(100),
Rental_Price DECIMAL(10,2),
Status ENUM('Yes' , 'No') NOT NULL,
Author VARCHAR(100),
Publisher VARCHAR(100)
);
SELECT * FROM Books;

CREATE TABLE Customer (
Customer_Id VARCHAR(50) PRIMARY KEY,
Customer_Name VARCHAR(50),
Customer_Address VARCHAR(100),
Reg_Date date);
SELECT * FROM Customer;

CREATE TABLE Issue_Status (
Issue_Id VARCHAR(50) PRIMARY KEY,
Issued_Cust VARCHAR(50),
Issued_Book_Name VARCHAR(100),
Issue_Date DATE,
ISBN_Book VARCHAR(50),
FOREIGN KEY (Issued_Cust) REFERENCES Customer(Customer_Id),
FOREIGN KEY (ISBN_Book) REFERENCES Books(ISBN)
);
SELECT * FROM Issue_Status;

CREATE TABLE Return_Status (
Return_Id VARCHAR(50) PRIMARY KEY,
Return_Cust VARCHAR(50),
Return_Book_Name VARCHAR(100),
Return_date DATE,
ISBN_Book2 VARCHAR(50),
FOREIGN KEY (ISBN_Book2) REFERENCES Books(ISBN),
FOREIGN KEY (Return_Cust) REFERENCES Customer(Customer_Id)
);
SELECT * FROM Return_Status;
SHOW TABLES;

-- Inserting values to the tables created

INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no)
VALUES 
(1, 101, '123 Elm Street, City A', '1234567890'),
(2, 102, '456 Maple Avenue, City B', '9876543210'),
(3, 103, '789 Oak Boulevard, City C', '1122334455'),
(4, 104, '321 Pine Road, City D', '9988776655'),
(5, 105, '654 Birch Lane, City E', '8877665544'),
(6, 106, '987 Cedar Drive, City F', '7766554433'),
(7, 107, '147 Spruce Way, City G', '6655443322'),
(8, 108, '258 Willow Path, City H', '5544332211'),
(9, 109, '369 Ash Street, City I', '4433221100'),
(10, 110, '741 Palm Circle, City J', '3322110099');

INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no)
VALUES 
(201, 'Alice', 'Librarian', 35000, 1),
(202, 'Bob', 'Assistant Librarian', 30000, 2),
(203, 'Charlie', 'Manager', 45000, 3),
(204, 'Diana', 'Clerk', 25000, 4),
(205, 'Eve', 'Manager', 50000, 5),
(206, 'Frank', 'Clerk', 24000, 6),
(207, 'Grace', 'Librarian', 38000, 7),
(208, 'Heidi', 'Assistant Librarian', 31000, 8),
(209, 'Ivan', 'Clerk', 26000, 9),
(210, 'Judy', 'Manager', 47000, 10);
INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no)
VALUES 
(110, 'Judy', 'Manager', 47000, 10),
(106, 'Alice', 'Manager', 47000, 10);

INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher)
VALUES 
('9780001', 'Book One', 'Fiction', 15.00, 'yes', 'Author A', 'Publisher X'),
('9780002', 'Book Two', 'Non-Fiction', 20.00, 'yes', 'Author B', 'Publisher Y'),
('9780003', 'Book Three', 'Science', 25.00, 'no', 'Author C', 'Publisher Z'),
('9780004', 'Book Four', 'History', 18.00, 'yes', 'Author D', 'Publisher X'),
('9780005', 'Book Five', 'Biography', 22.00, 'no', 'Author E', 'Publisher Y'),
('9780006', 'Book Six', 'Fiction', 17.00, 'yes', 'Author F', 'Publisher Z'),
('9780007', 'Book Seven', 'Fiction', 19.00, 'yes', 'Author G', 'Publisher X'),
('9780008', 'Book Eight', 'Non-Fiction', 21.00, 'no', 'Author H', 'Publisher Y'),
('9780009', 'Book Nine', 'Science', 23.00, 'yes', 'Author I', 'Publisher Z'),
('9780010', 'Book Ten', 'History', 16.00, 'no', 'Author J', 'Publisher X');
INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher)
VALUES ('9780011', 'Book Nitrate', 'Fiction', 65.00, 'yes', 'Author A', 'Publisher X');

INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date)
VALUES 
(301, 'Tom', '789 Hill Road, City K', '2024-01-01'),
(302, 'Jerry', '123 Sea Lane, City L', '2024-01-05'),
(303, 'Mickey', '456 Valley Street, City M', '2024-01-10'),
(304, 'Minnie', '789 River Boulevard, City N', '2024-01-15'),
(305, 'Donald', '321 Forest Drive, City O', '2024-01-20'),
(306, 'Daisy', '654 Desert Path, City P', '2024-01-25'),
(307, 'Goofy', '987 Mountain Road, City Q', '2024-02-01'),
(308, 'Pluto', '147 Plain Avenue, City R', '2024-02-05'),
(309, 'Huey', '258 Orchard Lane, City S', '2024-02-10'),
(310, 'Louie', '369 Meadow Way, City T', '2024-02-15');
INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date)
VALUES 
(311, 'Tom SA', '78 Hill Road, City K', '2024-01-01');

INSERT INTO Issue_Status (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book)
VALUES 
(401, 301, 'Book One', '2024-03-01', '9780001'),
(402, 302, 'Book Two', '2024-03-02', '9780002'),
(403, 303, 'Book Three', '2024-03-03', '9780003'),
(404, 304, 'Book Four', '2024-03-04', '9780004'),
(405, 305, 'Book Five', '2024-03-05', '9780005'),
(406, 306, 'Book Six', '2024-03-06', '9780006'),
(407, 307, 'Book Seven', '2024-03-07', '9780007'),
(408, 308, 'Book Eight', '2024-03-08', '9780008'),
(409, 309, 'Book Nine', '2024-03-09', '9780009'),
(410, 310, 'Book Ten', '2024-03-10', '9780010');
INSERT INTO Issue_Status (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book)
VALUES 
(411, 311, 'Book Nitrate', '2024-03-01', '9780011');

INSERT INTO Return_Status (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2)
VALUES 
(501, 301, 'Book One', '2024-03-15', '9780001'),
(502, 302, 'Book Two', '2024-03-16', '9780002'),
(503, 303, 'Book Three', '2024-03-17', '9780003'),
(504, 304, 'Book Four', '2024-03-18', '9780004'),
(505, 305, 'Book Five', '2024-03-19', '9780005'),
(506, 306, 'Book Six', '2024-03-20', '9780006'),
(507, 307, 'Book Seven', '2024-03-21', '9780007'),
(508, 308, 'Book Eight', '2024-03-22', '9780008'),
(509, 309, 'Book Nine', '2024-03-23', '9780009'),
(510, 310, 'Book Ten', '2024-03-24', '9780010');

-- Retrieve the book title, category, and rental price of all available books.
SELECT book_title, Category, Rental_Price FROM Books WHERE Status = 'Yes';

-- List the employee names and their respective salaries in descending order of salary.
SELECT Emp_Name, Salary FROM Employee ORDER BY Salary DESC;

-- Retrieve the book titles and the corresponding customers who have issued those books.
SELECT Books.Book_title AS Book_Title, 
Customer.Customer_name AS Customer_Name
FROM 
Issue_Status
JOIN 
Books ON Issue_Status.Isbn_book = Books.ISBN
JOIN 
Customer ON Issue_Status.Issued_cust = Customer.Customer_Id;

-- Display the total count of books in each category.
SELECT Category, COUNT(*) AS Total_Books
FROM Books
GROUP BY Category;

-- Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
SELECT Emp_name, Position
FROM Employee
WHERE Salary > 50000;

-- List the customer names who registered before 2022-01-01 and have not issued any books yet. 
SELECT Customer.Customer_name
FROM Customer
LEFT JOIN Issue_Status ON Customer.Customer_Id = Issue_Status.Issued_cust
WHERE Customer.Reg_date < '2022-01-01' AND Issue_Status.Issue_Id IS NULL;

-- Display the branch numbers and the total count of employees in each branch. 
SELECT Branch_no, COUNT(*) AS Total_Employees
FROM Employee
GROUP BY Branch_no;

-- Display the names of customers who have issued books in the month of June 2023.
SELECT DISTINCT Customer.Customer_name
FROM Issue_Status
JOIN Customer ON Issue_Status.Issued_cust = Customer.Customer_Id
WHERE Issue_date BETWEEN '2023-06-01' AND '2023-06-30';

-- Retrieve book_title from book table containing history.
SELECT Book_title
FROM Books
WHERE Book_title LIKE '%History%';

-- Retrieve the branch numbers along with the count of employees for branches having more than 5 employees
SELECT Branch_no, COUNT(*) AS Total_Employees
FROM Employee
GROUP BY Branch_no
HAVING COUNT(*) > 5;

-- Retrieve the names of employees who manage branches and their respective branch addresses.
SELECT Employee.Emp_name AS Manager_Name, Branch.Branch_address
FROM Branch
JOIN Employee ON Branch.Manager_Id = Employee.Emp_Id;

-- Display the names of customers who have issued books with a rental price higher than Rs. 25.
SELECT DISTINCT Customer.Customer_name,Books.Rental_price
FROM Issue_Status
JOIN Books ON Issue_Status.Isbn_book = Books.ISBN
JOIN Customer ON Issue_Status.Issued_cust = Customer.Customer_Id
WHERE Books.Rental_Price > 25;














