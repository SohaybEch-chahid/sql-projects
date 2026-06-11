SELECT * FROM authors;

SELECT * FROM books;

SELECT * FROM members;

SELECT m.name, b.title
FROM borrowings br
JOIN members m ON br.member_id = m.id
JOIN books b ON br.book_id = b.id;
