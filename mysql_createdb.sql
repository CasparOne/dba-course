DROP DATABASE dba;
CREATE DATABASE dba;

CREATE TABLE books
(
    id SERIAL,
    title VARCHAR(120),
    author VARCHAR(200),
    released INT,
    price FLOAT UNSIGNED,
    rating INT
);


CREATE TABLE publishers
(
    id SERIAL PRIMARY KEY,
    publishing VARCHAR(240),
    city VARCHAR(120)
);

