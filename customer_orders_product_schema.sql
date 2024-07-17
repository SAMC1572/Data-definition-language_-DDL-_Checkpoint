-- Step 1: Create Customer Table
CREATE TABLE Customer (
    Customer_id VARCHAR2(20) PRIMARY KEY,
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tel NUMBER NOT NULL
);

-- Step 2: Create Product Table
CREATE TABLE Product (
    Product_id VARCHAR2(20) PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER NOT NULL
);

-- Step 3: Create Orders Table
CREATE TABLE Orders (
    Customer_id VARCHAR2(20),
    Product_id VARCHAR2(20),
    Quantity_Total NUMBER NOT NULL,
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);

-- Step 4: Add Category Column to Product Table
ALTER TABLE Product
ADD Category VARCHAR2(20);

-- Step 5: Add OrderDate Column to Orders Table
ALTER TABLE Orders
ADD OrderDate DATE DEFAULT SYSDATE;
