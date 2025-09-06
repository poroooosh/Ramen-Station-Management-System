-- Customer Table
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100) NOT NULL,
    Customer_Phone VARCHAR(15) UNIQUE
);


--Order Table
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Order_Quantity INT NOT NULL,
    Order_Date DATE NOT NULL,
    Total_Amount DECIMAL(10,2) NOT NULL,
    Status VARCHAR(20) CHECK (Status IN ('Pending','Completed','Cancelled')),
    Customer_ID INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);


--Menu Table
CREATE TABLE Menu (
    Menu_ID INT PRIMARY KEY,
    Item_Name VARCHAR2(100) NOT NULL,
    Price NUMBER(8,2) NOT NULL,
    Availability NUMBER(1) DEFAULT 1 CHECK (Availability IN (0,1))
);


--Order_Menu Table
CREATE TABLE Order_Menu (
    Order_ID INT,
    Menu_ID INT,
    PRIMARY KEY (Order_ID, Menu_ID),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Menu_ID) REFERENCES Menu(Menu_ID)
);


--Payment Table
CREATE TABLE Payment_Info (
    Payment_ID INT PRIMARY KEY,
    Amount NUMBER(10,2) NOT NULL,
    Method VARCHAR2(20) CHECK (Method IN ('Cash','Card','Online')),
    Payment_Date DATE NOT NULL,
    Order_ID INT,
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);


--Supplier Table
CREATE TABLE Supplier (
    Supplier_ID INT PRIMARY KEY,
    Supplier_Name VARCHAR(100) NOT NULL,
    Supplier_Contact_No VARCHAR(15) UNIQUE
);


--Inventory Table
CREATE TABLE Inventory (
    Inventory_ID INT PRIMARY KEY,
    Inventory_Item_Name VARCHAR(100) NOT NULL,
    Quantity_Available INT NOT NULL,
    Supplier_ID INT,
    Staff_ID INT,
    FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID),
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID)
);


--Staff Table
CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY,
    Staff_Name VARCHAR(100) NOT NULL,
    Role VARCHAR(50) CHECK (Role IN ('Admin','Chef','Cashier','Manager')),
    Staff_Phone_No VARCHAR(15) UNIQUE
);


--Employment Table
CREATE TABLE Employment (
    Employment_ID INT PRIMARY KEY,
    Hire_Date DATE NOT NULL,
    Resign_Date DATE,
    Staff_ID INT,
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID)
);

