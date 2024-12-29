CREATE DATABASE CenteralLibrary;
USE CenteralLibrary;
GO

CREATE TABLE Categories (
    Category_Name VARCHAR(100) PRIMARY KEY,
    Description TEXT,
    Book_ID INT
);

CREATE TABLE Books (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Publisher_Date DATE,
    Publisher VARCHAR(100),
    Status VARCHAR(50),
    E_Book BIT DEFAULT 0
);

CREATE TABLE Users (
    User_ID INT PRIMARY KEY,
    UserName VARCHAR(100) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Email VARCHAR(100),
    DOB DATE,
    Book_ID INT
);

CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY,
    Role VARCHAR(100),
    Email VARCHAR(100),
    Activity_ID INT,
    RepoartDate DATE,
    Sup_Staff_ID INT,
    FOREIGN KEY (Sup_Staff_ID) REFERENCES Staff(Staff_ID)
);

CREATE TABLE Branch_Library (
    NameOfLibrary VARCHAR(255) PRIMARY KEY,
    Address VARCHAR(255),
    Phone VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE Activity (
    Activity_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT,
    Start_Date DATE,
    End_Date DATE
);

CREATE TABLE Magazine (
    Magazine_ID INT PRIMARY KEY,
    Magazine_Name VARCHAR(255),
    Attribute VARCHAR(100),
    Price DECIMAL(10,2),
    Duration INT
);

CREATE TABLE Event (
    Date_Event DATE PRIMARY KEY,
    Name VARCHAR(255),
    Type VARCHAR(100)
);

CREATE TABLE Research_Project (
    Name VARCHAR(255),
    Duration INT,
    User_ID INT,
    PRIMARY KEY (Name, User_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID) ON DELETE CASCADE
);

CREATE TABLE Notifications (
    Date DATE PRIMARY KEY,
    Message TEXT
);

CREATE TABLE Review (
    User_ID INT,
    Book_ID INT,
    Comment VARCHAR(1000),
    Review_Date DATE,
    Rating INT,
    PRIMARY KEY (User_ID, Book_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID) ON DELETE CASCADE,
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID) ON DELETE CASCADE
);

CREATE TABLE Lead (
    Staff_ID INT,
    Date_Event DATE,
    PRIMARY KEY (Staff_ID, Date_Event),
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID) ON DELETE CASCADE,
    FOREIGN KEY (Date_Event) REFERENCES Event(Date_Event) ON DELETE CASCADE
);

CREATE TABLE Staff_Phone (
    Staff_ID INT,
    Phone VARCHAR(20),
    PRIMARY KEY (Staff_ID, Phone),
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID) ON DELETE CASCADE
);

CREATE TABLE Users_Phone (
    User_ID INT,
    Phone VARCHAR(20),
    PRIMARY KEY (User_ID, Phone),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID) ON DELETE CASCADE
);

CREATE TABLE Read_Books (
    User_ID INT,
    Book_ID INT,
    PRIMARY KEY (User_ID, Book_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID) ON DELETE CASCADE,
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID) ON DELETE CASCADE
);

CREATE TABLE Borrow_Books (
    User_ID INT,
    Book_ID INT,
    Start_Date DATE,
    End_Date DATE,
    Fines DECIMAL(10,2),
    PRIMARY KEY (User_ID, Book_ID, Start_Date),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID) ON DELETE CASCADE,
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID) ON DELETE CASCADE
);

CREATE TABLE Manage_Books (
    Staff_ID INT,
    Book_ID INT,
    PRIMARY KEY (Staff_ID, Book_ID),
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID) ON DELETE CASCADE,
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID) ON DELETE CASCADE
);

CREATE TABLE Subscribe_Magazine (
    User_ID INT,
    Magazine_ID INT,
    PRIMARY KEY (User_ID, Magazine_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID) ON DELETE CASCADE,
    FOREIGN KEY (Magazine_ID) REFERENCES Magazine(Magazine_ID) ON DELETE CASCADE
);

CREATE TABLE Participate_Activity (
    User_ID INT,
    Activity_ID INT,
    PRIMARY KEY (User_ID, Activity_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID) ON DELETE CASCADE,
    FOREIGN KEY (Activity_ID) REFERENCES Activity(Activity_ID) ON DELETE CASCADE
);

ALTER TABLE Categories
ADD CONSTRAINT FK_Categories_Books FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID) ON DELETE CASCADE;

ALTER TABLE Staff
ADD CONSTRAINT FK_Staff_Activity FOREIGN KEY (Activity_ID) REFERENCES Activity(Activity_ID) ON DELETE CASCADE;

ALTER TABLE Users
ADD CONSTRAINT FK_Users_Books FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID) ON DELETE NO ACTION;

CREATE INDEX idx_books_title ON Books(Title);
CREATE INDEX idx_users_email ON Users(Email);
CREATE INDEX idx_staff_email ON Staff(Email);
CREATE INDEX idx_magazine_name ON Magazine(Magazine_Name);

