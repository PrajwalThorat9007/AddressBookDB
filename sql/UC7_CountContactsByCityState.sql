USE AddressBookService;

-- UC7: Insert additional contacts

INSERT INTO Contacts 
(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email)
VALUES
('Amit', 'Sharma', 'Sector 10', 'Delhi', 'Delhi', '110001', '9871111111', 'amit@email.com'),
('Neha', 'Kulkarni', 'JM Road', 'Pune', 'Maharashtra', '411004', '9872222222', 'neha@email.com'),
('Rohit', 'Verma', 'Andheri', 'Mumbai', 'Maharashtra', '400053', '9873333333', 'rohit@email.com'),
('Priya', 'Iyer', 'T Nagar', 'Chennai', 'Tamil Nadu', '600017', '9874444444', 'priya@email.com'),
('Arjun', 'Mehta', 'Navrangpura', 'Ahmedabad', 'Gujarat', '380009', '9875555555', 'arjun@email.com'),
('Kiran', 'Patil', 'Baner', 'Pune', 'Maharashtra', '411045', '9876666666', 'kiran@email.com'),
('Meera', 'Reddy', 'Banjara Hills', 'Hyderabad', 'Telangana', '500034', '9877777777', 'meera@email.com'),
('Vikas', 'Singh', 'Gomti Nagar', 'Lucknow', 'Uttar Pradesh', '226010', '9878888888', 'vikas@email.com'),
('Anjali', 'Gupta', 'Salt Lake', 'Kolkata', 'West Bengal', '700091', '9879999999', 'anjali@email.com');

SELECT * FROM Contacts;

-- Count contacts by city

SELECT City, COUNT(*) AS TotalContacts
FROM Contacts
GROUP BY City;

-- Count contacts by state

SELECT State, COUNT(*) AS TotalContacts
FROM Contacts
GROUP BY State;