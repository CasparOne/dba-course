DROP DATABASE dba;
CREATE DATABASE dba;


/* books table creation */
CREATE TABLE books
(
    "id" SERIAL,
    "title" VARCHAR(120),
    "author" VARCHAR(200),
    "released" INT,
    "price" FLOAT,
    "rating" FLOAT,
    "publisher" INTEGER
);


/* publishers table creation */
CREATE TABLE public.publishers
(
    "id" SERIAL PRIMARY KEY,
    "publishing" VARCHAR(240),
    "city" VARCHAR(120)
);

/* books inserts*/
INSERT INTO books ("title", "author", "released", "price", "rating", "publisher") VALUES ('Черепаха на луне', 'Иван Сидорчук', '1990', '981.22' , '0.0', '1');
INSERT INTO books ("title", "author", "released", "price", "rating", "publisher") VALUES ('Иван васильевич меняет проффесию', 'Дмитрий Окунев', '1972', '322.22' , '8.5', '2' );
INSERT INTO books ("title", "author", "released", "price", "rating", "publisher") VALUES ('Кошмар на улице вязов', 'Геннадий Филипченко', '2001', '855.50' , '5.2', '3' );
INSERT INTO books ("title", "author", "released", "price", "rating", "publisher") VALUES ('Каждый должен учить ПХП', 'Михаил Карпачев', '2011', '99.30' , '6.0', '4' );
INSERT INTO books ("title", "author", "released", "price", "rating", "publisher") VALUES ('БМВ в большом городе', 'Александр Пейсахович', '2018', '1381.66' , '2.5', '3'  );
INSERT INTO books ("title", "author", "released", "price", "rating", "publisher") VALUES ('Анна Каренина', 'Лев Толстой', '1850', '520.00' , '6.5', '2' );
INSERT INTO books ("title", "author", "released", "price", "rating", "publisher") VALUES ('Алхимик', 'Пауло Коэльо', '2008', '734.22' , '4.0', '4' );
INSERT INTO books ("title", "author", "released", "price", "rating", "publisher") VALUES ('Американский психопат', 'Геннадий Филипченко', '2017', '680.70' , '3.2', '4' );
INSERT INTO books ("title", "author", "released", "price", "rating", "publisher") VALUES ('Белый пик', 'Энтони Хоровитц', '2013', '200.00' , '4.5', '1' );
INSERT INTO books ("title", "author", "released", "price", "rating", "publisher") VALUES ('Библия ядовитого леса', 'Барбара Кингсолвер', '2006', '632.78' , '7.6', '1' );
INSERT INTO books ("title", "author", "released", "price", "rating", "publisher") VALUES ('Война миров', 'Герберт Уэллс', '2011', '1035.00' , '4.4', '3' );
INSERT INTO books ("title", "author", "released", "price", "rating", "publisher") VALUES ('Зеленая миля', 'Стивен Кинг', '1999', '1650.00' , '8.7', '4' );
INSERT INTO books ("title", "author", "released", "price", "rating", "publisher") VALUES ('Лолита', 'Владимир Набоков', '2015', '480.50' , '8.9', '2' );
INSERT INTO books ("title", "author", "released", "price", "rating", "publisher") VALUES ('Грязь провинциального городка', 'Стивен Кинг', '2017', '315.50' , '2.2', '2' );
INSERT INTO books ("title", "author", "released", "price", "rating", "publisher") VALUES ('Книга не о чем', 'Геннадий Филипченко', '2015', '1315.50' , '4.2', '1' );


/* publishers inserts*/
INSERT INTO public.publishers ("publishing", "city") VALUES ('Экран', 'Москва');
INSERT INTO public.publishers ("publishing", "city") VALUES ('Имплементейшн', 'Нью Йорк');
INSERT INTO public.publishers ("publishing", "city") VALUES ('Юный коммунист', 'Ленинград');
INSERT INTO public.publishers ("publishing", "city") VALUES ('Заря', 'Томск');
INSERT INTO public.publishers ("publishing", "city") VALUES ('Эппл Продакшн', 'Лос Анжелес');
INSERT INTO public.publishers ("publishing", "city") VALUES ('Нью Фаг Ентерпрайзис', 'Бостон');


-- Все книги определенного автора / авторов
SELECT
       "id", '"' || "title" || '"' as "title",
       "author",
       "released",
       "price",
       "rating",
       "publisher"
FROM public.books
WHERE "author" = 'Геннадий Филипченко' OR "author" = 'Стивен Кинг' -- can add any authors with OR operator
ORDER BY "author", "id" DESC;


-- Все книги ценой не более 500 рублей
SELECT
       "id", '"' || "title" || '"' as "title",
       "author",
       "released",
       "price",
       "rating",
       "publisher"
FROM public.books
WHERE "price" <= '500'
ORDER BY "price";


-- Заглавия книг (и год издания) определенного автора, отсортированные по году их издания
SELECT "title" || ' (' || "released" || 'г.)' as "title"
FROM public.books
ORDER BY "released";


-- Имена авторов книг, вышедших в 1990-е годы
SELECT "author"
FROM public.books
WHERE "released" BETWEEN '1990' AND '1999'
ORDER BY "released";