INSERT INTO Activity (Activity_ID, Name, Description, Start_Date, End_Date)
VALUES 
(1, 'Summer Reading Challenge', 'Encourage children to read during summer vacation', '2023-07-01', '2023-08-31'),
(2, 'Author Meet and Greet', 'Meet famous Egyptian authors', '2023-09-15', '2023-09-15'),
(3, 'Book Club Meeting', 'Monthly book discussion group', '2023-07-10', '2023-07-10');

INSERT INTO Books (Book_ID, Title, Publisher_Date, Publisher, Status, E_Book)
VALUES 
(1, 'The Yacoubian Building', '2002-06-15', 'Merit Publishing House', 'Available', 0),
(2, 'The Map of Love', '1999-09-01', 'Bloomsbury Publishing', 'Checked Out', 0),
(3, 'Azazeel', '2008-03-10', 'Dar El Shorouk', 'Available', 1),
(4, 'The Naguib Mahfouz Trilogy', '1956-12-01', 'American University in Cairo Press', 'Available', 0),
(5, 'Beer in the Snooker Club', '1964-01-15', 'New Amsterdam Books', 'Available', 1);

INSERT INTO Users (User_ID, UserName, Password, Email, DOB, Book_ID)
VALUES 
(1, 'AhmedHassan', 'password123', 'ahmed.hassan@email.com', '1990-05-15', 2),
(2, 'FatmaAli', 'securepass456', 'fatma.ali@email.com', '1985-11-22', NULL),
(3, 'OmarSamir', 'bookworm789', 'omar.samir@email.com', '1995-03-30', NULL),
(4, 'NourEldin', 'library2023', 'nour.eldin@email.com', '1988-09-10', 1),
(5, 'MarwaMohamed', 'readinglover', 'marwa.mohamed@email.com', '1992-07-18', NULL);

INSERT INTO Staff (Staff_ID, Role, Email, Activity_ID, RepoartDate, Sup_Staff_ID)
VALUES 
(1, 'Head Librarian', 'amira.mahmoud@library.com', NULL, NULL, NULL),
(2, 'Assistant Librarian', 'karim.hassan@library.com', NULL, NULL, 1),
(3, 'IT Specialist', 'youssef.ali@library.com', NULL, NULL, 1),
(4, 'Events Coordinator', 'laila.ibrahim@library.com', 1, '2023-06-30', 1),
(5, 'Cataloger', 'mostafa.ahmed@library.com', NULL, NULL, 2);

INSERT INTO Branch_Library (NameOfLibrary, Address, Phone, Email)
VALUES 
('Cairo Central Library', '123 Tahrir Square, Cairo', '+20 2 1234 5678', 'info@cairolibrary.com'),
('Alexandria Library', '456 Corniche Road, Alexandria', '+20 3 9876 5432', 'info@alexlibrary.com');

INSERT INTO Event (Date_Event, Name, Type)
VALUES 
('2023-09-15', 'Meet Alaa Al Aswany', 'Author Event'),
('2023-07-10', 'Discuss "The Yacoubian Building"', 'Book Club'),
('2023-08-05', 'Children''s Storytelling Hour', 'Kids Event');

INSERT INTO Review (User_ID, Book_ID, Comment, Review_Date, Rating)
VALUES 
(1, 1, 'A masterpiece of modern Egyptian literature', '2023-06-20', 5),
(3, 3, 'Thought-provoking and beautifully written', '2023-06-25', 4),
(4, 4, 'A classic trilogy that everyone should read', '2023-06-28', 5);

INSERT INTO Borrow_Books (User_ID, Book_ID, Start_Date, End_Date, Fines)
VALUES 
(1, 2, '2023-06-15', '2023-07-15', NULL),
(4, 1, '2023-06-10', '2023-07-10', NULL);

INSERT INTO Magazine (Magazine_ID, Magazine_Name, Attribute, Price, Duration)
VALUES 
(1, 'Egypt Today', 'Current Affairs', 25.00, 30),
(2, 'Al-Ahram Weekly', 'News and Culture', 20.00, 7);

INSERT INTO Subscribe_Magazine (User_ID, Magazine_ID)
VALUES 
(2, 1),
(5, 2);

SELECT * FROM Books;
SELECT * FROM Users;
SELECT * FROM Staff;
SELECT * FROM Activity;
SELECT * FROM Branch_Library;
SELECT * FROM Event;
SELECT * FROM Review;
SELECT * FROM Borrow_Books;
SELECT * FROM Magazine;
SELECT * FROM Subscribe_Magazine;
SELECT * FROM Staff_Phone;
SELECT * FROM Users_Phone;
SELECT * FROM Read_Books;
SELECT * FROM Manage_Books;
SELECT * FROM Participate_Activity;
SELECT * FROM Categories;
SELECT * FROM Research_Project;
SELECT * FROM Notifications;
SELECT * FROM Lead;