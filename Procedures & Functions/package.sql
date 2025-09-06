--Package
--01: Package for customer operations.

CREATE OR REPLACE PACKAGE pkg_customer IS
    FUNCTION get_total_orders(p_customer_id INT) RETURN NUMBER;
    PROCEDURE add_new_customer(p_id INT, p_name VARCHAR2, p_phone VARCHAR2);
END pkg_customer;
/

CREATE OR REPLACE PACKAGE BODY pkg_customer IS
    FUNCTION get_total_orders(p_customer_id INT) RETURN NUMBER IS
        v_count NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_count FROM Orders WHERE Customer_ID = p_customer_id;
        RETURN v_count;
    END;

    PROCEDURE add_new_customer(p_id INT, p_name VARCHAR2, p_phone VARCHAR2) IS
    BEGIN
        INSERT INTO Customer VALUES (p_id, p_name, p_phone);
    END;
END pkg_customer;
/
 

--02: Package for order operations.

CREATE OR REPLACE PACKAGE pkg_order IS
    FUNCTION get_order_amount(p_order_id INT) RETURN NUMBER;
    PROCEDURE update_status(p_order_id INT, p_status VARCHAR2);
END pkg_order;
/

CREATE OR REPLACE PACKAGE BODY pkg_order IS
    FUNCTION get_order_amount(p_order_id INT) RETURN NUMBER IS
        v_amt NUMBER;
    BEGIN
        SELECT Total_Amount INTO v_amt FROM Orders WHERE Order_ID = p_order_id;
        RETURN v_amt;
    END;

    PROCEDURE update_status(p_order_id INT, p_status VARCHAR2) IS
    BEGIN
        UPDATE Orders SET Status = p_status WHERE Order_ID = p_order_id;
    END;
END pkg_order;
