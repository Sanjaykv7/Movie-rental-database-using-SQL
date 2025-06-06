CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    address TEXT
);

CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(150),
    genre VARCHAR(50),
    release_year INT,
    available BOOLEAN
);

CREATE TABLE Rentals (
    rental_id INT PRIMARY KEY,
    customer_id INT,
    movie_id INT,
    rental_date DATE,
    return_date DATE,
    due_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);


INSERT INTO Customers VALUES
(1, 'John Doe', 'john@example.com', '1111111111', 'Mangalore'),
(2, 'Jane Smith', 'jane@example.com', '2222222222', 'Bangalore'),
(3, 'Alice Brown', 'alice@example.com', '3333333333', 'Chennai'),
(4, 'Bob White', 'bob@example.com', '4444444444', 'Delhi'),
(5, 'Charlie Black', 'charlie@example.com', '5555555555', 'Mumbai'),
(6, 'David Green', 'david@example.com', '6666666666', 'Hyderabad'),
(7, 'Eva Blue', 'eva@example.com', '7777777777', 'Pune'),
(8, 'Frank Red', 'frank@example.com', '8888888888', 'Kolkata'),
(9, 'Grace Yellow', 'grace@example.com', '9999999999', 'Goa'),
(10, 'Hank Grey', 'hank@example.com', '1010101010', 'Jaipur'),
(11, 'Isla White', 'isla@example.com', '1212121212', 'Indore'),
(12, 'Jack Black', 'jack@example.com', '1313131313', 'Lucknow'),
(13, 'Kara Pink', 'kara@example.com', '1414141414', 'Noida'),
(14, 'Leo Cyan', 'leo@example.com', '1515151515', 'Thane'),
(15, 'Mila Teal', 'mila@example.com', '1616161616', 'Patna'),
(16, 'Nina Violet', 'nina@example.com', '1717171717', 'Surat'),
(17, 'Oscar Indigo', 'oscar@example.com', '1818181818', 'Vadodara'),
(18, 'Pia Rose', 'pia@example.com', '1919191919', 'Nashik'),
(19, 'Quinn Sky', 'quinn@example.com', '2020202020', 'Ranchi'),
(20, 'Rita Moon', 'rita@example.com', '2121212121', 'Vijayawada');

INSERT INTO Movies VALUES
(101, 'The Matrix', 'Sci-Fi', 1999, TRUE),
(102, 'Titanic', 'Romance', 1997, TRUE),
(103, 'Inception', 'Thriller', 2010, TRUE),
(104, 'Avatar', 'Sci-Fi', 2009, TRUE),
(105, 'The Godfather', 'Crime', 1972, TRUE),
(106, 'Pulp Fiction', 'Crime', 1994, TRUE),
(107, 'Interstellar', 'Sci-Fi', 2014, TRUE),
(108, 'Forrest Gump', 'Drama', 1994, TRUE),
(109, 'The Lion King', 'Animation', 1994, TRUE),
(110, 'The Dark Knight', 'Action', 2008, TRUE),
(111, 'Frozen', 'Animation', 2013, TRUE),
(112, 'Joker', 'Drama', 2019, TRUE),
(113, 'Dangal', 'Sports', 2016, TRUE),
(114, '3 Idiots', 'Comedy', 2009, TRUE),
(115, 'Bahubali', 'Action', 2015, TRUE),
(116, 'KGF', 'Action', 2018, TRUE),
(117, 'RRR', 'Action', 2022, TRUE),
(118, 'Drishyam', 'Thriller', 2015, TRUE),
(119, 'Zindagi Na Milegi Dobara', 'Adventure', 2011, TRUE),
(120, 'Queen', 'Drama', 2013, TRUE);



