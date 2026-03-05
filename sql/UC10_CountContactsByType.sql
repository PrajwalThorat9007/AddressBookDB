USE AddressBookService;

SELECT FirstName, AddressBookType
FROM Contacts;

-- UC10: Count contacts by AddressBookType

SELECT AddressBookType, COUNT(*) AS TotalContacts
FROM Contacts
GROUP BY AddressBookType;