--Table-based record
--01: Insert a new staff member using a table-based record.

DECLARE
    v_staff Staff%ROWTYPE;
BEGIN
    v_staff.Staff_ID := 10;
    v_staff.Staff_Name := 'Hasan Ali';
    v_staff.Role := 'Chef';
    v_staff.Staff_Phone_No := '01712345678';

    INSERT INTO Staff VALUES v_staff;
    DBMS_OUTPUT.PUT_LINE('Staff Inserted: ' || v_staff.Staff_Name);
END;
/


--02: Insert a new supplier using a table-based record.

DECLARE
    v_sup Supplier%ROWTYPE;
BEGIN
    v_sup.Supplier_ID := 10;
    v_sup.Supplier_Name := 'Fresh Market';
    v_sup.Supplier_Contact_No := '01855554444';

    INSERT INTO Supplier VALUES v_sup;
    DBMS_OUTPUT.PUT_LINE('Supplier Added: ' || v_sup.Supplier_Name);
END;
/
