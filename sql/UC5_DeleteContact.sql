USE AddressBookService;

SELECT * FROM Contacts;

-- UC5: Delete contact

DELETE FROM Contacts
WHERE ContactId = 2;

SELECT * FROM Contacts;