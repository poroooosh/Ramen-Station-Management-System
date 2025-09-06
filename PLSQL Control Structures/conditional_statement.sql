--Conditional statements
--01: IF condition to check order status.

DECLARE
    v_status Orders.Status%TYPE;
BEGIN
    SELECT Status INTO v_status FROM Orders WHERE Order_ID = 102;

    IF v_status = 'Completed' THEN
        DBMS_OUTPUT.PUT_LINE('Order is Completed.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Order is Not Completed.');
    END IF;
END;
/


--02: CASE statement for staff role description.

DECLARE
    v_role Staff.Role%TYPE;
    v_msg VARCHAR2(100);
BEGIN
    SELECT Role INTO v_role FROM Staff WHERE Staff_ID = 3;

    CASE v_role
        WHEN 'Chef' THEN v_msg := 'Prepares food.';
        WHEN 'Cashier' THEN v_msg := 'Handles payments.';
        WHEN 'Manager' THEN v_msg := 'Manages shop.';
        ELSE v_msg := 'Other staff member.';
    END CASE;

    DBMS_OUTPUT.PUT_LINE('Role: ' || v_role || ' - ' || v_msg);
END;
/