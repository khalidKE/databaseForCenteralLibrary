-- khalid

use CentralLibrary;
go

-- Users
CREATE TABLE Users_second (
    User_ID INT PRIMARY KEY,
    UserName VARCHAR(100),
    Password VARCHAR(255),
    Email VARCHAR(100),
    DOB DATE
);

-- Users' Phones
CREATE TABLE Users_Phone_second (
    User_ID INT,
    Phone VARCHAR(20),
    PRIMARY KEY (User_ID, Phone),
    FOREIGN KEY (User_ID) REFERENCES Users_second(User_ID)
);

-- Books
CREATE TABLE Books_second (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(255),
    Publisher_Date DATE,
    Publisher VARCHAR(100),
    Status VARCHAR(50),
    E_Book BIT
);

-- Borrowed Books (no partial dependency)
CREATE TABLE Borrow_Books_second (
    User_ID INT,
    Book_ID INT,
    Start_Date DATE,
    End_Date DATE,
    Fines DECIMAL(10,2),
    PRIMARY KEY (User_ID, Book_ID, Start_Date),
    FOREIGN KEY (User_ID) REFERENCES Users_second(User_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books_second(Book_ID)
);

-- Read Books_second
CREATE TABLE Read_Books_second  (
    User_ID INT,
    Book_ID INT,
    PRIMARY KEY (User_ID, Book_ID),
    FOREIGN KEY (User_ID) REFERENCES Users_second(User_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books_second(Book_ID)
);

-- Reviews_second
CREATE TABLE Review_second  (
    User_ID INT,
    Book_ID INT,
    Comment TEXT,
    Review_Date DATE,
    Rating INT,
    PRIMARY KEY (User_ID, Book_ID),
    FOREIGN KEY (User_ID) REFERENCES Users_second(User_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books_second(Book_ID)
);

-- Staff
CREATE TABLE Staff_second (
    Staff_ID INT PRIMARY KEY,
    Role VARCHAR(100),
    Email VARCHAR(100),
    RepoartDate DATE,
    Sup_Staff_ID INT,
    FOREIGN KEY (Sup_Staff_ID) REFERENCES Staff_second(Staff_ID)
);

-- Staff Phones
CREATE TABLE Staff_Phone_second (
    Staff_ID INT,
    Phone VARCHAR(20),
    PRIMARY KEY (Staff_ID, Phone),
    FOREIGN KEY (Staff_ID) REFERENCES Staff_second(Staff_ID)
);

-- Activities
CREATE TABLE Activity_second (
    Activity_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT,
    Start_Date DATE,
    End_Date DATE
);

-- Participation (no dependency issue)
CREATE TABLE Participate_Activity_second (
    User_ID INT,
    Activity_ID INT,
    PRIMARY KEY (User_ID, Activity_ID),
    FOREIGN KEY (User_ID) REFERENCES Users_second(User_ID),
    FOREIGN KEY (Activity_ID) REFERENCES Activity_second(Activity_ID)
);

-- Manage Books
CREATE TABLE Manage_Books_second (
    Staff_ID INT,
    Book_ID INT,
    PRIMARY KEY (Staff_ID, Book_ID),
    FOREIGN KEY (Staff_ID) REFERENCES Staff_second(Staff_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books_second(Book_ID)
);

-- Events
CREATE TABLE Event_second (
    Date_Event DATE PRIMARY KEY,
    Name VARCHAR(255),
    Type VARCHAR(100)
);

-- Lead Events
CREATE TABLE Lead_second (
    Staff_ID INT,
    Date_Event DATE,
    PRIMARY KEY (Staff_ID, Date_Event),
    FOREIGN KEY (Staff_ID) REFERENCES Staff_second(Staff_ID),
    FOREIGN KEY (Date_Event) REFERENCES Event_second(Date_Event)
);

-- Magazine
CREATE TABLE Magazine_second (
    Magazine_ID INT PRIMARY KEY,
    Magazine_Name VARCHAR(255),
    Attribute VARCHAR(100),
    Price DECIMAL(10,2),
    Duration INT
);

-- Subscription
CREATE TABLE Subscribe_Magazine_second (
    User_ID INT,
    Magazine_ID INT,
    PRIMARY KEY (User_ID, Magazine_ID),
    FOREIGN KEY (User_ID) REFERENCES Users_second(User_ID),
    FOREIGN KEY (Magazine_ID) REFERENCES Magazine_second(Magazine_ID)
);

-- Research Projects
CREATE TABLE Research_Project_second (
    Name VARCHAR(255),
    Duration INT,
    User_ID INT,
    PRIMARY KEY (Name, User_ID),
    FOREIGN KEY (User_ID) REFERENCES Users_second(User_ID)
);

-- Branch Libraries
CREATE TABLE Branch_Library_second (
    NameOfLibrary VARCHAR(255) PRIMARY KEY,
    Address VARCHAR(255),
    Phone VARCHAR(20),
    Email VARCHAR(100)
);

-- Categories
CREATE TABLE Categories_second (
    Category_Name VARCHAR(100) PRIMARY KEY,
    Description TEXT
);

-- Categories for Books (many-to-many)
CREATE TABLE Book_Categories_second (
    Book_ID INT,
    Category_Name VARCHAR(100),
    PRIMARY KEY (Book_ID, Category_Name),
    FOREIGN KEY (Book_ID) REFERENCES Books_second(Book_ID),
    FOREIGN KEY (Category_Name) REFERENCES Categories_second(Category_Name)
);

-- Notifications
CREATE TABLE Notifications_second (
    Date DATE PRIMARY KEY,
    Message TEXT
);



-- Users 
INSERT INTO Users_second (User_ID, UserName, Password, Email, DOB) VALUES
(1, 'Ahmed Hassan', 'password123', 'ahmed.hassan@email.com', '1990-05-15'),
(2, 'Fatma Ali', 'securepass456', 'fatma.ali@email.com', '1985-11-22'),
(3, 'Youssef Tarek', 'pass789', 'youssef.tarek@email.com', '1995-02-10'),
(4, 'Rania Yousef', 'examplePass', 'rania.yousef@email.com', '1984-02-20'),
(5, 'Mohamed Ashraf', 'examplePass', 'mohamed.ashraf@email.com', '2001-09-15'),
(6, 'Nora Khaled', 'examplePass', 'nora.khaled@email.com', '1988-10-13');

-- Users' Phones
INSERT INTO Users_Phone_second (User_ID, Phone) VALUES
(1, '01012345678'),
(2, '01234567890'),
(3, '01123456789'),
(4, '01791376250'),
(5, '01347627769'),
(6, '01879667539');

-- Books
INSERT INTO Books_second (Book_ID, Title, Publisher_Date, Publisher, Status, E_Book) VALUES
(1, 'The Yacoubian Building', '2002-06-15', 'Merit Publishing House', 'Available', 0),
(2, 'Azazeel', '2008-03-10', 'Dar El Shorouk', 'Checked Out', 1),
(3, 'Girls of Riyadh', '2005-01-01', 'Penguin Books', 'Available', 1),
(4, 'Book Title 4', '1989-12-28', 'Publisher 4', 'Reserved', 0),
(5, 'Book Title 5', '2005-02-21', 'Publisher 5', 'Checked Out', 0),
(6, 'Book Title 6', '1983-03-25', 'Publisher 6', 'Checked Out', 1);

-- Borrowed Books
INSERT INTO Borrow_Books_second (User_ID, Book_ID, Start_Date, End_Date, Fines) VALUES
(1, 1, '2023-06-10', '2023-07-10', NULL),
(2, 2, '2023-06-15', '2023-07-15', NULL),
(3, 3, '2023-07-05', '2023-08-05', 10.00),
(4, 4, '2023-07-05', '2023-08-04', 10.00),
(5, 5, '2023-07-06', '2023-08-05', 5.00),
(6, 6, '2023-07-07', '2023-08-06', 0.00);

-- Read Books (new)
INSERT INTO Read_Books_second (User_ID, Book_ID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- Reviews
INSERT INTO Review_second (User_ID, Book_ID, Comment, Review_Date, Rating) VALUES
(1, 1, 'Masterpiece of literature', '2023-06-20', 5),
(2, 2, 'Amazing historical fiction', '2023-06-25', 4),
(3, 3, 'Interesting insight into Saudi society', '2023-07-15', 4),
(4, 4, 'Review for Book 4', '2023-07-10', 3),
(5, 5, 'Review for Book 5', '2023-07-11', 3),
(6, 6, 'Review for Book 6', '2023-07-12', 5);

-- Staff
INSERT INTO Staff_second (Staff_ID, Role, Email, RepoartDate, Sup_Staff_ID) VALUES
(1, 'Head Librarian', 'amira.mahmoud@library.com', NULL, NULL),
(2, 'Assistant Librarian', 'karim.hassan@library.com', NULL, 1),
(3, 'Events Coordinator', 'salma.ahmed@library.com', '2023-01-15', 1),
(4, 'Role 4', 'staff4@library.com', '2023-06-21', NULL),
(5, 'Role 5', 'staff5@library.com', '2020-09-22', 1),
(6, 'Role 6', 'staff6@library.com', '2022-06-09', 4);

-- Staff Phones
INSERT INTO Staff_Phone_second (Staff_ID, Phone) VALUES
(1, '01234567891'),
(2, '0122223344'),
(3, '0111222333'),
(4, '01485507700'),
(5, '01654015569'),
(6, '01573929777');

-- Activities
INSERT INTO Activity_second (Activity_ID, Name, Description, Start_Date, End_Date) VALUES
(1, 'Summer Reading Challenge', 'Encourage reading', '2023-07-01', '2023-08-31'),
(2, 'Author Meet and Greet', 'Meet famous authors', '2023-09-15', '2023-09-15'),
(3, 'Children Story Hour', 'Read to young children', '2023-08-01', '2023-08-30'),
(4, 'Activity 4', 'Description 4', '2023-08-01', '2023-08-30'),
(5, 'Activity 5', 'Description 5', '2023-08-01', '2023-08-30'),
(6, 'Activity 6', 'Description 6', '2023-08-01', '2023-08-30');

-- Participate Activity (new)
INSERT INTO Participate_Activity_second (User_ID, Activity_ID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- Manage Books (new)
INSERT INTO Manage_Books_second (Staff_ID, Book_ID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- Events
INSERT INTO Event_second (Date_Event, Name, Type) VALUES
('2023-09-15', 'Meet Alaa Al Aswany', 'Author Event'),
('2023-07-10', 'Discuss "The Yacoubian Building"', 'Book Club'),
('2023-08-10', 'Back to School Event', 'Educational'),
('2023-09-05', 'Event 4', 'Workshop'),
('2023-09-06', 'Event 5', 'Workshop'),
('2023-09-07', 'Event 6', 'Workshop');

-- Lead Events (new)
INSERT INTO Lead_second  (Staff_ID, Date_Event) VALUES
(1, '2023-09-15'),
(2, '2023-07-10'),
(3, '2023-08-10'),
(4, '2023-09-05'),
(5, '2023-09-06'),
(6, '2023-09-07');

-- Magazine
INSERT INTO Magazine_second (Magazine_ID, Magazine_Name, Attribute, Price, Duration) VALUES
(1, 'Egypt Today', 'Current Affairs', 25.00, 30),
(2, 'Al-Ahram Weekly', 'News and Culture', 20.00, 7),
(3, 'Science Monthly', 'Science', 30.00, 12),
(4, 'Magazine 4', 'Culture', 28.31, 30),
(5, 'Magazine 5', 'Culture', 33.91, 30),
(6, 'Magazine 6', 'Culture', 40.63, 14);

-- Subscribe Magazine (new)
INSERT INTO Subscribe_Magazine_second (User_ID, Magazine_ID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- Research Projects (new)
INSERT INTO Research_Project_second (Name, Duration, User_ID) VALUES
('Digital Archiving', 12, 1),
('Historical Manuscripts', 24, 2),
('Project 3', 6, 3),
('Project 4', 9, 4),
('Project 5', 3, 5),
('Project 6', 12, 6);

-- Branch Libraries
INSERT INTO Branch_Library_second (NameOfLibrary, Address, Phone, Email) VALUES
('Cairo Central Library', '123 Tahrir Square, Cairo', '+20 2 1234 5678', 'info@cairolibrary.com'),
('Alexandria Library', '456 Corniche Road, Alexandria', '+20 3 9876 5432', 'info@alexlibrary.com'),
('Giza Library', '789 Nile Street, Giza', '+20 2 3456 7890', 'info@gizalibrary.com'),
('Library Branch 4', '4 Main Street', '01095889378', 'info4@library.com'),
('Library Branch 5', '5 Main Street', '01259333781', 'info5@library.com'),
('Library Branch 6', '6 Main Street', '01569533300', 'info6@library.com');

-- Categories (new)
INSERT INTO Categories_second (Category_Name, Description) VALUES
('Fiction', 'Novels and stories'),
('History', 'Historical books and documents'),
('Science', 'Books related to science and technology'),
('Culture', 'Books about culture and arts'),
('Children', 'Books for children');

-- Book Categories (new)
INSERT INTO Book_Categories_second (Book_ID, Category_Name) VALUES
(1, 'Fiction'),
(2, 'History'),
(3, 'Culture'),
(4, 'Science'),
(5, 'Culture'),
(6, 'Children');

-- Notifications
INSERT INTO Notifications_second (Date, Message) VALUES
('2023-06-05', 'New books added this week'),
('2023-06-10', 'Library open on weekends'),
('2023-07-01', 'Don’t miss our August events!'),
('2023-07-05', 'Notification 4'),
('2023-07-06', 'Notification 5'),
('2023-07-07', 'Notification 6');


select * 
 from Users_second;

 select * 
 from Users_Phone_second;

 select * 
 from Books_second;

 select * 
 from Borrow_Books_second;

 select * 
 from Read_Books_second;

 select * 
 from Review_second;

 select * 
 from Staff_second;

 select * 
 from Staff_Phone_second;

 select * 
 from Activity_second;

 select * 
 from Participate_Activity_second;

 select * 
 from Manage_Books_second;

 select * 
 from Event_second;

 select * 
 from Lead_second;

 select * 
 from Magazine_second;

 select * 
 from Subscribe_Magazine_second;

 select * 
 from Research_Project_second;

 select * 
 from Branch_Library_second;

 select * 
 from Categories_second;

 select * 
 from Book_Categories_second;

 select * 
 from Notifications_second;

