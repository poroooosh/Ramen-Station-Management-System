--Joining
--01: Orders with customer names.

BEGIN
    FOR r IN (
        SELECT o.Order_ID, c.Customer_Name, o.Total_Amount
        FROM Orders o JOIN Customer c ON o.Customer_ID = c.Customer_ID
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Order ' || r.Order_ID || ' | Customer: ' || r.Customer_Name || ' | Amount: ' || r.Total_Amount);
    END LOOP;
END;
/


--02: Customers with their ordered menu items.

BEGIN
    FOR r IN (
        SELECT c.Customer_Name, m.Item_Name
        FROM Customer c
        JOIN Orders o ON c.Customer_ID = o.Customer_ID
        JOIN Order_Menu om ON o.Order_ID = om.Order_ID
        JOIN Menu m ON om.Menu_ID = m.Menu_ID
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Customer: ' || r.Customer_Name || ' ordered ' || r.Item_Name);
    END LOOP;
END;
/