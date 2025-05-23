-- mostafa 

create database CentralLibrary;
Use CentralLibrary;
go
CREATE TABLE CentralLibrary_UNF (
    User_ID INT,
    UserName VARCHAR(100),
    Password VARCHAR(255),
    User_Email VARCHAR(100),
    DOB DATE,
    UserPhone VARCHAR(100),
    -- name
    
    Book_ID INT,
    Book_Title VARCHAR(255),
    Publisher_Date DATE,
    Publisher VARCHAR(100),
    Status VARCHAR(50),
    E_Book BIT,
    -- Author 
    
    Borrow_Start DATE,
    Borrow_End DATE,
    Fine DECIMAL(10,2),
    
    Review_Comment TEXT,
    Review_Rating INT,
    Review_Date DATE,
    
    Staff_ID INT,
    Staff_Role VARCHAR(100),
    Staff_Email VARCHAR(100),
    StaffPhone VARCHAR(100),
    RepoartDate DATE,
    Sup_Staff_ID INT,
    
    Activity_ID INT,
    Activity_Name VARCHAR(100),
    Activity_Desc TEXT,
    Activity_Start DATE,
    Activity_End DATE,
    
    Event_Date DATE,
    Event_Name VARCHAR(255),
    Event_Type VARCHAR(100),
    
    Magazine_ID INT,
    Magazine_Name VARCHAR(255),
    Magazine_Attr VARCHAR(100),
    Magazine_Price DECIMAL(10,2),
    Magazine_Duration INT,
    
    Library_Name VARCHAR(255),
    Library_Address VARCHAR(255),
    Library_Phone VARCHAR(20),
    Library_Email VARCHAR(100),
    
    Notification_Date DATE,
    Notification_Message TEXT
);

/* To Insert Data To the Table */

INSERT INTO CentralLibrary_UNF VALUES
(1, 'Ahmed Hassan', 'password123', 'ahmed.hassan@email.com', '1990-05-15', '01012345678',
 1, 'The Yacoubian Building', '2002-06-15', 'Merit Publishing House', 'Available', 0,
 '2023-06-10', '2023-07-10', NULL,
 'Masterpiece of literature', 5, '2023-06-20',
 1, 'Head Librarian', 'amira.mahmoud@library.com', '01234567891', NULL, NULL,
 1, 'Summer Reading Challenge', 'Encourage reading', '2023-07-01', '2023-08-31',
 '2023-09-15', 'Meet Alaa Al Aswany', 'Author Event',
 1, 'Egypt Today', 'Current Affairs', 25.00, 30,
 'Cairo Central Library', '123 Tahrir Square, Cairo', '+20 2 1234 5678', 'info@cairolibrary.com',
 '2023-06-05', 'New books added this week');


INSERT INTO CentralLibrary_UNF VALUES
(2, 'Fatma Ali', 'securepass456', 'fatma.ali@email.com', '1985-11-22', '01234567890',
 2, 'Azazeel', '2008-03-10', 'Dar El Shorouk', 'Checked Out', 1,
 '2023-06-15', '2023-07-15', NULL,
 'Amazing historical fiction', 4, '2023-06-25',
 2, 'Assistant Librarian', 'karim.hassan@library.com', '0122223344', NULL, 1,
 2, 'Author Meet and Greet', 'Meet famous authors', '2023-09-15', '2023-09-15',
 '2023-07-10', 'Discuss "The Yacoubian Building"', 'Book Club',
 2, 'Al-Ahram Weekly', 'News and Culture', 20.00, 7,
 'Alexandria Library', '456 Corniche Road, Alexandria', '+20 3 9876 5432', 'info@alexlibrary.com',
 '2023-06-10', 'Library open on weekends');

INSERT INTO CentralLibrary_UNF VALUES
(3, 'Youssef Tarek', 'pass789', 'youssef.tarek@email.com', '1995-02-10', '01123456789',
 3, 'Girls of Riyadh', '2005-01-01', 'Penguin Books', 'Available', 1,
 '2023-07-05', '2023-08-05', 10.00,
 'Interesting insight into Saudi society', 4, '2023-07-15',
 3, 'Events Coordinator', 'salma.ahmed@library.com', '0111222333', '2023-01-15', 1,
 3, 'Children Story Hour', 'Read to young children', '2023-08-01', '2023-08-30',
 '2023-08-10', 'Back to School Event', 'Educational',
 3, 'Science Monthly', 'Science', 30.00, 12,
 'Giza Library', '789 Nile Street, Giza', '+20 2 3456 7890', 'info@gizalibrary.com',
 '2023-07-01', 'Don’t miss our August events!');

 INSERT INTO CentralLibrary_UNF VALUES
(4, 'Rania Yousef', 'examplePass', 'rania.yousef@email.com', '1984-02-20', '01791376250',
 4, 'Book Title 4', '1989-12-28', 'Publisher 4', 'Reserved', 0,
 '2023-07-05', '2023-08-04', 10.00,
 'Review for Book 4', 3, '2023-07-10',
 4, 'Role 4', 'staff4@library.com', '01485507700', '2023-06-21', NULL,
 4, 'Activity 4', 'Description 4', '2023-08-01', '2023-08-30',
 '2023-09-05', 'Event 4', 'Workshop',
 4, 'Magazine 4', 'Culture', 28.31, 30,
 'Library Branch 4', '4 Main Street', '01095889378', 'info4@library.com',
 '2023-07-05', 'Notification 4');

INSERT INTO CentralLibrary_UNF VALUES
(5, 'Mohamed Ashraf', 'examplePass', 'mohamed.ashraf@email.com', '2001-09-15', '01347627769',
 5, 'Book Title 5', '2005-02-21', 'Publisher 5', 'Checked Out', 0,
 '2023-07-06', '2023-08-05', 5.00,
 'Review for Book 5', 3, '2023-07-11',
 5, 'Role 5', 'staff5@library.com', '01654015569', '2020-09-22', 1,
 5, 'Activity 5', 'Description 5', '2023-08-01', '2023-08-30',
 '2023-09-06', 'Event 5', 'Workshop',
 5, 'Magazine 5', 'Culture', 33.91, 30,
 'Library Branch 5', '5 Main Street', '01259333781', 'info5@library.com',
 '2023-07-06', 'Notification 5');

