--Customer Table
INSERT INTO Customer (Customer_ID, Customer_Name, Customer_Phone) VALUES (1, 'Sadik', '01711111111');
INSERT INTO Customer (Customer_ID, Customer_Name, Customer_Phone) VALUES (2, 'Porosh', '01822222222');
INSERT INTO Customer (Customer_ID, Customer_Name, Customer_Phone) VALUES (3, 'Rakib', '01933333333');
INSERT INTO Customer (Customer_ID, Customer_Name, Customer_Phone) 
VALUES (4, 'Tanvir', '01744444444');
INSERT INTO Customer (Customer_ID, Customer_Name, Customer_Phone) 
VALUES (5, 'Shuvo', '01855555555');


--Orders Table
INSERT INTO Orders (Order_ID, Order_Quantity, Order_Date, Total_Amount, Status, Customer_ID) 
VALUES (101, 2, TO_DATE('2025-08-20','YYYY-MM-DD'), 450.00, 'Completed', 1);

INSERT INTO Orders (Order_ID, Order_Quantity, Order_Date, Total_Amount, Status, Customer_ID) 
VALUES (102, 1, TO_DATE('2025-08-21','YYYY-MM-DD'), 250.00, 'Pending', 2);

INSERT INTO Orders (Order_ID, Order_Quantity, Order_Date, Total_Amount, Status, Customer_ID) 
VALUES (103, 3, TO_DATE('2025-08-22','YYYY-MM-DD'), 750.00, 'Completed', 3);

INSERT INTO Orders (Order_ID, Order_Quantity, Order_Date, Total_Amount, Status, Customer_ID) 
VALUES (104, 4, TO_DATE('2025-08-23','YYYY-MM-DD'), 900.00, 'Completed', 1);

INSERT INTO Orders (Order_ID, Order_Quantity, Order_Date, Total_Amount, Status, Customer_ID) 
VALUES (105, 2, TO_DATE('2025-08-24','YYYY-MM-DD'), 360.00, 'Pending', 2);


--Menu Table
INSERT INTO Menu (Menu_ID, Item_Name, Price, Availability) VALUES (1, 'Chicken Ramen', 220.00, 1);
INSERT INTO Menu (Menu_ID, Item_Name, Price, Availability) VALUES (2, 'Beef Ramen', 250.00, 1);
INSERT INTO Menu (Menu_ID, Item_Name, Price, Availability) VALUES (3, 'Veg Ramen', 180.00, 1);
INSERT INTO Menu (Menu_ID, Item_Name, Price, Availability) VALUES (4, 'Miso Soup', 100.00, 0);
INSERT INTO Menu (Menu_ID, Item_Name, Price, Availability) VALUES (5, 'Spicy Pork Ramen', 280.00, 1);


--Order_Menu Table
INSERT INTO Order_Menu (Order_ID, Menu_ID) VALUES (101, 1);
INSERT INTO Order_Menu (Order_ID, Menu_ID) VALUES (101, 2);
INSERT INTO Order_Menu (Order_ID, Menu_ID) VALUES (102, 3);
INSERT INTO Order_Menu (Order_ID, Menu_ID) VALUES (103, 2);
INSERT INTO Order_Menu (Order_ID, Menu_ID) VALUES (103, 4);


--Payment Table
INSERT INTO Payment_Info (Payment_ID, Amount, Method, Payment_Date, Order_ID) 
VALUES (501, 450.00, 'Cash', TO_DATE('2025-08-20','YYYY-MM-DD'), 101);

INSERT INTO Payment_Info (Payment_ID, Amount, Method, Payment_Date, Order_ID) 
VALUES (502, 250.00, 'Card', TO_DATE('2025-08-21','YYYY-MM-DD'), 102);

INSERT INTO Payment_Info (Payment_ID, Amount, Method, Payment_Date, Order_ID) 
VALUES (503, 750.00, 'Online', TO_DATE('2025-08-22','YYYY-MM-DD'), 103);

