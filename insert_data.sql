-- Insert sample members
INSERT INTO Member (member_id, name, email, join_date) VALUES
(1, 'Alice Smith', 'alice@example.com', '2023-01-10'),
(2, 'Bob Johnson', 'bob@example.com', '2023-03-15');

-- Insert sample books
INSERT INTO Book (book_id, title, author, published_year, available) VALUES
(101, '1984', 'George Orwell', 1949, TRUE),
(102, 'Brave New World', 'Aldous Huxley', 1932, TRUE),
(103, 'Fahrenheit 451', 'Ray Bradbury', 1953, TRUE);

-- Insert sample borrow records
INSERT INTO Borrow (borrow_id, member_id, book_id, borrow_date, return_date) VALUES
(1001, 1, 101, '2024-04-01', NULL),
(1002, 2, 102, '2024-04-02', '2024-04-10');
