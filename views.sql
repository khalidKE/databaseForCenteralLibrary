-- wafaa

use CentralLibrary;
go


-- show all details of users and their phones
CREATE VIEW View_Users_With_Phones AS
SELECT 
    u.User_ID,
    u.UserName,
    u.Email,
    u.DOB,
    p.Phone
FROM Users_second u
LEFT JOIN Users_Phone_second p ON u.User_ID = p.User_ID;


-- show books and their categories
CREATE VIEW View_Books_With_Categories AS
SELECT 
    b.Book_ID,
    b.Title,
    b.Publisher,
    b.Publisher_Date,
    b.Status,
    b.E_Book,
    bc.Category_Name
FROM Books_second b
LEFT JOIN Book_Categories_second bc ON b.Book_ID = bc.Book_ID;
 

 -- show users and books borrowed
 CREATE VIEW View_Borrowed_Books_Details AS
SELECT 
    bb.User_ID,
    u.UserName,
    bb.Book_ID,
    b.Title,
    bb.Start_Date,
    bb.End_Date,
    bb.Fines
FROM Borrow_Books_second bb
JOIN Users_second u ON bb.User_ID = u.User_ID
JOIN Books_second b ON bb.Book_ID = b.Book_ID;

CREATE VIEW View_Reviews_Details AS
SELECT 
    r.User_ID,
    u.UserName,
    r.Book_ID,
    b.Title,
    r.Comment,
    r.Review_Date,
    r.Rating
FROM Review_second r
JOIN Users_second u ON r.User_ID = u.User_ID
JOIN Books_second b ON r.Book_ID = b.Book_ID;


-- show activities of users
CREATE VIEW View_User_Activities AS
SELECT 
    p.User_ID,
    u.UserName,
    p.Activity_ID,
    a.Name AS Activity_Name,
    a.Description,
    a.Start_Date,
    a.End_Date
FROM Participate_Activity_second p
JOIN Users_second u ON p.User_ID = u.User_ID
JOIN Activity_second a ON p.Activity_ID = a.Activity_ID;

CREATE VIEW View_Staff_With_Supervisor AS
SELECT 
    s.Staff_ID,
    s.Role,
    s.Email,
    s.RepoartDate,
    s.Sup_Staff_ID,
    sup.Role AS Supervisor_Role
FROM Staff_second s
LEFT JOIN Staff_second sup ON s.Sup_Staff_ID = sup.Staff_ID;

CREATE VIEW View_User_Subscriptions AS
SELECT 
    sm.User_ID,
    u.UserName,
    sm.Magazine_ID,
    m.Magazine_Name,
    m.Attribute,
    m.Price,
    m.Duration
FROM Subscribe_Magazine_second sm
JOIN Users_second u ON sm.User_ID = u.User_ID
JOIN Magazine_second m ON sm.Magazine_ID = m.Magazine_ID;

CREATE VIEW View_Staff_Manage_Books AS
SELECT 
    mb.Staff_ID,
    s.Role,
    mb.Book_ID,
    b.Title
FROM Manage_Books_second mb
JOIN Staff_second s ON mb.Staff_ID = s.Staff_ID
JOIN Books_second b ON mb.Book_ID = b.Book_ID;