INSERT INTO Payment_Info (Payment_ID, Amount, Method, Payment_Date, Order_ID) 
VALUES (504, 900.00, 'Cash', TO_DATE('2025-08-23','YYYY-MM-DD'), 104);

INSERT INTO Payment_Info (Payment_ID, Amount, Method, Payment_Date, Order_ID) 
VALUES (505, 360.00, 'Card', TO_DATE('2025-08-24','YYYY-MM-DD'), 105);


--Supplier Table
INSERT INTO Supplier (Supplier_ID, Supplier_Name, Supplier_Contact_No) VALUES (1, 'Fresh Foods Ltd.', '01744444444');
INSERT INTO Supplier (Supplier_ID, Supplier_Name, Supplier_Contact_No) VALUES (2, 'Agro Supplier', '01855555555');
INSERT INTO Supplier (Supplier_ID, Supplier_Name, Supplier_Contact_No) VALUES (3, 'Meat World', '01966666666');
INSERT INTO Supplier (Supplier_ID, Supplier_Name, Supplier_Contact_No) VALUES (4, 'Veggie House', '01677777777');
INSERT INTO Supplier (Supplier_ID, Supplier_Name, Supplier_Contact_No) VALUES (5, 'Spice Hub', '01588888888');


--Staff Table
INSERT INTO Staff (Staff_ID, Staff_Name, Role, Staff_Phone_No) VALUES (1, 'Anisur Rahman', 'Admin', '01766666666');
INSERT INTO Staff (Staff_ID, Staff_Name, Role, Staff_Phone_No) VALUES (2, 'Mizanur Rahman', 'Chef', '01877777777');
INSERT INTO Staff (Staff_ID, Staff_Name, Role, Staff_Phone_No) VALUES (3, 'Shakil Ahmed', 'Cashier', '01988888888');
INSERT INTO Staff (Staff_ID, Staff_Name, Role, Staff_Phone_No) VALUES (4, 'Rafiq Hasan', 'Waiter', '01799999999');
INSERT INTO Staff (Staff_ID, Staff_Name, Role, Staff_Phone_No) VALUES (5, 'Tariqul Islam', 'Manager', '01822222222');


--Inventory Table
INSERT INTO Inventory (Inventory_ID, Inventory_Item_Name, Quantity_Available, Supplier_ID, Staff_ID) 
VALUES (1, 'Chicken Stock', 50, 1, 2);
INSERT INTO Inventory (Inventory_ID, Inventory_Item_Name, Quantity_Available, Supplier_ID, Staff_ID) 
VALUES (2, 'Noodles Pack', 200, 2, 2);
INSERT INTO Inventory (Inventory_ID, Inventory_Item_Name, Quantity_Available, Supplier_ID, Staff_ID) 
VALUES (3, 'Veggies', 100, 1, 2);
INSERT INTO Inventory (Inventory_ID, Inventory_Item_Name, Quantity_Available, Supplier_ID, Staff_ID) 
VALUES (4, 'Pork Meat', 40, 3, 2);
INSERT INTO Inventory (Inventory_ID, Inventory_Item_Name, Quantity_Available, Supplier_ID, Staff_ID) 
VALUES (5, 'Spices Mix', 70, 5, 2);


--Employment Table
INSERT INTO Employment (Employment_ID, Hire_Date, Resign_Date, Staff_ID) VALUES (1001, '2023-01-01', NULL, 1);
INSERT INTO Employment (Employment_ID, Hire_Date, Resign_Date, Staff_ID) VALUES (1002, '2023-02-01', NULL, 2);
INSERT INTO Employment (Employment_ID, Hire_Date, Resign_Date, Staff_ID) VALUES (1003, '2023-03-01', NULL, 3);
INSERT INTO Employment (Employment_ID, Hire_Date, Resign_Date, Staff_ID) VALUES (1004, '2023-04-01', NULL, 4);
INSERT INTO Employment (Employment_ID, Hire_Date, Resign_Date, Staff_ID) VALUES (1005, '2023-05-01', NULL, 5);


