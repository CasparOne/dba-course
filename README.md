Предположим, что вы проектируете базу данных интернет-магазина. Давайте попробуем создать таблицы в ней.

Спроектируйте таблицу для хранения товаров. У каждого товара есть:
Наименование
Артикул (внутренний код)
Изображение (разумно хранить его URL)
Цена
Дата появления в продаже
Количество на складе
Другие поля - на ваш вкус
Заполните эту таблицу данными - внесите в нее 4-5 товаров
Поэкспериментируйте со вставкой некорректных данных (отрицательная цена? количество на складе менее нуля? пустой артикул?). Запишите, как реагирует БД на такие попытки (в отдельный текстовый файл)
Выполните задание в трех базах данных. Запишите ВСЕ запросы, которые вы использовали. Эти запросы и письменный отчет о попытках вставки некорректных данных и будут ваших домашним заданием

1.  MySQL
https://github.com/CasparOne/dba-course/blob/dba-lesson2/mysql.sql

2.  SQLite
https://github.com/CasparOne/dba-course/blob/dba-lesson2/sqlite.sql

3.  PostgreSQL
https://github.com/CasparOne/dba-course/blob/dba-lesson2/postgre.sql