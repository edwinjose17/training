CREATE PROCEDURE sp_CRUDUserDetails
    @operation NVARCHAR(10),
    @firstname NVARCHAR(50) = NULL,
    @secondname NVARCHAR(50) = NULL,
    @dob DATE = NULL,
    @age INT = NULL,
    @gender NVARCHAR(10) = NULL,
    @phone_no NVARCHAR(20) = NULL,
    @email_id NVARCHAR(100) = NULL,
    @home_address NVARCHAR(100) = NULL,
    @username NVARCHAR(50) = NULL
AS
BEGIN
    IF @operation = 'CREATE'
    BEGIN
        INSERT INTO userdetails (firstname, secondname, dob, age, gender, phone_no, email_id, home_address, username)
        VALUES (@firstname, @secondname, @dob, @age, @gender, @phone_no, @email_id, @home_address, @username)
    END
    ELSE IF @operation = 'READ'
    BEGIN
        SELECT * FROM userdetails
    END
    ELSE IF @operation = 'UPDATE'
    BEGIN
        UPDATE userdetails
        SET firstname = ISNULL(@firstname, firstname),
            secondname = ISNULL(@secondname, secondname),
            dob = ISNULL(@dob, dob),
            age = ISNULL(@age, age),
            gender = ISNULL(@gender, gender),
            phone_no = ISNULL(@phone_no, phone_no),
            email_id = ISNULL(@email_id, email_id),
            home_address = ISNULL(@home_address, home_address)
        WHERE username = @username
    END
    ELSE IF @operation = 'DELETE'
    BEGIN
        DELETE FROM userdetails
        WHERE username = @username
    END
END

EXEC sp_CRUDUserDetails

EXEC sp_CRUDUserDetails 'READ'

EXEC sp_CRUDUserDetails 

EXEC sp_CRUDUserDetails
