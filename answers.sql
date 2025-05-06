-- Question 1

-- Create the new 1NF-compliant table structure
CREATE TABLE ProductDetail(
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100)
);

-- Insert the normalized data by splitting the product lists
INSERT INTO ProductDetail(OrderID, CustomerName, Product)
VALUES 
    (101, 'John Doe', 'Laptop'),
    (101, 'John Doe', 'Mouse'),
    (102, 'Jane Smith', 'Tablet'),
    (102, 'Jane Smith', 'Keyboard'),
    (102, 'Jane Smith', 'Mouse'),
    (103, 'Emily Clark', 'Phone');

    -- Question 2

    -- Step 1: Create Orders table to store order-specific information
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Step 2: Create Orders table to store product details for each order
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);


-- Step 3: Insert data into the normalized tables
-- First insert order information
INSERT INTO Orders (OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');


CREATE TABLE Product (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
INSERT INTO Product (OrderID, Product, Quantity)
VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);
