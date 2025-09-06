--Operators
--01: Calculate final bill with 15% VAT.

DECLARE
    v_amount Orders.Total_Amount%TYPE;
    v_final NUMBER(10,2);
BEGIN
    SELECT Total_Amount INTO v_amount FROM Orders WHERE Order_ID = 104;

    v_final := v_amount + (v_amount * 0.15); -- using + and * operators

    DBMS_OUTPUT.PUT_LINE('Order 104 Final Amount: ' || v_final);
END;
/


--02: Increase inventory quantity by 50.

DECLARE
    v_qty Inventory.Quantity_Available%TYPE;
BEGIN
    SELECT Quantity_Available INTO v_qty FROM Inventory WHERE Inventory_ID = 2;

    v_qty := v_qty + 50; -- assignment operator

    UPDATE Inventory SET Quantity_Available = v_qty WHERE Inventory_ID = 2;

    DBMS_OUTPUT.PUT_LINE('Updated Quantity: ' || v_qty);
END;
/