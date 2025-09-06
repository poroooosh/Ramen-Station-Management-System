--Row level trigger
--01: Trigger to log customer insertion.

CREATE OR REPLACE TRIGGER trg_customer_insert
AFTER INSERT ON Customer
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('New Customer Added: ' || :NEW.Customer_Name);
END;
/
 

--02: Trigger to track order status update.

CREATE OR REPLACE TRIGGER trg_order_update
AFTER UPDATE ON Orders
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Order ' || :OLD.Order_ID || ' updated from ' || :OLD.Status || ' to ' || :NEW.Status);
END;
/
