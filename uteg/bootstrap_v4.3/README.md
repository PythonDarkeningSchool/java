# Tables creation

```mysql
-- =============================================
-- Humberto Perez Rodriguez
-- Description: Create university tables
-- Last Updated date: March 13st 2019
-- Naming convention: <index or key type>_<table name>_<column 1>_<column 2>_<column n>
-- PK_ for primary keys
-- UK_ for unique keys
-- IX_ for non clustered non unique indexes
-- UX_ for unique indexes
-- =============================================

CREATE TABLE Class(
ClassID INTEGER AUTO_INCREMENT NOT NULL,
ClassName VARCHAR(50) UNIQUE NOT NULL,
PRIMARY KEY(ClassID)
);

CREATE TABLE Careers(
CareerID INTEGER AUTO_INCREMENT NOT NULL,
CareerName VARCHAR(50) UNIQUE NOT NULL,
PRIMARY KEY(CareerID)
);

CREATE TABLE Student(
StudentID INTEGER PRIMARY KEY NOT NULL,
StudentName VARCHAR(50) NOT NULL,
StudentLastName VARCHAR(50) NOT NULL,
StudentEmail VARCHAR(50) NOT NULL,
StudentCareer VARCHAR(50) NOT NULL,
StudentClass VARCHAR(50) NOT NULL,
-- FOREIGN KEYS
-- [FK_Student_StudentCareer_Careers_CareerName]
FOREIGN KEY([StudentCareer]) REFERENCES Careers([CareerName]),
-- [FK_Student_StudentClass_Class_ClassName]
FOREIGN KEY([StudentClass]) REFERENCES Class([ClassName])
);
```

