USE AddressBookService;

-- UC3: Insert New Contact

INSERT INTO Contacts 
(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email)
VALUES
('Prajwal', 'Thorat', 'Shivaji Nagar', 'Pune', 'Maharashtra', '411001', '9876543210', 'prajwal@email.com');

SELECT * FROM Contacts;

INSERT INTO Contacts 
(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email)
VALUES
('Rahul', 'Patil', 'MG Road', 'Mumbai', 'Maharashtra', '400001', '9123456789', 'rahul@email.com'),
('Sneha', 'Joshi', 'FC Road', 'Pune', 'Maharashtra', '411002', '9988776655', 'sneha@email.com');