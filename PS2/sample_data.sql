USE `book_business`;

-- ------------------------------
-- Populate Publishers
-- ------------------------------
INSERT INTO `Publishers` VALUES(1, 'GreatPub', '(353)-656-3456', 'Newton', 'MA', 'USA');
INSERT INTO `Publishers` VALUES(2, 'WonderfulPub', '(976)-476-9757', 'Orlando', 'FL', 'USA');
INSERT INTO `Publishers` VALUES(3, 'AwesomePub', '(356)-466-4664', 'Huston', 'TX', 'USA');

-- ------------------------------
-- Populate Books
-- ------------------------------
INSERT INTO `Books` VALUES(1, 'Basketball', 'Biography', 2, '199.99', '2017-02-22');
INSERT INTO `Books` VALUES(2, 'My Wife', 'Romance', 1, '40.59', '1968-07-12');
INSERT INTO `Books` VALUES(3, 'Marriage', 'Diary', 3, '30.99', '2018-02-12');
INSERT INTO `Books` VALUES(4, 'Harry Poter', 'Fantasy', 2, '59.99', '2015-05-26');
INSERT INTO `Books` VALUES(5, 'Ghost', 'Horror', 1, '79.99', '1998-01-02');
INSERT INTO `Books` VALUES(6, 'Who is The Murder', 'Crime', 3, '89.99', '2008-03-02');

-- ------------------------------
-- Populate Authors
-- ------------------------------
INSERT INTO `Authors` VALUES(1, 'Kobe', 'Brayant','(102)-949-3276', 'Los Angeles', 'CA', 'USA');
INSERT INTO `Authors` VALUES(2, 'Amy', 'James','(103)-329-5476', 'Boston', 'MA', 'USA');
INSERT INTO `Authors` VALUES(3, 'Ray', 'Iverson','(203)-435-3454', 'Madison', 'WI', 'USA');
INSERT INTO `Authors` VALUES(4, 'Jayson', 'Brown','(323)-787-4356', 'Irvine', 'CA', 'USA');
INSERT INTO `Authors` VALUES(5, 'Yun', 'Zhang','(435)-345-5434', 'Hangzhou', 'Zhejiang', 'China');

-- ------------------------------
-- Populate Editors
-- ------------------------------
INSERT INTO `Editors` VALUES(1, 'Stephen', 'Young', '(353)-355-3276', 'New York', 'NY', 'USA');
INSERT INTO `Editors` VALUES(2, 'Michael', 'Paul', '(464)-454-9477', 'Chicago', 'IL', 'USA');
INSERT INTO `Editors` VALUES(3, 'Lauren', 'Smith', '(356)-123-3454', 'Cambridge', 'MA', 'USA');
INSERT INTO `Editors` VALUES(4, 'Jayson', 'Brown', '(454)-735-4336', 'Miami', 'FL', 'USA');

-- ------------------------------
-- Populate Customers
-- ------------------------------
INSERT INTO `Customers` VALUES(1, 'Emily', 'Jones', '(353)-355-3276', 'New York', 'NY', 'USA');
INSERT INTO `Customers` VALUES(2, 'Ava', 'Johnson', '(345)-454-9457', 'Chicago', 'IL', 'USA');
INSERT INTO `Customers` VALUES(3, 'Jennifer', 'Miller', '(878)-123-3454', 'Cambridge', 'MA', 'USA');
INSERT INTO `Customers` VALUES(4, 'Jessica', 'Davis', '(359)-456-4336', 'Miami', 'FL', 'USA');
INSERT INTO `Customers` VALUES(5, 'Victoria', 'Wilson', '(365)-464-4336', 'San Diego', 'CA', 'USA');

-- ------------------------------
-- Populate Orders
-- ------------------------------
INSERT INTO `Orders` VALUES(1, '2022-01-01', 1, '200');
INSERT INTO `Orders` VALUES(2, '2022-01-02', 2, '200');
INSERT INTO `Orders` VALUES(3, '2022-01-03', 1, '300');
INSERT INTO `Orders` VALUES(4, '2022-01-04', 3, '220');
INSERT INTO `Orders` VALUES(5, '2022-01-05', 5, '500');
INSERT INTO `Orders` VALUES(6, '2022-01-06', 4, '100');
INSERT INTO `Orders` VALUES(7, '2022-01-07', 2, '180');

-- ------------------------------
-- Populate AUTHOR_BOOKS
-- ------------------------------
INSERT INTO `AuthorBooks` VALUES(1, 1, '24.8%');
INSERT INTO `AuthorBooks` VALUES(2, 1, '10%');
INSERT INTO `AuthorBooks` VALUES(2, 3, '32%');
INSERT INTO `AuthorBooks` VALUES(3, 2, '21%');
INSERT INTO `AuthorBooks` VALUES(3, 1, '5%');
INSERT INTO `AuthorBooks` VALUES(4, 2, '11%');
INSERT INTO `AuthorBooks` VALUES(4, 4, '40%');
INSERT INTO `AuthorBooks` VALUES(4, 5, '55%');
INSERT INTO `AuthorBooks` VALUES(5, 6, '50%');

-- ------------------------------
-- Populate EDITOR_BOOKS
-- ------------------------------
INSERT INTO `EditorBooks` VALUES(1, 1);
INSERT INTO `EditorBooks` VALUES(2, 1);
INSERT INTO `EditorBooks` VALUES(2, 3);
INSERT INTO `EditorBooks` VALUES(3, 2);
INSERT INTO `EditorBooks` VALUES(3, 4);
INSERT INTO `EditorBooks` VALUES(3, 5);
INSERT INTO `EditorBooks` VALUES(4, 3);
INSERT INTO `EditorBooks` VALUES(4, 6);

-- ------------------------------
-- Populate BOOK_ORDERS
-- ------------------------------
INSERT INTO `BookOrders` VALUES(1, 1);
INSERT INTO `BookOrders` VALUES(3, 1);
INSERT INTO `BookOrders` VALUES(4, 1);
INSERT INTO `BookOrders` VALUES(2, 2);
INSERT INTO `BookOrders` VALUES(3, 3);
INSERT INTO `BookOrders` VALUES(5, 4);
INSERT INTO `BookOrders` VALUES(1, 5);
INSERT INTO `BookOrders` VALUES(2, 6);
INSERT INTO `BookOrders` VALUES(5, 6);
INSERT INTO `BookOrders` VALUES(6, 6);
INSERT INTO `BookOrders` VALUES(6, 7);