INSERT INTO CentralLibrary_UNF VALUES
(6, 'Nora Khaled', 'examplePass', 'nora.khaled@email.com', '1988-10-13', '01879667539',
 6, 'Book Title 6', '1983-03-25', 'Publisher 6', 'Checked Out', 1,
 '2023-07-07', '2023-08-06', 0.00,
 'Review for Book 6', 5, '2023-07-12',
 6, 'Role 6', 'staff6@library.com', '01573929777', '2022-06-09', 4,
 6, 'Activity 6', 'Description 6', '2023-08-01', '2023-08-30',
 '2023-09-07', 'Event 6', 'Workshop',
 6, 'Magazine 6', 'Culture', 40.63, 14,
 'Library Branch 6', '6 Main Street', '01569533300', 'info6@library.com',
 '2023-07-07', 'Notification 6');


INSERT INTO CentralLibrary_UNF VALUES
(7, 'Laila Mostafa', 'passLaila2023', 'laila.mostafa@email.com', '1992-03-17', '01098765432',
 7, 'The Alchemist', '1988-04-25', 'HarperCollins', 'Available', 2,
 '2023-07-10', '2023-08-10', NULL,
 'Inspiring and philosophical', 5, '2023-07-20',
 7, 'Circulation Manager', 'omar.said@library.com', '01187654321', '2022-02-10', 1,
 7, 'Book Donation Drive', 'Collect books for community', '2023-09-01', '2023-09-30',
 '2023-10-01', 'Poetry Reading Night', 'Literary Event',
 7, 'Literary Review', 'Literature', 15.50, 20,
 'Luxor Library', '101 Nile Avenue, Luxor', '+20 95 1234 5678', 'info@luxorlibrary.com',
 '2023-07-08', 'New arrivals in fiction section');

INSERT INTO CentralLibrary_UNF VALUES
(8, 'Khaled Mahmoud', 'secure2023', 'khaled.mahmoud@email.com', '1980-07-30', '01287654321',
 8, 'A Thousand Splendid Suns', '2007-05-22', 'Riverhead Books', 'Checked Out', 1,
 '2023-07-12', '2023-08-12', 8.00,
 'Heartfelt and emotional', 4, '2023-07-22',
 8, 'Reference Librarian', 'sara.ali@library.com', '01011122333', '2021-11-05', NULL,
 8, 'Literacy Workshop', 'Improve reading skills', '2023-10-01', '2023-10-15',
 '2023-10-10', 'Historical Fiction Discussion', 'Book Club',
 8, 'National Geographic', 'Science and Exploration', 35.00, 15,
 'Aswan Library', '200 Corniche Street, Aswan', '+20 97 9876 5432', 'info@aswanlibrary.com',
 '2023-07-09', 'Extended hours for summer');

INSERT INTO CentralLibrary_UNF VALUES
(9, 'Sara Ibrahim', 'password789', 'sara.ibrahim@email.com', '1998-12-05', '01198765432',
 9, 'The Kite Runner', '2003-05-29', 'Riverhead Books', 'Reserved', 0,
 '2023-07-15', '2023-08-15', 12.00,
 'Powerful storytelling', 5, '2023-07-25',
 9, 'Children’s Librarian', 'hassan.mohamed@library.com', '01233344455', '2023-03-20', 3,
 9, 'Teen Book Club', 'Engage young readers', '2023-09-10', '2023-10-10',
 '2023-09-20', 'Young Adult Fiction Night', 'Literary Event',
 9, 'Time Magazine', 'Current Affairs', 27.50, 10,
 'Port Said Library', '50 Port Street, Port Said', '+20 66 1234 5678', 'info@portsaidlibrary.com',
 '2023-07-10', 'Free Wi-Fi now available');

INSERT INTO CentralLibrary_UNF VALUES
(10, 'Omar Abdel', 'omarPass321', 'omar.abdel@email.com', '1987-06-25', '01055566677',
 10, 'Palace Walk', '1956-01-01', 'Dar El Shorouk', 'Available', 3,
 '2023-07-20', '2023-08-20', NULL,
 'Rich depiction of Cairo life', 4, '2023-07-30',
 10, 'Library Director', 'mona.khaled@library.com', '01144455566', '2020-01-15', NULL,
 10, 'Digital Literacy Program', 'Teach tech skills', '2023-11-01', '2023-11-30',
 '2023-10-15', 'Tech for Seniors Workshop', 'Educational',
 10, 'History Today', 'History', 22.00, 25,
 'Suez Library', '75 Suez Canal Road, Suez', '+20 62 9876 5432', 'info@suezlibrary.com',
 '2023-07-11', 'Renovated reading room open');

INSERT INTO CentralLibrary_UNF VALUES
(11, 'Mona Salem', 'passMona456', 'mona.salem@email.com', '1993-04-12', '01266677788',
 11, 'The Cairo Trilogy', '1957-06-15', 'Dar El Shorouk', 'Checked Out', 2,
 '2023-07-25', '2023-08-25', 15.00,
 'A classic family saga', 5, '2023-08-05',
 11, 'Archivist', 'ali.hussein@library.com', '01022233344', '2022-07-01', 1,
 11, 'Local History Exhibit', 'Showcase city heritage', '2023-10-05', '2023-11-05',
 '2023-10-20', 'Heritage Talk', 'Cultural Event',
 11, 'Archaeology Magazine', 'Archaeology', 29.99, 18,
 'Mansoura Library', '30 University Street, Mansoura', '+20 50 1234 5678', 'info@mansouralibrary.com',
 '2023-07-12', 'New history section added');

