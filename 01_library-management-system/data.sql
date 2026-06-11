INSERT INTO authors (name)
VALUES
('George Orwell'),
('J.K. Rowling');

INSERT INTO books (title, author_id)
VALUES
('1984', 1),
('Harry Potter', 2);

INSERT INTO members (name)
VALUES
('Ahmed'),
('Sara');

INSERT INTO borrowings
(member_id, book_id, borrow_date, return_date)
VALUES
(1, 1, '2026-01-01', NULL);
