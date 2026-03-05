USE AddressBookService;

SELECT *
FROM Contacts
WHERE City = 'Pune';

SELECT c.FirstName, c.City, t.TypeName
FROM Contacts c
JOIN ContactTypeMapping m ON c.ContactId = m.ContactId
JOIN AddressBookType t ON m.TypeId = t.TypeId;

SELECT City, COUNT(*) AS TotalContacts
FROM Contacts
GROUP BY City;

SELECT State, COUNT(*) AS TotalContacts
FROM Contacts
GROUP BY State;

SELECT *
FROM Contacts
WHERE City = 'Pune'
ORDER BY FirstName;

SELECT t.TypeName, COUNT(*) AS TotalContacts
FROM AddressBookType t
JOIN ContactTypeMapping m ON t.TypeId = m.TypeId
GROUP BY t.TypeName;

SELECT c.FirstName, c.City, c.State, t.TypeName
FROM Contacts c
JOIN ContactTypeMapping m ON c.ContactId = m.ContactId
JOIN AddressBookType t ON m.TypeId = t.TypeId
ORDER BY c.FirstName;