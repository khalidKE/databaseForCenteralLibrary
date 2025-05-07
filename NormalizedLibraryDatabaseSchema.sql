-- Creating the normalized database
CREATE DATABASE CentralLibrary;
USE CentralLibrary;
GO

-- Table for Categories
CREATE TABLE Categories (
    Category_ID INT PRIMARY KEY IDENTITY(1,1),
    Category_Name VARCHAR(100) UNIQUE NOT NULL,
    Description TEXT
);

-- Table for Books
CREATE TABLE Books (
    Book_ID INT PRIMARY KEY IDENTITY(1,1),
    Title VARCHAR(255) NOT NULL,
    Publisher_Date DATE,
    Publisher VARCHAR(100),
    Status VARCHAR(50) CHECK (Status IN ('Available', 'Checked Out', 'Reserved', 'Lost')),
    E_Book BIT DEFAULT 0,
    Category_ID INT,
    FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID) ON DELETE SET NULL
);

-- Table for Users
CREATE TABLE Users (
    User_ID INT PRIMARY KEY IDENTITY(1,1),
    UserName VARCHAR(100) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    DOB DATE CHECK (DOB <= GETDATE())
);

-- Table for Staff
CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY IDENTITY(1,1),
    Role VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    ReportDate DATE,
    Sup_Staff_ID INT,
    FOREIGN KEY (Sup_Staff_ID) REFERENCES Staff(Staff_ID)
);

-- Table for Branch Library
CREATE TABLE Branch_Library (
    Library_ID INT PRIMARY KEY IDENTITY(1,1),
    NameOfLibrary VARCHAR(255) UNIQUE NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Phone VARCHAR(20),
    Email VARCHAR(100) UNIQUE
);

-- Table for Activity
CREATE TABLE Activity (
    Activity_ID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    Description TEXT,
    Start_Date DATE NOT NULL,
    End_Date DATE,
    CHECK (End_Date >= Start_Date)
);

-- Table for Magazine
CREATE TABLE Magazine (
    Magazine_ID INT PRIMARY KEY IDENTITY(1,1),
    Magazine_Name VARCHAR(255) NOT NULL,
    Attribute VARCHAR(100),
    Price DECIMAL(10,2) CHECK (Price >= 0),
    Duration INT CHECK (Duration > 0)
);

-- Table for Event
CREATE TABLE Event (
    Event_ID INT PRIMARY KEY IDENTITY(1,1),
    Date_Event DATE NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Type VARCHAR(100)
);

-- Table for Research Project
CREATE TABLE Research_Project (
    Project_ID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(255) NOT NULL,
    Duration INT CHECK (Duration > 0),
    User_ID INT,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID) ON DELETE CASCADE
);

-- Table for Notifications
CREATE TABLE Notifications (
    Notification_ID INT PRIMARY KEY IDENTITY(1,1),
    Date DATE NOT NULL,
    Message TEXT NOT NULL
);

-- Table for Review
CREATE TABLE Review (
    Review_ID INT PRIMARY KEY IDENTITY(1,1),
    User_ID INT,
    Book_ID INT,
    Comment VARCHAR(1000),
    Review_Date DATE NOT NULL DEFAULT GETDATE(),
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID) ON DELETE CASCADE,
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID) ON DELETE CASCADE
);

-- Table for Lead (Staff-Event relationship)
CREATE TABLE Lead (
    Staff_ID INT,
    Event_ID INT,
    PRIMARY KEY (Staff_ID, Event_ID),
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID) ON DELETE CASCADE,
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID) ON DELETE CASCADE
);

-- Table for Staff Phone
CREATE TABLE Staff_Phone (
    Staff_ID INT,
    Phone VARCHAR(20),
    PRIMARY KEY (Staff_ID, Phone),
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID) ON DELETE CASCADE
);

-- Table for Users Phone
CREATE TABLE Users_Phone (
    User_ID INT,
    Phone VARCHAR(20),
    PRIMARY KEY (User_ID, Phone),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID) ON DELETE CASCADE
);

-- Table for Read Books
CREATE TABLE Read_Books (
    User_ID INT,
    Book_ID INT,
    Read_Date DATE NOT NULL DEFAULT GETDATE(),
    PRIMARY KEY (User_ID, Book_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID) ON DELETE CASCADE,
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID) ON DELETE CASCADE
);

-- Table for Borrow Books
CREATE TABLE Borrow_Books (
    Borrow_ID INT PRIMARY KEY IDENTITY(1,1),
    User_ID INT,
    Book_ID INT,
    Start_Date DATE NOT NULL,
    End_Date DATE,
    Fines DECIMAL(10,2) CHECK (Fines >= 0),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID) ON DELETE CASCADE,
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID) ON DELETE CASCADE,
    CHECK (End_Date >= Start_Date)
);

