--Loop
--01: Print all customer names using FOR LOOP.

BEGIN
    FOR r IN (SELECT Customer_Name FROM Customer) LOOP
        DBMS_OUTPUT.PUT_LINE('Customer: ' || r.Customer_Name);
    END LOOP;
END;
/


--02: Print first 5 orders using WHILE LOOP.

DECLARE
    v_id NUMBER := 101;
    v_amount Orders.Total_Amount%TYPE;
BEGIN
    WHILE v_id <= 105 LOOP
        SELECT Total_Amount INTO v_amount FROM Orders WHERE Order_ID = v_id;
        DBMS_OUTPUT.PUT_LINE('Order ' || v_id || ' Amount: ' || v_amount);
        v_id := v_id + 1;
    END LOOP;
END;
/
