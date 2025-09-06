--Single-row function
--01: Display customer name in uppercase.

DECLARE
    v_name VARCHAR2(100);
BEGIN
    SELECT UPPER(Customer_Name) INTO v_name FROM Customer WHERE Customer_ID = 1;
    DBMS_OUTPUT.PUT_LINE('Customer Name (Uppercase): ' || v_name);
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