INSERT INTO CentralLibrary_UNF VALUES
(12, 'Hassan Nabil', 'hassanPass123', 'hassan.nabil@email.com', '1990-09-08', '01177788899',
 12, 'No One Sleeps in Alexandria', '1996-03-10', 'AUC Press', 'Available', 1,
 '2023-07-30', '2023-08-30', NULL,
 'Gripping historical novel', 4, '2023-08-10',
 12, 'IT Specialist', 'nadia.omar@library.com', '01255566677', '2021-09-10', 2,
 12, 'Coding for Kids', 'Intro to programming', '2023-11-15', '2023-12-15',
 '2023-11-10', 'Tech Talk Series', 'Technology',
 12, 'Wired', 'Technology', 32.00, 22,
 'Tanta Library', '40 Tanta Square, Tanta', '+20 40 9876 5432', 'info@tantalibrary.com',
 '2023-07-13', 'New tech books available');

 INSERT INTO CentralLibrary_UNF VALUES
(13, 'Amina Zaki', 'aminaPass789', 'amina.zaki@email.com', '1994-01-25', '01011122233',
 13, 'The Map of Love', '1999-05-20', 'Bloomsbury Publishing', 'Available', 1,
 '2023-08-01', '2023-09-01', NULL,
 'Romantic and historical', 4, '2023-08-10',
 13, 'Cataloging Specialist', 'yasser.mohamed@library.com', '01155566677', '2022-03-15', 1,
 13, 'Historical Fiction Workshop', 'Explore historical narratives', '2023-11-01', '2023-11-30',
 '2023-11-05', 'Author Talk: Ahdaf Soueif', 'Literary Event',
 13, 'Egyptian Gazette', 'Local News', 18.50, 25,
 'Ismailia Library', '15 Ismailia Road, Ismailia', '+20 64 1234 5678', 'info@ismailialibrary.com',
 '2023-07-14', 'New romance novels added');

INSERT INTO CentralLibrary_UNF VALUES
(14, 'Tamer Adel', 'tamerPass456', 'tamer.adel@email.com', '1983-08-12', '01222233344',
 14, 'Season of Migration to the North', '1966-01-01', 'Heinemann', 'Checked Out', 0,
 '2023-08-05', '2023-09-05', 5.00,
 'Profound and thought-provoking', 5, '2023-08-15',
 14, 'Acquisitions Librarian', 'layla.hassan@library.com', '01066677788', '2021-05-20', NULL,
 14, 'Arabic Literature Seminar', 'Discuss classic works', '2023-12-01', '2023-12-15',
 '2023-12-10', 'Tayeb Salih Discussion', 'Book Club',
 14, 'Middle East Journal', 'Politics', 25.00, 20,
 'Zagazig Library', '25 University Street, Zagazig', '+20 55 9876 5432', 'info@zagaziglibrary.com',
 '2023-07-15', 'Extended loan periods available');

INSERT INTO CentralLibrary_UNF VALUES
(15, 'Nada Samir', 'nadaPass123', 'nada.samir@email.com', '1996-11-30', '01133344455',
 15, 'The Forty Rules of Love', '2010-02-25', 'Penguin Books', 'Reserved', 2,
 '2023-08-10', '2023-09-10', 10.00,
 'Mystical and inspiring', 4, '2023-08-20',
 15, 'Youth Program Coordinator', 'mahmoud.ali@library.com', '01277788899', '2023-01-10', 3,
 15, 'Teen Poetry Slam', 'Encourage creative writing', '2023-12-05', '2023-12-20',
 '2023-12-15', 'Poetry Night', 'Cultural Event',
 15, 'Poetry Monthly', 'Literature', 20.00, 15,
 'Damietta Library', '10 Coastal Road, Damietta', '+20 57 1234 5678', 'info@damiettalibrary.com',
 '2023-07-16', 'Free poetry workshops');

INSERT INTO CentralLibrary_UNF VALUES
(16, 'Hany Omar', 'hanyPass789', 'hany.omar@email.com', '1989-04-15', '01044455566',
 16, 'The Time Traveler’s Wife', '2003-09-01', 'MacAdam/Cage', 'Available', 0,
 '2023-08-15', '2023-09-15', NULL,
 'Unique and emotional', 4, '2023-08-25',
 16, 'Systems Librarian', 'rana.khaled@library.com', '01188899900', '2022-06-01', 2,
 16, 'Library Tech Training', 'Learn library systems', '2023-12-10', '2023-12-24',
 '2023-12-20', 'Digital Resources Workshop', 'Technology',
 16, 'Tech Trends', 'Technology', 30.00, 12,
 'Beni Suef Library', '30 Nile Road, Beni Suef', '+20 82 9876 5432', 'info@benisueflibrary.com',
 '2023-07-17', 'New e-books available');

INSERT INTO CentralLibrary_UNF VALUES
(17, 'Reem Fathy', 'reemPass456', 'reem.fathy@email.com', '1991-07-20', '01255566677',
 17, 'Midaq Alley', '1947-01-01', 'AUC Press', 'Checked Out', 1,
 '2023-08-20', '2023-09-20', 7.00,
 'Vivid portrayal of Cairo', 5, '2023-08-30',
 17, 'Outreach Librarian', 'tarek.mohamed@library.com', '01099900011', '2021-08-15', 1,
 17, 'Community Reading Program', 'Promote literacy', '2024-01-01', '2024-01-31',
 '2023-12-25', 'Naguib Mahfouz Tribute', 'Literary Event',
 17, 'Cairo Review', 'Culture', 22.50, 18,
 'Minya Library', '45 Minya Street, Minya', '+20 86 1234 5678', 'info@minyalibrary.com',
 '2023-07-18', 'New community programs');

INSERT INTO CentralLibrary_UNF VALUES
(18, 'Ali Gamal', 'aliPass123', 'ali.gamal@email.com', '1985-02-28', '01166677788',
 18, 'The Da Vinci Code', '2003-03-18', 'Doubleday', 'Available', 2,
 '2023-08-25', '2023-09-25', NULL,
 'Thrilling and engaging', 4, '2023-09-05',
 18, 'Volunteer Coordinator', 'noura.hassan@library.com', '01200011122', '2022-09-20', 3,
 18, 'Volunteer Training', 'Support library operations', '2024-01-05', '2024-01-20',
 '2024-01-10', 'Mystery Book Club', 'Book Club',
 18, 'Mystery Monthly', 'Mystery', 27.00, 20,
 'Sohag Library', '20 Sohag Avenue, Sohag', '+20 93 9876 5432', 'info@sohaglibrary.com',
 '2023-07-19', 'Join our volunteer team');

