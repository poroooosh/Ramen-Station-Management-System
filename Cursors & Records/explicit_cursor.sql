--Explicit cursor
--01: Display all customer IDs and names using an explicit cursor.
DECLARE
    CURSOR c_customer IS
        SELECT Customer_ID, Customer_Name FROM Customer;
    v_id Customer.Customer_ID%TYPE;
    v_name Customer.Customer_Name%TYPE;
BEGIN
    OPEN c_customer;
    LOOP
        FETCH c_customer INTO v_id, v_name;
        EXIT WHEN c_customer%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Customer ' || v_id || ': ' || v_name);
    END LOOP;
    CLOSE c_customer;
END;
/
 

--02: Display orders above 500 using an explicit cursor.

DECLARE
    CURSOR c_orders IS
        SELECT Order_ID, Total_Amount FROM Orders WHERE Total_Amount > 500;
    v_id Orders.Order_ID%TYPE;
    v_amount Orders.Total_Amount%TYPE;
BEGIN
    OPEN c_orders;
    LOOP
        FETCH c_orders INTO v_id, v_amount;
        EXIT WHEN c_orders%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Order ' || v_id || ' Amount: ' || v_amount);
    END LOOP;
    CLOSE c_orders;
END;
/
