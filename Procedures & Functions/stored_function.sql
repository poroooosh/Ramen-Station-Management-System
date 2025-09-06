--Stored function
--01: stored function to return the total number of orders placed by a given customer.

CREATE OR REPLACE FUNCTION get_customer_orders(p_customer_id INT)
RETURN NUMBER IS
    v_total NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_total
    FROM Orders
    WHERE Customer_ID = p_customer_id;

    RETURN v_total;
END;
/


--02: stored function to return the total payment amount for a given order.

CREATE OR REPLACE FUNCTION get_order_payment(p_order_id INT)
RETURN NUMBER IS
    v_amount NUMBER;
BEGIN
    SELECT Amount INTO v_amount
    FROM Payment_Info
    WHERE Order_ID = p_order_id;

    RETURN v_amount;
END;
/