INSERT INTO CentralLibrary_UNF VALUES
(19, 'Dina Hamed', 'dinaPass789', 'dina.hamed@email.com', '1997-10-10', '01077788899',
 19, 'The Book Thief', '2005-09-01', 'Knopf Books', 'Reserved', 1,
 '2023-08-30', '2023-09-30', 8.00,
 'Heart-wrenching and beautiful', 5, '2023-09-10',
 19, 'Children’s Program Assistant', 'mohamed.salem@library.com', '01111122233', '2023-02-01', 9,
 19, 'Storytelling Festival', 'Engage young readers', '2024-01-15', '2024-01-30',
 '2024-01-20', 'Kids’ Reading Day', 'Children’s Event',
 19, 'Kids’ World', 'Children', 15.00, 30,
 'Qena Library', '35 Qena Road, Qena', '+20 96 1234 5678', 'info@qenalibrary.com',
 '2023-07-20', 'New children’s books');

INSERT INTO CentralLibrary_UNF VALUES
(20, 'Ziad Mostafa', 'ziadPass456', 'ziad.mostafa@email.com', '1988-05-05', '01288899900',
 20, 'The Shadow of the Wind', '2001-04-25', 'Penguin Books', 'Checked Out', 0,
 '2023-09-01', '2023-10-01', 6.00,
 'Mysterious and captivating', 4, '2023-09-15',
 20, 'Technical Services Librarian', 'sama.khaled@library.com', '01022233344', '2022-04-10', 2,
 20, 'Cataloging Workshop', 'Learn library cataloging', '2024-02-01', '2024-02-15',
 '2024-01-25', 'Library Systems Seminar', 'Technology',
 20, 'Library Journal', 'Library Science', 28.00, 10,
 'Assiut Library', '50 Assiut Street, Assiut', '+20 88 9876 5432', 'info@assiutlibrary.com',
 '2023-07-21', 'Updated catalog system');

INSERT INTO CentralLibrary_UNF VALUES
(21, 'Nourhan Adel', 'nourPass123', 'nourhan.adel@email.com', '1993-03-15', '01199900011',
 21, 'One Hundred Years of Solitude', '1967-05-30', 'Harper & Row', 'Available', 1,
 '2023-09-05', '2023-10-05', NULL,
 'Magical realism masterpiece', 5, '2023-09-20',
 21, 'Public Relations Officer', 'ahmed.nabil@library.com', '01233344455', '2021-07-05', 1,
 21, 'Library Open House', 'Welcome new members', '2024-02-10', '2024-02-10',
 '2024-02-05', 'Community Day', 'Community Event',
 21, 'Book Review Weekly', 'Literature', 19.50, 22,
 'Fayoum Library', '15 Fayoum Road, Fayoum', '+20 84 1234 5678', 'info@fayoumlibrary.com',
 '2023-07-22', 'Open house event planned');

INSERT INTO CentralLibrary_UNF VALUES
(22, 'Mahmoud Rashed', 'mahmoudPass789', 'mahmoud.rashed@email.com', '1986-12-20', '01000011122',
 22, 'The Name of the Rose', '1980-01-01', 'Harcourt', 'Checked Out', 2,
 '2023-09-10', '2023-10-10', 9.00,
 'Intriguing medieval mystery', 4, '2023-09-25',
 22, 'Interlibrary Loan Specialist', 'laila.omar@library.com', '01144455566', '2022-08-01', 2,
 22, 'Interlibrary Loan Workshop', 'Learn resource sharing', '2024-02-15', '2024-02-28',
 '2024-02-10', 'Mystery Author Talk', 'Literary Event',
 22, 'Historical Fiction Review', 'History', 26.00, 15,
 'Kafr El Sheikh Library', '20 Kafr Street, Kafr El Sheikh', '+20 47 9876 5432', 'info@kafrelsheikhlibrary.com',
 '2023-07-23', 'Interlibrary loans now available');

 INSERT INTO CentralLibrary_UNF VALUES
(23, 'Yasmin Hany', 'yasminPass123', 'yasmin.hany@email.com', '1990-06-10', '01012398765',
 23, 'The God of Small Things', '1997-04-01', 'Random House', 'Available', 1,
 '2023-09-15', '2023-10-15', NULL,
 'Beautifully written', 5, '2023-09-25',
 23, 'Digital Archivist', 'khaled.sami@library.com', '01155577788', '2022-05-10', 1,
 23, 'Digital Preservation Workshop', 'Preserve digital records', '2024-03-01', '2024-03-15',
 '2024-02-15', 'Digital Archives Talk', 'Technology',
 23, 'Digital Trends', 'Technology', 24.50, 18,
 'Arish Library', '12 Sinai Road, Arish', '+20 68 1234 5678', 'info@arishlibrary.com',
 '2023-07-24', 'New digital resources added');

INSERT INTO CentralLibrary_UNF VALUES
(24, 'Amr Khaled', 'amrPass456', 'amr.khaled@email.com', '1984-09-22', '01234598765',
 24, 'The House of the Spirits', '1982-01-01', 'Knopf', 'Checked Out', 0,
 '2023-09-20', '2023-10-20', 7.50,
 'Magical and emotional', 4, '2023-09-30',
 24, 'Collection Development Librarian', 'sana.mohamed@library.com', '01066688899', '2021-06-20', NULL,
 24, 'Book Acquisition Seminar', 'Curate library collections', '2024-03-10', '2024-03-20',
 '2024-03-05', 'Latin American Literature Night', 'Literary Event',
 24, 'World Literature', 'Literature', 21.00, 20,
 'Hurghada Library', '25 Red Sea Avenue, Hurghada', '+20 65 9876 5432', 'info@hurghadalibrary.com',
 '2023-07-25', 'New international titles');

