--Statement level trigger
--01: Trigger before inserting payment info.

CREATE OR REPLACE TRIGGER trg_payment_before
BEFORE INSERT ON Payment_Info
BEGIN
    DBMS_OUTPUT.PUT_LINE('A payment insert operation is about to happen...');
END;
/
 

--02: Trigger after deleting orders.

CREATE OR REPLACE TRIGGER trg_order_delete
AFTER DELETE ON Orders
BEGIN
    DBMS_OUTPUT.PUT_LINE('An order record has been deleted.');
END;
/
