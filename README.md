# 📚 Central Library Database System

A comprehensive SQL-based relational database system designed to manage a academic library's operations, resources, and users. This project includes tables, relationships, constraints, and seed data for books, users, staff, activities, events, research projects, magazines, and more.

---

## 🏗️ Database Structure

### Database Name:

```sql
CREATE DATABASE CenteralLibrary;
```

### Tables Overview:

| Table                        | Purpose                                                |
| ---------------------------- | ------------------------------------------------------ |
| `Books`                      | Stores information about all books in the library      |
| `Users`                      | Holds member data including contact and borrowed books |
| `Staff`                      | Contains library personnel and their roles             |
| `Categories`                 | Classifies books into genres or types                  |
| `Branch_Library`             | Manages library branches and their contact info        |
| `Activity`                   | Tracks events and programs hosted by the library       |
| `Event`                      | Specific events like author meetups or book clubs      |
| `Magazine`                   | Magazine subscriptions available in the library        |
| `Review`                     | Users’ book reviews and ratings                        |
| `Borrow_Books`               | Tracks borrowing activities and potential fines        |
| `Read_Books`                 | Tracks which books users have read                     |
| `Research_Project`           | Links users to research projects                       |
| `Notifications`              | Stores messages or alerts for users                    |
| `Lead`                       | Tracks staff leadership roles in events                |
| `Staff_Phone`, `Users_Phone` | Multi-phone number support                             |
| `Manage_Books`               | Links staff to the books they manage                   |
| `Subscribe_Magazine`         | Manages magazine subscriptions per user                |
| `Participate_Activity`       | Participation log for activities                       |

---

## 🔐 Relationships & Constraints

* **Foreign Keys** ensure relational integrity (e.g., `Book_ID`, `User_ID`, `Staff_ID`, etc.)
* **ON DELETE CASCADE** used to maintain consistency on deletion
* **Composite Primary Keys** where necessary (e.g., `Borrow_Books`, `Read_Books`)
* **Indexes** are created on commonly queried fields like `Title`, `Email`, and `Magazine_Name`

---

## 🧪 Sample Data

The project is seeded with realistic data for testing purposes:

* 📖 Books: e.g., *The Yacoubian Building*, *Azazeel*
* 👤 Users: Sample library members with login credentials and borrowed books
* 👩‍💼 Staff: Includes librarians, IT specialists, and event coordinators
* 🗓️ Activities & Events: Book clubs, author meet-and-greets
* 🧾 Reviews: Real user feedback and ratings
* 📰 Magazines: Egyptian publications with pricing and duration

---

## ✅ Features

* Track borrowing, fines, and reading history
* Organize and manage library events and staff responsibilities
* Support multiple branches and contact details
* Secure structure for storing user credentials and emails
* Support for digital (e-book) flagging

---
## ERD
![ERD](https://github.com/user-attachments/assets/57686b18-20aa-4397-b2d8-e05017373d5c)

---
## Scheme
![Scheme](https://github.com/user-attachments/assets/bc33c345-876c-4f22-bfbb-502669351a06)

---
[all data here](https://drive.google.com/drive/folders/1YlYSjEaM_SfM3NDA2bTJNH7ckavpYyOY)