INSERT INTO CentralLibrary_UNF VALUES
(25, 'Sama Tarek', 'samaPass789', 'sama.tarek@email.com', '1995-12-05', '01178912345',
 25, 'The Night Circus', '2011-09-13', 'Doubleday', 'Reserved', 2,
 '2023-09-25', '2023-10-25', 10.00,
 'Enchanting and imaginative', 5, '2023-10-05',
 25, 'Events Planner', 'omar.hassan@library.com', '01277799900', '2023-03-01', 3,
 25, 'Fantasy Book Festival', 'Celebrate fantasy genre', '2024-04-01', '2024-04-15',
 '2024-03-15', 'Fantasy Author Panel', 'Literary Event',
 25, 'Fantasy Focus', 'Fantasy', 26.50, 15,
 'Sharm El Sheikh Library', '30 Peace Road, Sharm El Sheikh', '+20 69 1234 5678', 'info@sharm library.com',
 '2023-07-26', 'Fantasy section expanded');

INSERT INTO CentralLibrary_UNF VALUES
(26, 'Karim Nabil', 'karimPass123', 'karim.nabil@email.com', '1987-03-18', '01098712345',
 26, 'The Alchemist’s Daughter', '2006-01-31', 'HarperCollins', 'Available', 0,
 '2023-09-30', '2023-10-30', NULL,
 'Intriguing historical fantasy', 4, '2023-10-10',
 26, 'Reference Assistant', 'nada.ali@library.com', '01188812345', '2022-07-15', 2,
 26, 'Research Skills Workshop', 'Learn research techniques', '2024-04-10', '2024-04-20',
 '2024-04-05', 'Historical Fiction Discussion', 'Book Club',
 26, 'Academic Review', 'Research', 28.00, 12,
 'Damanhur Library', '40 Beheira Street, Damanhur', '+20 45 9876 5432', 'info@damanhurlibrary.com',
 '2023-07-27', 'New academic resources');

INSERT INTO CentralLibrary_UNF VALUES
(27, 'Hala Mostafa', 'halaPass456', 'hala.mostafa@email.com', '1992-08-25', '01212345678',
 27, 'Beloved', '1987-09-01', 'Knopf', 'Checked Out', 1,
 '2023-10-05', '2023-11-05', 6.00,
 'Powerful and haunting', 5, '2023-10-15',
 27, 'Community Outreach Coordinator', 'tamer.khaled@library.com', '01099912345', '2022-02-20', 1,
 27, 'Community Book Drive', 'Collect books for schools', '2024-05-01', '2024-05-15',
 '2024-04-20', 'Toni Morrison Tribute', 'Literary Event',
 27, 'American Literature', 'Literature', 23.50, 20,
 'Banha Library', '15 Banha Road, Banha', '+20 13 1234 5678', 'info@banhalibrary.com',
 '2023-07-28', 'Community programs launched');

INSERT INTO CentralLibrary_UNF VALUES
(28, 'Omar Salem', 'omarPass789', 'omar.salem@email.com', '1989-01-15', '01123456789',
 28, 'The Handmaid’s Tale', '1985-01-01', 'McClelland & Stewart', 'Available', 2,
 '2023-10-10', '2023-11-10', NULL,
 'Chilling dystopian novel', 4, '2023-10-20',
 28, 'Librarian Trainee', 'reham.mohamed@library.com', '01200023456', '2023-04-10', 9,
 28, 'Dystopian Book Club', 'Discuss dystopian themes', '2024-05-10', '2024-05-20',
 '2024-05-05', 'Margaret Atwood Talk', 'Literary Event',
 28, 'Sci-Fi Monthly', 'Science Fiction', 27.00, 18,
 'Mallawi Library', '20 Mallawi Street, Mallawi', '+20 86 9876 5432', 'info@mallawilibrary.com',
 '2023-07-29', 'New sci-fi collection');

INSERT INTO CentralLibrary_UNF VALUES
(29, 'Lina Ahmed', 'linaPass123', 'lina.ahmed@email.com', '1994-04-30', '01034567890',
 29, 'Persepolis', '2000-01-01', 'Pantheon Books', 'Reserved', 1,
 '2023-10-15', '2023-11-15', 8.00,
 'Moving graphic memoir', 5, '2023-10-25',
 29, 'Graphic Novels Specialist', 'hany.said@library.com', '01111134567', '2022-09-10', 3,
 29, 'Graphic Novel Workshop', 'Explore graphic storytelling', '2024-06-01', '2024-06-15',
 '2024-05-25', 'Comic Book Day', 'Cultural Event',
 29, 'Comics Today', 'Comics', 22.00, 15,
 'Rosetta Library', '10 Rosetta Road, Rosetta', '+20 45 1234 5678', 'info@rosettalibrary.com',
 '2023-07-30', 'Graphic novels now available');

INSERT INTO CentralLibrary_UNF VALUES
(30, 'Tarek Fathy', 'tarekPass456', 'tarek.fathy@email.com', '1986-07-12', '01245678901',
 30, 'The Color Purple', '1982-06-01', 'Harcourt Brace', 'Checked Out', 0,
 '2023-10-20', '2023-11-20', 5.00,
 'Emotional and inspiring', 4, '2023-10-30',
 30, 'Circulation Assistant', 'mona.ali@library.com', '01022245678', '2023-01-15', 2,
 30, 'Reading Marathon', 'Encourage extended reading', '2024-06-10', '2024-06-20',
 '2024-06-05', 'Alice Walker Discussion', 'Book Club',
 30, 'Women’s Review', 'Literature', 25.50, 20,
 'Mit Ghamr Library', '30 Mit Ghamr Street, Mit Ghamr', '+20 50 9876 5432', 'info@mitghamrlibrary.com',
 '2023-07-31', 'New women’s literature');

INSERT INTO CentralLibrary_UNF VALUES
(31, 'Noura Sami', 'nouraPass789', 'noura.sami@email.com', '1991-10-25', '01156789012',
 31, 'The Catcher in the Rye', '1951-07-16', 'Little, Brown', 'Available', 1,
 '2023-10-25', '2023-11-25', NULL,
 'Timeless coming-of-age story', 4, '2023-11-05',
 31, 'Teen Program Coordinator', 'ali.khaled@library.com', '01233356789', '2022-03-20', 1,
 31, 'Teen Writing Workshop', 'Develop writing skills', '2024-07-01', '2024-07-15',
 '2024-06-15', 'Young Adult Book Club', 'Book Club',
 31, 'Teen Reads', 'Young Adult', 20.00, 25,
 'Shibin El Kom Library', '15 Menoufia Road, Shibin El Kom', '+20 48 1234 5678', 'info@shibinelkomlibrary.com',
 '2023-08-01', 'Teen programs announced');

