-- Drop tables if they exist
DROP TABLE IF EXISTS Borrow;
DROP TABLE IF EXISTS Book;
DROP TABLE IF EXISTS Member;

-- Create Member table
CREATE TABLE Member (
    member_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    join_date DATE
);

-- Create Book table
CREATE TABLE Book (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(100),
    published_year INT,
    available BOOLEAN DEFAULT TRUE
);

-- Create Borrow table
CREATE TABLE Borrow (
    borrow_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Member(member_id),
    FOREIGN KEY (book_id) REFERENCES Book(book_id)
);
