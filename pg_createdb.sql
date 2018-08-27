DROP DATABASE dba;
CREATE DATABASE dba;

CREATE TABLE table_name
(
    id SERIAL PRIMARY KEY,
    title VARCHAR(120),
    author VARCHAR(200),
    released INT,
    price FLOAT,
    rating INT
);

CREATE TABLE public.publishers
(
    id SERIAL PRIMARY KEY,
    publishing VARCHAR(240),
    city VARCHAR(120)
);