INSERT INTO CentralLibrary_UNF VALUES
(32, 'Hossam Gamal', 'hossamPass123', 'hossam.gamal@email.com', '1988-02-15', '01067890123',
 32, '1984', '1949-06-08', 'Secker & Warburg', 'Checked Out', 2,
 '2023-10-30', '2023-11-30', 9.00,
 'Classic dystopian novel', 5, '2023-11-10',
 32, 'Systems Administrator', 'sara.mostafa@library.com', '01144467890', '2021-11-10', 2,
 32, 'Cybersecurity Workshop', 'Learn online safety', '2024-07-10', '2024-07-20',
 '2024-07-05', 'Tech Security Talk', 'Technology',
 32, 'Cybersecurity Today', 'Technology', 30.00, 12,
 'Monufia Library', '20 Monufia Street, Monufia', '+20 48 9876 5432', 'info@monufialibrary.com',
 '2023-08-02', 'New tech resources');

INSERT INTO CentralLibrary_UNF VALUES
(33, 'Rana Khaled', 'ranaPass456', 'rana.khaled@email.com', '1993-05-20', '01278901234',
 33, 'To Kill a Mockingbird', '1960-07-11', 'J.B. Lippincott', 'Available', 0,
 '2023-11-05', '2023-12-05', NULL,
 'Timeless and impactful', 5, '2023-11-15',
 33, 'Outreach Assistant', 'mahmoud.hany@library.com', '01055578901', '2022-06-15', 1,
 33, 'Community Literacy Program', 'Promote reading skills', '2024-08-01', '2024-08-15',
 '2024-07-20', 'Harper Lee Discussion', 'Book Club',
 33, 'Classic Literature', 'Literature', 22.50, 20,
 'Bilbeis Library', '25 Bilbeis Road, Bilbeis', '+20 55 1234 5678', 'info@bilbeislibrary.com',
 '2023-08-03', 'New classics section');

INSERT INTO CentralLibrary_UNF VALUES
(34, 'Adel Mostafa', 'adelPass789', 'adel.mostafa@email.com', '1985-08-10', '01189012345',
 34, 'The Great Gatsby', '1925-04-10', 'Scribner', 'Reserved', 1,
 '2023-11-10', '2023-12-10', 7.00,
 'Elegant and tragic', 4, '2023-11-20',
 34, 'Cataloging Assistant', 'nada.salem@library.com', '01266689012', '2023-02-10', 3,
 34, 'Classic Literature Seminar', 'Discuss classic works', '2024-08-10', '2024-08-20',
 '2024-08-05', 'F. Scott Fitzgerald Night', 'Literary Event',
 34, 'Literary Classics', 'Literature', 24.00, 18,
 'Zifta Library', '30 Zifta Street, Zifta', '+20 40 9876 5432', 'info@ziftalibrary.com',
 '2023-08-04', 'New classic titles');

INSERT INTO CentralLibrary_UNF VALUES
(35, 'Mona Tarek', 'monaPass123', 'mona.tarek@email.com', '1990-11-30', '01090123456',
 35, 'The Hobbit', '1937-09-21', 'Houghton Mifflin', 'Checked Out', 2,
 '2023-11-15', '2023-12-15', 8.00,
 'Epic fantasy adventure', 5, '2023-11-25',
 35, 'Children’s Librarian', 'hassan.ali@library.com', '01177790123', '2022-04-20', 9,
 35, 'Kids’ Fantasy Reading', 'Engage young readers', '2024-09-01', '2024-09-15',
 '2024-08-15', 'Tolkien Day', 'Children’s Event',
 35, 'Kids’ Fantasy', 'Children', 18.50, 25,
 'Samannoud Library', '15 Samannoud Road, Samannoud', '+20 40 1234 5678', 'info@samannoudlibrary.com',
 '2023-08-05', 'New children’s fantasy books');

INSERT INTO CentralLibrary_UNF VALUES
(36, 'Sami Hamed', 'samiPass456', 'sami.hamed@email.com', '1987-02-25', '01201234567',
 36, 'Brave New World', '1932-01-01', 'Chatto & Windus', 'Available', 0,
 '2023-11-20', '2023-12-20', NULL,
 'Thought-provoking dystopia', 4, '2023-11-30',
 36, 'IT Assistant', 'laila.khaled@library.com', '01088801234', '2023-01-05', 2,
 36, 'Tech Literacy Program', 'Teach tech skills', '2024-09-10', '2024-09-20',
 '2024-09-05', 'Dystopian Tech Talk', 'Technology',
 36, 'Tech World', 'Technology', 29.00, 15,
 'Kafr El Zayat Library', '20 Kafr El Zayat Street, Kafr El Zayat', '+20 40 9876 5432', 'info@kafrelzayatlibr.com',
 '2023-08-06', 'New tech books added');

INSERT INTO CentralLibrary_UNF VALUES
(37, 'Laila Adel', 'lailaPass789', 'laila.adel@email.com', '1992-06-15', '01112345678',
 37, 'The Bell Jar', '1963-01-14', 'Heinemann', 'Checked Out', 1,
 '2023-11-25', '2023-12-25', 6.00,
 'Intimate and powerful', 4, '2023-12-05',
 37, 'Reference Librarian', 'tarek.sami@library.com', '01299912345', '2022-07-01', 1,
 37, 'Mental Health Book Club', 'Discuss mental health themes', '2024-10-01', '2024-10-15',
 '2024-09-20', 'Sylvia Plath Discussion', 'Book Club',
 37, 'Psychology Today', 'Psychology', 26.50, 20,
 'Desouk Library', '25 Desouk Road, Desouk', '+20 47 1234 5678', 'info@desouklibrary.com',
 '2023-08-07', 'New psychology section');

