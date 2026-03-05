# Address Book Database System

## Project Overview

This project implements an **Address Book Database System** using **MySQL**.
It demonstrates fundamental database concepts including **DDL, DML, normalization, relationships, and query operations**.
The project follows a **use-case driven approach (UC1–UC13)** to progressively build the database structure and functionality.

The database allows storing contact details, categorizing contacts by type (Family, Friends, Profession, etc.), and performing various queries such as filtering, sorting, counting, and joining data.

---

# Technologies Used

* **MySQL Server**
* **MySQL Workbench**
* **Git**
* **GitHub**
* **Git Flow Workflow**

---

# Database Name

```
AddressBookService
```

---

# Project Structure

```
AddressBookDB
│
├── README.md
├── ER_Diagram_AddressBook.png
│
└── sql
     ├── UC1_CreateDatabase.sql
     ├── UC2_CreateContactsTable.sql
     ├── UC3_InsertContacts.sql
     ├── UC4_UpdateContact.sql
     ├── UC5_DeleteContact.sql
     ├── UC6_RetrieveContacts.sql
     ├── UC7_CountContactsByCityState.sql
     ├── UC8_SortedContacts.sql
     ├── UC9_AddAddressBookNameType.sql
     ├── UC10_CountContactsByType.sql
     ├── UC11_ManyToManyMapping.sql
     ├── UC12_ERDiagram.sql
     └── UC13_RetrieveQueriesWithNewSchema.sql
```

---

# Use Case Implementation

## UC1 – Create Address Book Database

Create a database to store address book records.

```sql
CREATE DATABASE IF NOT EXISTS AddressBookService;
```

---

## UC2 – Create Contacts Table

Create a table to store contact information.

Attributes include:

* First Name
* Last Name
* Address
* City
* State
* Zip
* Phone Number
* Email

---

## UC3 – Insert Contacts

Insert contact records into the address book.

Example:

```sql
INSERT INTO Contacts 
(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email)
VALUES ('Prajwal','Thorat','Shivaji Nagar','Pune','Maharashtra','411001','9876543210','prajwal@email.com');
```

---

## UC4 – Edit Existing Contact

Update existing contact information.

Example:

```sql
UPDATE Contacts
SET City = 'Chennai'
WHERE ContactId = 1;
```

---

## UC5 – Delete Contact

Remove a contact using their identifier.

```sql
DELETE FROM Contacts
WHERE ContactId = 2;
```

---

## UC6 – Retrieve Contacts by City or State

Filter contacts based on location.

```sql
SELECT * 
FROM Contacts
WHERE City = 'Pune';
```

---

## UC7 – Count Contacts by City and State

Use aggregation to determine the number of contacts per location.

```sql
SELECT City, COUNT(*) 
FROM Contacts
GROUP BY City;
```

---

## UC8 – Sort Contacts Alphabetically

Retrieve contacts sorted by name.

```sql
SELECT *
FROM Contacts
WHERE City = 'Pune'
ORDER BY FirstName;
```

---

## UC9 – Add Address Book Name and Type

Modify the schema to include contact categories.

```sql
ALTER TABLE Contacts
ADD AddressBookName VARCHAR(50),
ADD AddressBookType VARCHAR(50);
```

---

## UC10 – Count Contacts by Type

Determine how many contacts belong to each category.

```sql
SELECT AddressBookType, COUNT(*)
FROM Contacts
GROUP BY AddressBookType;
```

---

## UC11 – Support Multiple Contact Types

To allow a person to belong to multiple categories, normalization is applied.

New tables:

### AddressBookType

Stores category types.

### ContactTypeMapping

Handles many-to-many relationships between contacts and types.

---

## UC12 – ER Diagram

The ER diagram represents the database structure and relationships between entities.

Entities:

* Contacts
* AddressBookType
* ContactTypeMapping

Relationships:

* One contact can belong to multiple types.
* One type can contain multiple contacts.

---

## UC13 – Retrieve Queries with New Schema

Queries are updated to work with normalized tables using **JOIN operations**.

Example:

```sql
SELECT c.FirstName, c.City, t.TypeName
FROM Contacts c
JOIN ContactTypeMapping m ON c.ContactId = m.ContactId
JOIN AddressBookType t ON m.TypeId = t.TypeId;
```

---

# Database Design

## Entities

### Contacts

Stores personal details of contacts.

### AddressBookType

Stores contact categories.

### ContactTypeMapping

Mapping table implementing the many-to-many relationship.

---

# Key SQL Concepts Demonstrated

* Database creation
* Table creation
* Data insertion
* Data update
* Data deletion
* Filtering with WHERE
* Sorting with ORDER BY
* Aggregation with COUNT and GROUP BY
* Schema modification using ALTER TABLE
* Many-to-many relationships
* JOIN operations
* Database normalization
* ER modeling

---

# Git Workflow

This project follows a **Git Flow based branching strategy**.

Branches used:

```
main
develop
feature/UC*
```

Example workflow:

```
git add .
git commit -m "[Prajwal]:UC*: Description"
git push origin feature/UC*
git flow feature finish -k UC*
git push origin develop
```

---

# How to Run the Project

1. Clone the repository

```
git clone <repository-url>
```

2. Open MySQL Workbench

3. Execute SQL scripts sequentially from the `sql` folder.

Order:

```
UC1 → UC13
```

This will recreate the entire database.

---
