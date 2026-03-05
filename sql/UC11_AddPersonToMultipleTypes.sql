USE AddressBookService;

-- UC11: Create AddressBookType table

CREATE TABLE AddressBookType (
    TypeId INT AUTO_INCREMENT PRIMARY KEY,
    TypeName VARCHAR(50)
);

INSERT INTO AddressBookType (TypeName)
VALUES
('Family'),
('Friends'),
('Profession');

SELECT * FROM AddressBookType;

-- Mapping table

CREATE TABLE ContactTypeMapping (
    ContactId INT,
    TypeId INT,
    PRIMARY KEY (ContactId, TypeId),
    FOREIGN KEY (ContactId) REFERENCES Contacts(ContactId),
    FOREIGN KEY (TypeId) REFERENCES AddressBookType(TypeId)
);

INSERT INTO ContactTypeMapping
VALUES
(3,1),
(3,2);

SELECT *
FROM ContactTypeMapping;

SELECT c.FirstName, t.TypeName
FROM Contacts c
JOIN ContactTypeMapping m ON c.ContactId = m.ContactId
JOIN AddressBookType t ON m.TypeId = t.TypeId;