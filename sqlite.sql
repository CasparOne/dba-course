
/* books table creation */
CREATE TABLE main.books
(
    `id` INTEGER PRIMARY KEY AUTOINCREMENT DEFAULT ROWID,
    `title` VARCHAR(120),
    `author` VARCHAR(200),
    `released` INTEGER,
    `price` FLOAT,
    `rating` INTEGER
);


/* publishers table creation */
CREATE TABLE main.publishers
(
  `id` INTEGER PRIMARY KEY AUTOINCREMENT DEFAULT ROWID,
  `publishing` VARCHAR(240),
  `city` VARCHAR(120)
);

/* books inserts*/
INSERT INTO books (`title`, `author`, `released`, `price`, `rating`) VALUES ('Черепаха на луне', 'Иван Сидорчук', '1990', '981.22' , '0.0' );
INSERT INTO books (`title`, `author`, `released`, `price`, `rating`) VALUES ('Иван васильевич меняет проффесию', 'Дмитрий Окунев', '1972', '322.22' , '8.5' );
INSERT INTO books (`title`, `author`, `released`, `price`, `rating`) VALUES ('Кошмар на улице вязов', 'Геннадий Филипченко', '2001', '855.50' , '5.2' );
INSERT INTO books (`title`, `author`, `released`, `price`, `rating`) VALUES ('Каждый должен учить ПХП', 'Михаил Карпачев', '2011', '99.30' , '6.0' );
INSERT INTO books (`title`, `author`, `released`, `price`, `rating`) VALUES ('БМВ в большом городе', 'Александр Пейсахович', '2018', '1381.66' , '2.5'  );
INSERT INTO books (`title`, `author`, `released`, `price`, `rating`) VALUES ('Анна Каренина', 'Лев Толстой', '1850', '520.00' , '6.5' );
INSERT INTO books (`title`, `author`, `released`, `price`, `rating`) VALUES ('Алхимик', 'Пауло Коэльо', '2008', '734.22' , '4.0' );
INSERT INTO books (`title`, `author`, `released`, `price`, `rating`) VALUES ('Американский психопат', 'Брет Истон Эллис', '2017', '680.70' , '3.2' );
INSERT INTO books (`title`, `author`, `released`, `price`, `rating`) VALUES ('Белый пик', 'Энтони Хоровитц', '2013', '200.00' , '4.5' );
INSERT INTO books (`title`, `author`, `released`, `price`, `rating`) VALUES ('Библия ядовитого леса', 'Барбара Кингсолвер', '2006', '632.78' , '7.6' );
INSERT INTO books (`title`, `author`, `released`, `price`, `rating`) VALUES ('Война миров', 'Герберт Уэллс', '2011', '1035.00' , '4.4' );
INSERT INTO books (`title`, `author`, `released`, `price`, `rating`) VALUES ('Зеленая миля', 'Стивен Кинг', '1999', '1650.00' , '8.7' );
INSERT INTO books (`title`, `author`, `released`, `price`, `rating`) VALUES ('Лолита', 'Владимир Набоков', '2015', '480.50' , '8.9' );
INSERT INTO books (`title`, `author`, `released`, `price`, `rating`) VALUES ('грязь провинциального городка', 'Сергей шнуров', '2017', '315.50' , '2.2' );



/* publishers inserts*/
INSERT INTO main.publishers (`publishing`, `city`) VALUES ('Экран', 'Москва');
INSERT INTO main.publishers (`publishing`, `city`) VALUES ('Имплементейшн', 'Нью Йорк');
INSERT INTO main.publishers (`publishing`, `city`) VALUES ('Юный коммунист', 'Ленинград');
INSERT INTO main.publishers (`publishing`, `city`) VALUES ('Заря', 'Томск');
INSERT INTO main.publishers (`publishing`, `city`) VALUES ('Эппл Продакшн', 'Лос Анжелес');
INSERT INTO main.publishers (`publishing`, `city`) VALUES ('Нью Фаг Ентерпрайзис', 'Бостон');