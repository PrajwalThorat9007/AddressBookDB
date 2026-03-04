USE AddressBookService;

SELECT * FROM Contacts;

-- UC6: Retrieve contacts belonging to a specific city

SELECT *
FROM Contacts
WHERE City = 'Pune';

-- Retrieve contacts belonging to a specific state

SELECT *
FROM Contacts
WHERE State = 'Maharashtra';

SELECT *
FROM Contacts
WHERE City = 'Chennai'
OR State = 'Maharashtra';