INSERT INTO CentralLibrary_UNF VALUES
(38, 'Hany Nabil', 'hanyPass123', 'hany.nabil@email.com', '1989-09-10', '01023456789',
 38, 'The Road', '2006-09-26', 'Knopf', 'Reserved', 2,
 '2023-11-30', '2023-12-30', 10.00,
 'Bleak but gripping', 5, '2023-12-10',
 38, 'Events Coordinator', 'mona.hassan@library.com', '01100023456', '2023-03-15', 3,
 38, 'Post-Apocalyptic Book Club', 'Explore post-apocalyptic themes', '2024-10-10', '2024-10-20',
 '2024-10-05', 'Cormac McCarthy Night', 'Literary Event',
 38, 'Sci-Fi Review', 'Science Fiction', 27.50, 18,
 'Sadat City Library', '30 Sadat Road, Sadat City', '+20 48 9876 5432', 'info@sadatcitylibrary.com',
 '2023-08-08', 'New sci-fi titles');

INSERT INTO CentralLibrary_UNF VALUES
(39, 'Noha Salem', 'nohaPass456', 'noha.salem@email.com', '1994-12-05', '01234567890',
 39, 'The Secret History', '1992-09-01', 'Knopf', 'Available', 1,
 '2023-12-05', '2024-01-05', NULL,
 'Dark and intellectual', 4, '2023-12-15',
 39, 'Acquisitions Assistant', 'ali.mohamed@library.com', '01011134567', '2022-05-20', 2,
 39, 'Mystery Book Acquisition', 'Curate mystery collection', '2024-11-01', '2024-11-15',
 '2024-10-15', 'Donna Tartt Discussion', 'Book Club',
 39, 'Mystery Weekly', 'Mystery', 23.00, 15,
 'Menouf Library', '15 Menouf Road, Menouf', '+20 48 1234 5678', 'info@menouflibrary.com',
 '2023-08-09', 'New mystery novels');

INSERT INTO CentralLibrary_UNF VALUES
(40, 'Tamer Hamed', 'tamerPass789', 'tamer.hamed@email.com', '1986-03-20', '01145678901',
 40, 'Life of Pi', '2001-09-01', 'Knopf Canada', 'Checked Out', 0,
 '2023-12-10', '2024-01-10', 7.00,
 'Philosophical and adventurous', 5, '2023-12-20',
 40, 'Youth Librarian', 'sara.khaled@library.com', '01222245678', '2023-02-01', 9,
 40, 'Adventure Book Club', 'Discuss adventure stories', '2024-11-10', '2024-11-20',
 '2024-11-05', 'Yann Martel Talk', 'Literary Event',
 40, 'Adventure Monthly', 'Adventure', 25.00, 20,
 'Shebin El Qanater Library', '20 Shebin Road, Shebin El Qanater', '+20 13 9876 5432', 'info@shebinelqanaterlibrary.com',
 '2023-08-10', 'New adventure books');

INSERT INTO CentralLibrary_UNF VALUES
(41, 'Sana Adel', 'sanaPass123', 'sana.adel@email.com', '1991-07-15', '01056789012',
 41, 'The Remains of the Day', '1989-05-01', 'Faber & Faber', 'Available', 1,
 '2023-12-15', '2024-01-15', NULL,
 'Subtle and poignant', 4, '2023-12-25',
 41, 'Cataloging Manager', 'hassan.sami@library.com', '01133356789', '2022-08-15', 1,
 41, 'Cataloging Training', 'Learn cataloging standards', '2024-12-01', '2024-12-15',
 '2024-11-20', 'Kazuo Ishiguro Discussion', 'Book Club',
 41, 'Literary Review', 'Literature', 22.50, 18,
 'Basyoun Library', '25 Basyoun Road, Basyoun', '+20 40 1234 5678', 'info@basyounlibrary.com',
 '2023-08-11', 'New cataloging system');

INSERT INTO CentralLibrary_UNF VALUES
(42, 'Khaled Omar', 'khaledPass456', 'khaled.omar@email.com', '1988-10-10', '01267890123',
 42, 'The Old Man and the Sea', '1952-09-01', 'Scribner', 'Checked Out', 2,
 '2023-12-20', '2024-01-20', 6.00,
 'Concise and powerful', 5, '2023-12-30',
 42, 'Reference Assistant', 'mona.nabil@library.com', '01044467890', '2023-03-10', 2,
 42, 'Classic Book Club', 'Discuss classic literature', '2024-12-10', '2024-12-20',
 '2024-12-05', 'Hemingway Night', 'Literary Event',
 42, 'Classic Reads', 'Literature', 24.00, 20,
 'Qalyub Library', '30 Qalyub Road, Qalyub', '+20 13 9876 5432', 'info@qalyublibrary.com',
 '2023-08-12', 'New classic section');

INSERT INTO CentralLibrary_UNF VALUES
(43, 'Reham Tarek', 'rehamPass789', 'reham.tarek@email.com', '1993-01-25', '01178901234',
 43, 'The Giver', '1993-04-01', 'Houghton Mifflin', 'Reserved', 0,
 '2023-12-25', '2024-01-25', 8.00,
 'Thought-provoking dystopia', 4, '2024-01-05',
 43, 'Teen Program Assistant', 'ali.hassan@library.com', '01255578901', '2022-06-20', 9,
 43, 'Teen Dystopian Reading', 'Engage young readers', '2025-01-01', '2025-01-15',
 '2024-12-15', 'Lois Lowry Discussion', 'Book Club',
 43, 'Young Adult Reads', 'Young Adult', 20.50, 15,
 'Tala Library', '15 Tala Road, Tala', '+20 48 1234 5678', 'info@talalibrary.com',
 '2023-08-13', 'New young adult titles');

INSERT INTO CentralLibrary_UNF VALUES
(44, 'Hassan Salem', 'hassanPass123', 'hassan.salem@email.com', '1986-04-30', '01090123456',
 44, 'The Joy Luck Club', '1989-03-01', 'Putnam', 'Available', 1,
 '2023-12-30', '2024-01-30', NULL,
 'Rich cultural narrative', 5, '2024-01-10',
 44, 'Community Liaison', 'sara.adel@library.com', '01166690123', '2023-01-15', 1,
 44, 'Cultural Reading Program', 'Explore diverse cultures', '2025-01-10', '2025-01-20',
 '2025-01-05', 'Amy Tan Discussion', 'Book Club',
 44, 'Cultural Review', 'Culture', 25.50, 18,
 'Aga Library', '20 Aga Road, Aga', '+20 50 9876 5432', 'info@agalibrary.com',
 '2023-08-14', 'New cultural books');

