--Subquery
--01: Customers with orders above average amount.

BEGIN
    FOR r IN (
        SELECT c.Customer_Name, o.Total_Amount
        FROM Customer c JOIN Orders o ON c.Customer_ID = o.Customer_ID
        WHERE o.Total_Amount > (SELECT AVG(Total_Amount) FROM Orders)
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Customer: ' || r.Customer_Name || ' | Amount: ' || r.Total_Amount);
    END LOOP;
END;
/


--02: Staff still working .

BEGIN
    FOR r IN (
        SELECT Staff_Name FROM Staff
        WHERE Staff_ID IN (SELECT Staff_ID FROM Employment WHERE Resign_Date IS NULL)
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Active Staff: ' || r.Staff_Name);
    END LOOP;
END;
/