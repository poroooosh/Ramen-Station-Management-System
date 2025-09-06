--Variables
--01: Retrieve customer name & order amount.

DECLARE
    v_cust_name Customer.Customer_Name%TYPE;
    v_amount Orders.Total_Amount%TYPE;
BEGIN
    SELECT c.Customer_Name, o.Total_Amount
    INTO v_cust_name, v_amount
    FROM Customer c JOIN Orders o ON c.Customer_ID = o.Customer_ID
    WHERE o.Order_ID = 101;

    DBMS_OUTPUT.PUT_LINE('Customer: ' || v_cust_name || ' | Amount: ' || v_amount);
END;
/


--02: Retrieve staff name & role.

DECLARE
    v_staff_name Staff.Staff_Name%TYPE;
    v_role Staff.Role%TYPE;
BEGIN
    SELECT Staff_Name, Role INTO v_staff_name, v_role
    FROM Staff
    WHERE Staff_ID = 2;

    DBMS_OUTPUT.PUT_LINE('Staff: ' || v_staff_name || ' | Role: ' || v_role);
END;
/
