USE AddressBookService;

SELECT * FROM Contacts;

-- UC4: Edit existing contact using name

UPDATE Contacts
SET City = 'Chennai'
WHERE ContactId = 1;