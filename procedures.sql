-- youesf

--Get All Borrowed Books with User Info
CREATE PROCEDURE sp_GetAllBorrowedBooks
AS
BEGIN
    SELECT 
        u.User_ID,
        u.UserName,
        b.Book_ID,
        bk.Title,
        b.Start_Date,
        b.End_Date,
        b.Fines
    FROM 
        Borrow_Books_second b
    JOIN 
        Users_second u ON b.User_ID = u.User_ID
    JOIN 
        Books_second bk ON b.Book_ID = bk.Book_ID
    ORDER BY 
        b.Start_Date DESC
END;

EXEC sp_GetAllBorrowedBooks;


--Get Subscription Details for a User
CREATE PROCEDURE sp_GetUserSubscriptions
(
    @UserID INT
)
AS
BEGIN
    SELECT 
        u.UserName,
        m.Magazine_Name,
        m.Price
    FROM 
        Subscribe_Magazine_second s
    JOIN 
        Magazine_second m ON s.Magazine_ID = m.Magazine_ID
    JOIN 
        Users_second u ON s.User_ID = u.User_ID
    WHERE 
        s.User_ID = @UserID
END;

EXEC sp_GetUserSubscriptions  @UserID=1;
