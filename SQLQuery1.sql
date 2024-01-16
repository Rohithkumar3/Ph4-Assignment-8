CREATE TABLE Author (
    AuthorId INT PRIMARY KEY,
    AuthorName VARCHAR(255)
);
insert into Author values(1,'Rohith')

CREATE TABLE Publisher (
    PublisherId INT PRIMARY KEY,
    PublisherName VARCHAR(255),
    Address VARCHAR(255)
);
insert into Publisher values(1,'Sameer','Hyderabad')

CREATE TABLE BookCategory (
    CategoryId INT PRIMARY KEY,
    CategoryName VARCHAR(255)
);
insert into BookCategory values(1,'Comedy')

CREATE TABLE Book (
    BookId INT PRIMARY KEY,
    BookName VARCHAR(255),
    Price DECIMAL(10, 2),
    CategoryId INT,
    PublisherId INT,
    FOREIGN KEY (CategoryId) REFERENCES BookCategory(CategoryId),
    FOREIGN KEY (PublisherId) REFERENCES Publisher(PublisherId)
);
insert into Book values(1,'Hello',299,1,1)

CREATE TABLE BookAuthor (
    BookAuthorId INT PRIMARY KEY,
    BookId INT,
    AuthorId INT,
    FOREIGN KEY (BookId) REFERENCES Book(BookId),
    FOREIGN KEY (AuthorId) REFERENCES Author(AuthorId)
);
insert into BookAuthor values(1,1,1)


select * from Author
select * from Publisher
select * from BookCategory
select * from Book
select * from BookAuthor