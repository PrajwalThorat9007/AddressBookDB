USE AddressBookService;

-- UC9: Add AddressBook Name and Type

ALTER TABLE Contacts
ADD AddressBookName VARCHAR(50),
ADD AddressBookType VARCHAR(50);

DESCRIBE Contacts;

UPDATE Contacts
SET AddressBookName = 'Personal',
    AddressBookType = 'Friends'
WHERE ContactId = 1;

UPDATE Contacts
SET AddressBookName = 'FamilyBook',
    AddressBookType = 'Family'
WHERE ContactId = 3;

UPDATE Contacts
SET AddressBookName = 'Professional',
    AddressBookType = 'Profession'
WHERE ContactId = 4;

SELECT FirstName, City, AddressBookName, AddressBookType
FROM Contacts;