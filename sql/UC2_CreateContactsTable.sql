USE AddressBookService;
-- UC2: Create Contacts Table

CREATE TABLE Contacts (
    ContactId INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    Zip VARCHAR(10),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);