
/* items table creation */
CREATE TABLE items
(
    `id` SERIAL PRIMARY KEY, -- id PK
    `sku` VARCHAR (90), -- артикул товара
    `barcode` CHAR(12) DEFAULT '000000000000' NOT NULL, -- штрихкод товара формата EAN-13
    `title` VARCHAR(120), -- кратое название
    `full_title` VARCHAR (360), -- полное наименование
    `description` TEXT, -- описание
    `img_uri` TEXT, -- имя файла картинки товара
    `price` DECIMAL (8,2), -- цена товара
    `old_price` DECIMAL (8,2) DEFAULT NULL , -- старая цена товара
    `wh_count` BIGINT UNSIGNED, -- количество товара на складе
    `income_date` DATE, -- дата поступления
    `updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL -- отметка об изменении записи (в проследующем повесится тригер, который будет изменять это поле после каждого апдейта)

);
CREATE UNIQUE INDEX `units_sku_uindex` ON `items` (sku);

-- 1. Запрос 10 самых новых пришедших товаров, которые не тестовые
SELECT * FROM `items` ORDER BY `income_date` DESC LIMIT 10;

-- 2. Запрос 10 самых дешевых товаров
SELECT * FROM `items` ORDER BY `price` ASC LIMIT 10;

-- 3. Запрос 10 самых "подешевевших товаров в процентном соотношении
SELECT * FROM `items`  WHERE `old_price` IS NOT NULL ORDER BY (`old_price` - (`price`/`old_price`)) DESC LIMIT 10;

-- 4. Выбирают те товары, чей артикул начинается с символов "TEST" (такие товары должны быть в таблице!), используя оператор LIKE
SELECT * FROM `items` WHERE `sku` LIKE 'TEST%' ORDER BY `id`;


-- Индексы
-- После создания данного индекса после первого запроса СУБД просматривает не 1000 строк как без индекса, а всего 10
CREATE INDEX `income_date_items_index` ON `items`(`income_date`);

-- После создания данного индекса, второй запрос инициализирует просмотр всего 10 строк для поиска нужных результатов
CREATE INDEX `price_items_index` ON `items`(`price`);

-- После создания вот этого индекса, быстродействия не прибавилось, возможно 1000 записей в таблице это не много.
-- очевидно, данный индекс нужно удалить
-- и вообще, индексы нужно создавать во время отладки продуктивной системы. анализируя время выполнения запроса на
CREATE INDEX `old_price_price_items_index` ON `items`(`old_price`) ;
DROP INDEX `old_price_price_items_index` ON `items`;

