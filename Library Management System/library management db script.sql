--Table: Genre
CREATE TABLE Genre (
   GenreID INT PRIMARY KEY,
   GenreName VARCHAR(100) NOT NULL
);

Select * from Genre;

--Table: Member
CREATE TABLE Member (
   MemberID INT PRIMARY KEY,
   Name VARCHAR(255) NOT NULL,
   Address VARCHAR(255),
   Phone VARCHAR(20),
   Email VARCHAR(100) UNIQUE
);

select * from Member;
 
--Table: MembershipType
CREATE TABLE MembershipType (
   MembershipTypeID INT PRIMARY KEY,
   TypeName VARCHAR(50) NOT NULL,
   Benefits TEXT
);

select * from MembershipType;
 
--Table: MemberMembership
CREATE TABLE MemberMembership (
   MemberID INT,
   MembershipTypeID INT,
   PRIMARY KEY (MemberID, MembershipTypeID),
 
  FOREIGN KEY (MemberID) REFERENCES Member(MemberID),
   FOREIGN KEY (MembershipTypeID) REFERENCES MembershipType(MembershipTypeID)
);

select * from MemberMembership;
 
--Table: Item
CREATE TABLE Item (
   ItemID INT PRIMARY KEY,
   Title VARCHAR(255) NOT NULL,
   Type VARCHAR(20) CHECK (Type IN ('Book', 'Magazine')),
   GenreID INT,
   FOREIGN KEY (GenreID) REFERENCES Genre(GenreID)
);

select * from Item;
 
--Table: Book
CREATE TABLE Book (
   BookID INT PRIMARY KEY,
   Title VARCHAR(255) NOT NULL,
   ISBN VARCHAR(20) UNIQUE,
   PublicationYear VARCHAR(20),
   GenreID INT,
   FOREIGN KEY (GenreID) REFERENCES Genre(GenreID)
);
select * from Book;

--Table: Magazine
CREATE TABLE Magazine (
   MagazineID INT PRIMARY KEY,
   Title VARCHAR(255) NOT NULL,
   IssueNumber INT,
   PublicationDate DATE,
   GenreID INT,
   FOREIGN KEY (GenreID) REFERENCES Genre(GenreID)
);

select * from Magazine
 
--Table: Author
CREATE TABLE Author (
   AuthorID INT PRIMARY KEY,
   FirstName VARCHAR(100),
   LastName VARCHAR(100),
   Biography TEXT
);

select * from Author;