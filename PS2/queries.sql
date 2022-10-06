USE `book_business`;

# 7.1 Books per author
SELECT A.AuthorID, A.FirstName, A.LastName,B.BookID, B.BookName
FROM Authors AS A
JOIN AuthorBooks AS Junction 
	ON A.AuthorID = Junction.AuthorID
JOIN Books AS B 
	ON B.BookID = Junction.BookID
ORDER BY
	A.AuthorID;


# 7.2 Authors per book
SELECT B.BookID, B.BookName, A.AuthorID, A.FirstName, A.LastName
FROM Books AS B
JOIN AuthorBooks AS Junction 
	ON B.BookID = Junction.BookID
JOIN Authors AS A
	ON A.AuthorID = Junction.AuthorID
ORDER BY
	B.BookID;


# 7.3 Author royalties on a book
SELECT B.BookID, B.BookName, A.AuthorID, A.FirstName, A.LastName, Junction.Royalty
FROM Books AS B
JOIN AuthorBooks AS Junction 
	ON B.BookID = Junction.BookID
JOIN Authors AS A
	ON A.AuthorID = Junction.AuthorID
ORDER BY
	B.BookID;


# 7.4 Book royalties per author
SELECT A.AuthorID, A.FirstName, A.LastName,B.BookID, B.BookName, Junction.Royalty
FROM Authors AS A
JOIN AuthorBooks AS Junction 
	ON A.AuthorID = Junction.AuthorID
JOIN Books AS B 
	ON B.BookID = Junction.BookID
ORDER BY
	A.AuthorID;


# 7.5 Books in a genre
SELECT B.BookID, B.BookName, B.Genre
FROM Books AS B;
# if we want to find which is "Biography" genere
SELECT B.BookID, B.BookName, B.Genre
FROM Books AS B
WHERE B.Genre = 'Biography';


# 7.6 Books published by a publisher
SELECT P.PublisherID, P.PubName, B.BookID, B.BookName
FROM Publishers AS P
JOIN Books AS B
	ON P.PublisherID = B.PublisherID
ORDER BY
	P.PublisherID;


# 7.7 Editors per book
SELECT B.BookID, B.BookName, E.EditorID, E.FirstName, E.LastName
FROM Books AS B
JOIN EditorBooks AS Junction 
	ON B.BookID = Junction.BookID
JOIN Editors AS E
	ON E.EditorID = Junction.EditorID
ORDER BY
	B.BookID;


# 7.8 Books per editor
SELECT E.EditorID, E.FirstName, E.LastName, B.BookID, B.BookName
FROM Editors AS E
JOIN EditorBooks AS Junction 
	ON E.EditorID = Junction.EditorID
JOIN Books AS B
	ON B.BookID = Junction.BookID
ORDER BY
	E.EditorID;
    
    
# 7.9. Books in an order
SELECT O.OrderID, O.OrderDate, O.Value, B.BookID, B.BookName
FROM Orders AS O
JOIN BookOrders AS Junction 
	ON O.OrderID = Junction.OrderID
JOIN Books AS B
	ON B.BookID = Junction.BookID
ORDER BY
	O.OrderID;


# 7.10 Orders for a book
SELECT B.BookID, B.BookName, O.OrderID, O.OrderDate, O.Value
FROM Books AS B
JOIN BookOrders AS Junction 
	ON B.BookID = Junction.BookID
JOIN Orders AS O
	ON O.OrderID = Junction.OrderID
ORDER BY 
	B.BookID;


# 7.11 Customer orders
SELECT O.OrderID, O.OrderDate, O.Value,C.CustomerID, C.FirstName, C.LastName
FROM Customers AS C
JOIN Orders AS O
	ON O.CustomerID = C.CustomerID
ORDER BY
	O.OrderID;


# 7.12 Orders per customer
SELECT C.CustomerID, C.FirstName, C.LastName, O.OrderID, O.OrderDate, O.Value
FROM Customers AS C
JOIN Orders AS O
	ON O.CustomerID = C.CustomerID
ORDER BY
	C.CustomerID
