-- Get all members
SELECT * FROM Member;

-- Get all books currently available
SELECT * FROM Book WHERE available = TRUE;

-- Get books borrowed by Alice
SELECT b.title, br.borrow_date
FROM Borrow br
JOIN Member m ON br.member_id = m.member_id
JOIN Book b ON br.book_id = b.book_id
WHERE m.name = 'Alice Smith';

-- Get overdue books (assume overdue if not returned in 14 days)
SELECT m.name, b.title, br.borrow_date
FROM Borrow br
JOIN Member m ON br.member_id = m.member_id
JOIN Book b ON br.book_id = b.book_id
WHERE return_date IS NULL AND borrow_date < CURRENT_DATE - INTERVAL '14 days';
