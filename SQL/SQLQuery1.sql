CREATE TABLE userdetails (
  firstname NVARCHAR(50),
  secondname NVARCHAR(50),
  dob DATE,
  age INT,
  gender NVARCHAR(10),
  phone_no NVARCHAR(20),
  email_id NVARCHAR(100),
  home_address NVARCHAR(100),
  username NVARCHAR(50),
  registration_date DATETIME DEFAULT GETDATE()
);

select * from userdetails

INSERT INTO userdetails (firstname, secondname, dob, age, gender, phone_no, email_id, home_address, username)
VALUES
  ('Edwin', 'Jose', '1993-08-12', 28, 'Male', '1234567890', 'edwin.jose@example.com', '123 Street, City', 'edwinjose'),
  ('Vinay', 'Padman', '1992-06-18', 29, 'Male', '9876543210', 'vinay.padman@example.com', '456 Avenue, Town', 'vinaypadman'),
  ('Austin', 'Sunil', '1990-12-05', 31, 'Male', '5551234567', 'austin.sunil@example.com', '789 Road, Village', 'austinsunil'),
  ('Shahir', 'S', '1995-03-22', 26, 'Male', '7778889990', 'shahir.s@example.com', '321 Lane, County', 'shahirs'),
  ('Alan', 'Jose', '1988-09-20', 33, 'Male', '4445556667', 'alan.jose@example.com', '654 Boulevard, City', 'alanjose'),
  ('Ravi', 'Kumar', '1991-05-25', 30, 'Male', '1112223334', 'ravi.kumar@example.com', '456 Street, County', 'ravikumar'),
  ('Priya', 'Sharma', '1994-09-15', 27, 'Female', '2223334445', 'priya.sharma@example.com', '753 Road, Village', 'priyasharma'),
  ('Amit', 'Patel', '1990-07-10', 31, 'Male', '6667778889', 'amit.patel@example.com', '852 Boulevard, City', 'amitpatel'),
  ('Deepa', 'Sinha', '1993-03-18', 28, 'Female', '8889990001', 'deepa.sinha@example.com', '963 Lane, County', 'deepasinha'),
  ('Neha', 'Verma', '1989-11-08', 32, 'Female', '1234567890', 'neha.verma@example.com', '123 Street, City', 'nehaverma');

  select * from userdetails;

  delete from userdetails
  where firstname='Amit';

  select * from userdetails

 UPDATE userdetails
 SET age=23
 where firstname='Edwin';

 select * from userdetails;