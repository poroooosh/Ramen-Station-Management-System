--Cursor-based record
--01: List menu items using cursor-based record.

DECLARE
    CURSOR c_menu IS
        SELECT Item_Name, Price FROM Menu;
    v_menu c_menu%ROWTYPE;
BEGIN
    OPEN c_menu;
    LOOP
        FETCH c_menu INTO v_menu;
        EXIT WHEN c_menu%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Item: ' || v_menu.Item_Name || ' Price: ' || v_menu.Price);
    END LOOP;
    CLOSE c_menu;
END;
/
 

--02: List payments using cursor-based record.

DECLARE
    CURSOR c_payment IS
        SELECT Payment_ID, Amount, Method FROM Payment_Info;
    v_pay c_payment%ROWTYPE;
BEGIN
    OPEN c_payment;
    LOOP
        FETCH c_payment INTO v_pay;
        EXIT WHEN c_payment%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Payment ' || v_pay.Payment_ID || ': ' || v_pay.Amount || ' Method: ' || v_pay.Method);
    END LOOP;
    CLOSE c_payment;
END;
/
