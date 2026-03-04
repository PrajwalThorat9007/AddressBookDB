USE AddressBookService;

SELECT * FROM Contacts;

SELECT *
FROM Contacts
WHERE City = 'Pune';

-- UC8: Retrieve entries sorted alphabetically for a given city

SELECT *
FROM Contacts
WHERE City = 'Pune'
ORDER BY FirstName;

SELECT *
FROM Contacts
WHERE City = 'Pune'
ORDER BY FirstName DESC;

SELECT *
FROM Contacts
WHERE City = 'Pune'
ORDER BY FirstName, LastName;