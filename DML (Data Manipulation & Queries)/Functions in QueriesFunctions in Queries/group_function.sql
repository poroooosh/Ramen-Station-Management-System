--Group function
--Question 01: Count completed orders.

DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM Orders WHERE Status='Completed';
    DBMS_OUTPUT.PUT_LINE('Completed Orders: ' || v_count);
END;
/
 

--02: Find average price of menu items.

DECLARE
    v_avg NUMBER(10,2);
BEGIN
    SELECT AVG(Price) INTO v_avg FROM Menu;
    DBMS_OUTPUT.PUT_LINE('Average Menu Price: ' || ROUND(v_avg,2));
END;
/
