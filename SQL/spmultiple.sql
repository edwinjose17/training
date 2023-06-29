CREATE PROCEDURE sp_InsertUserDetails
    @firstname NVARCHAR(50),
    @secondname NVARCHAR(50),
    @dob DATE,
    @age INT,
    @gender NVARCHAR(10),
    @phone_no NVARCHAR(20),
    @email_id NVARCHAR(100),
    @home_address NVARCHAR(100),
    @username NVARCHAR(50)
AS
BEGIN

    INSERT INTO userdetails (firstname, secondname, dob, age, gender, phone_no, email_id, home_address, username)
    VALUES (@firstname, @secondname, @dob, @age, @gender, @phone_no, @email_id, @home_address, @username)
END



CREATE PROCEDURE sp_GetUserDetails
AS
BEGIN
    SELECT * FROM userdetails
END

CREATE PROCEDURE sp_UpdateUserDetails
    @firstname NVARCHAR(50),
    @age INT
AS
BEGIN
    UPDATE userdetails
    SET age = @age
    WHERE firstname = @firstname
END


CREATE PROCEDURE sp_DeleteUserDetails
    @username NVARCHAR(50)
AS
BEGIN
    DELETE FROM userdetails
    WHERE username = @username
END



