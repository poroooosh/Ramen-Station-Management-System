--Stored procedure--
--01: stored procedure to update the status of an order.

CREATE OR REPLACE PROCEDURE update_order_status(p_order_id INT, p_status VARCHAR2) IS
BEGIN
    UPDATE Orders SET Status = p_status WHERE Order_ID = p_order_id;
    DBMS_OUTPUT.PUT_LINE('Order ' || p_order_id || ' updated to ' || p_status);
END;
/


--02: stored procedure to insert a new customer.

CREATE OR REPLACE PROCEDURE add_customer(p_id INT, p_name VARCHAR2, p_phone VARCHAR2) IS
BEGIN
    INSERT INTO Customer(Customer_ID, Customer_Name, Customer_Phone)
    VALUES(p_id, p_name, p_phone);
    DBMS_OUTPUT.PUT_LINE('Customer ' || p_name || ' added successfully.');
END;
/