INSERT INTO CentralLibrary_UNF VALUES
(45, 'Noha Adel', 'nohaPass456', 'noha.adel@email.com', '1991-08-15', '01201234567',
 45, 'The Brief Wondrous Life of Oscar Wao', '2007-09-01', 'Riverhead Books', 'Checked Out', 2,
 '2024-01-05', '2024-02-05', 7.00,
 'Vibrant and unique', 4, '2024-01-15',
 45, 'Events Assistant', 'tarek.nabil@library.com', '01077701234', '2022-09-01', 3,
 45, 'Contemporary Fiction Club', 'Discuss modern novels', '2025-02-01', '2025-02-15',
 '2025-01-20', 'Junot Díaz Talk', 'Literary Event',
 45, 'Modern Fiction', 'Literature', 26.00, 20,
 'Dikirnis Library', '25 Dikirnis Road, Dikirnis', '+20 50 1234 5678', 'info@dikirnislibrary.com',
 '2023-08-15', 'New modern fiction');

INSERT INTO CentralLibrary_UNF VALUES
(46, 'Sami Mostafa', 'samiPass789', 'sami.mostafa@email.com', '1988-11-10', '01112345678',
 46, 'The Martian', '2011-09-01', 'Crown Publishing', 'Available', 0,
 '2024-01-10', '2024-02-10', NULL,
 'Funny and scientific', 5, '2024-01-20',
 46, 'Science Librarian', 'mona.sami@library.com', '01288812345', '2023-02-20', 2,
 46, 'Science Fiction Seminar', 'Explore sci-fi themes', '2025-02-10', '2025-02-20',
 '2025-02-05', 'Andy Weir Discussion', 'Book Club',
 46, 'Science Fiction Weekly', 'Science Fiction', 27.50, 15,
 'Kafr Saqr Library', '30 Kafr Saqr Road, Kafr Saqr', '+20 55 9876 5432', 'info@kafrsaqrlibrary.com',
 '2023-08-16', 'New sci-fi collection');

INSERT INTO CentralLibrary_UNF VALUES
(47, 'Laila Hamed', 'lailaPass123', 'laila.hamed@email.com', '1993-02-25', '01023456789',
 47, 'The Fault in Our Stars', '2012-01-10', 'Dutton Books', 'Reserved', 1,
 '2024-01-15', '2024-02-15', 8.00,
 'Emotional and heartfelt', 4, '2024-01-25',
 47, 'Teen Events Coordinator', 'hassan.khaled@library.com', '01199923456', '2022-06-10', 9,
 47, 'Teen Romance Reading', 'Engage young readers', '2025-03-01', '2025-03-15',
 '2025-02-20', 'John Green Night', 'Literary Event',
 47, 'Teen Romance', 'Young Adult', 22.00, 20,
 'Belqas Library', '15 Belqas Road, Belqas', '+20 50 1234 5678', 'info@belqaslibrary.com',
 '2023-08-17', 'New teen romance books');

INSERT INTO CentralLibrary_UNF VALUES
(48, 'Tarek Adel', 'tarekPass456', 'tarek.adel@email.com', '1986-05-20', '01234567890',
 48, 'The Shining', '1977-01-28', 'Doubleday', 'Checked Out', 2,
 '2024-01-20', '2024-02-20', 6.00,
 'Terrifying and suspenseful', 5, '2024-01-30',
 48, 'Horror Specialist', 'sara.nabil@library.com', '01000034567', '2023-03-01', 2,
 48, 'Horror Book Club', 'Discuss horror novels', '2025-03-10', '2025-03-20',
 '2025-03-05', 'Stephen King Discussion', 'Book Club',
 48, 'Horror Monthly', 'Horror', 25.50, 18,
 'Sherbin Library', '20 Sherbin Road, Sherbin', '+20 50 9876 5432', 'info@sherbinlibrary.com',
 '2023-08-18', 'New horror collection');

INSERT INTO CentralLibrary_UNF VALUES
(49, 'Mona Salem', 'monaPass789', 'mona.salem@email.com', '1991-09-15', '01145678901',
 49, 'The Hunger Games', '2008-09-14', 'Scholastic', 'Available', 0,
 '2024-01-25', '2024-02-25', NULL,
 'Fast-paced and thrilling', 4, '2024-02-05',
 49, 'Young Adult Librarian', 'ali.sami@library.com', '01211145678', '2022-08-20', 9,
 49, 'Dystopian Teen Club', 'Explore dystopian themes', '2025-04-01', '2025-04-15',
 '2025-03-20', 'Suzanne Collins Talk', 'Literary Event',
 49, 'Dystopian Reads', 'Young Adult', 23.50, 20,
 'Manzala Library', '25 Manzala Road, Manzala', '+20 50 1234 5678', 'info@manzalalibrary.com',
 '2023-08-19', 'New dystopian novels');

INSERT INTO CentralLibrary_UNF VALUES
(50, 'Hassan Tarek', 'hassanPass123', 'hassan.tarek@email.com', '1988-12-10', '01056789012',
 50, 'The Girl with the Dragon Tattoo', '2005-08-01', 'Norstedts Förlag', 'Checked Out', 1,
 '2024-01-30', '2024-02-29', 7.00,
 'Gripping crime thriller', 5, '2024-02-10',
 50, 'Mystery Librarian', 'laila.adel@library.com', '01122256789', '2023-01-10', 2,
 50, 'Crime Fiction Seminar', 'Discuss crime novels', '2025-04-10', '2025-04-20',
 '2025-04-05', 'Stieg Larsson Discussion', 'Book Club',
 50, 'Crime Weekly', 'Mystery', 26.00, 15,
 'Gamasa Library', '30 Gamasa Road, Gamasa', '+20 50 9876 5432', 'info@gamasalibrary.com',
 '2023-08-20', 'New crime fiction titles');

 
 select * 
 from CentralLibrary_UNF;