-- Table for Manage Books
CREATE TABLE Manage_Books (
    Staff_ID INT,
    Book_ID INT,
    Management_Date DATE NOT NULL DEFAULT GETDATE(),
    PRIMARY KEY (Staff_ID, Book_ID),
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID) ON DELETE CASCADE,
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID) ON DELETE CASCADE
);

-- Table for Subscribe Magazine
CREATE TABLE Subscribe_Magazine (
    User_ID INT,
    Magazine_ID INT,
    Subscription_Date DATE NOT NULL DEFAULT GETDATE(),
    PRIMARY KEY (User_ID, Magazine_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID) ON DELETE CASCADE,
    FOREIGN KEY (Magazine_ID) REFERENCES Magazine(Magazine_ID) ON DELETE CASCADE
);

-- Table for Participate Activity
CREATE TABLE Participate_Activity (
    User_ID INT,
    Activity_ID INT,
    Participation_Date DATE NOT NULL DEFAULT GETDATE(),
    PRIMARY KEY (User_ID, Activity_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID) ON DELETE CASCADE,
    FOREIGN KEY (Activity_ID) REFERENCES Activity(Activity_ID) ON DELETE CASCADE
);

-- Adding indexes
CREATE INDEX idx_books_title ON Books(Title);
CREATE INDEX idx_users_email ON Users(Email);
CREATE INDEX idx_staff_email ON Staff(Email);
CREATE INDEX idx_magazine_name ON Magazine(Magazine_Name);

-- Insert sample data
INSERT INTO Categories (Category_Name, Description)
VALUES 
('Fiction', 'Literary fiction and novels'),
('Historical', 'Historical fiction and accounts'),
('Religious', 'Religious and spiritual texts');

INSERT INTO Books (Title, Publisher_Date, Publisher, Status, E_Book, Category_ID)
VALUES 
('The Yacoubian Building', '2002-06-15', 'Merit Publishing House', 'Available', 0, 1),
('The Map of Love', '1999-09-01', 'Bloomsbury Publishing', 'Checked Out', 0, 2),
('Azazeel', '2008-03-10', 'Dar El Shorouk', 'Available', 1, 3),
('The Naguib Mahfouz Trilogy', '1956-12-01', 'American University in Cairo Press', 'Available', 0, 1),
('Beer in the Snooker Club', '1964-01-15', 'New Amsterdam Books', 'Available', 1, 1);

INSERT INTO Users (UserName, Password, Email, DOB)
VALUES 
('AhmedHassan', 'password123', 'ahmed.hassan@email.com', '1990-05-15'),
('FatmaAli', 'securepass456', 'fatma.ali@email.com', '1985-11-22'),
('OmarSamir', 'bookworm789', 'omar.samir@email.com', '1995-03-30'),
('NourEldin', 'library2023', 'nour.eldin@email.com', '1988-09-10'),
('MarwaMohamed', 'readinglover', 'marwa.mohamed@email.com', '1992-07-18');

INSERT INTO Staff (Role, Email, ReportDate, Sup_Staff_ID)
VALUES 
('Head Librarian', 'amira.mahmoud@library.com', NULL, NULL),
('Assistant Librarian', 'karim.hassan@library.com', NULL, 1),
('IT Specialist', 'youssef.ali@library.com', NULL, 1),
('Events Coordinator', 'laila.ibrahim@library.com', '2023-06-30', 1),
('Cataloger', 'mostafa.ahmed@library.com', NULL, 2);

INSERT INTO Branch_Library (NameOfLibrary, Address, Phone, Email)
VALUES 
('Cairo Central Library', '123 Tahrir Square, Cairo', '+20 2 1234 5678', 'info@cairolibrary.com'),
('Alexandria Library', '456 Corniche Road, Alexandria', '+20 3 9876 5432', 'info@alexlibrary.com');

INSERT INTO Activity (Name, Description, Start_Date, End_Date)
VALUES 
('Summer Reading Challenge', 'Encourage children to read during summer vacation', '2023-07-01', '2023-08-31'),
('Author Meet and Greet', 'Meet famous Egyptian authors', '2023-09-15', '2023-09-15'),
('Book Club Meeting', 'Monthly book discussion group', '2023-07-10', '2023-07-10');

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

INSERT INTO Magazine (Magazine_Name, Attribute, Price, Duration)
VALUES 
('Egypt Today', 'Current Affairs', 25.00, 30),
('Al-Ahram Weekly', 'News and Culture', 20.00, 7);

INSERT INTO Subscribe_Magazine (User_ID, Magazine_ID, Subscription_Date)
VALUES 
(2, 1, '2023-06-01'),
(5, 2, '2023-06-01');

-- Select statements to verify data
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
