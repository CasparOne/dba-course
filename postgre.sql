
/* items table creation */
CREATE TABLE items
(
    "id" SERIAL PRIMARY KEY,
    "sku" VARCHAR (90),
    "barcode" CHAR(12) DEFAULT '000000000000' NOT NULL,
    "title" VARCHAR(120),
    "full_title" VARCHAR (360),
    "description" TEXT,
    "img_uri" TEXT,
    "price" DECIMAL (8,2),
    "old_price" DECIMAL (8,2),
    "wh_count" BIGINT,
    "income_date" DATE,
    "updated" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL

);
CREATE UNIQUE INDEX "table_name_sku_uindex" ON public.table_name ("sku");


-- 1. Запрос 10 самых новых пришедших товаров, которые не тестовые
SELECT * FROM "items" WHERE "sku" ORDER BY "income_date" DESC LIMIT 10;

-- 2. Запрос 10 самых дешевых товаров
SELECT * FROM "items" ORDER BY "price" ASC LIMIT 10;

-- 3. Запрос 10 самых "подешевевших товаров в процентном соотношении
SELECT * FROM "items"  WHERE "old_price" IS NOT NULL ORDER BY ("old_price" - ("price"/"old_price")) DESC LIMIT 10;

-- 4. Выбирают те товары, чей артикул начинается с символов "TEST" (такие товары должны быть в таблице!), используя оператор LIKE
SELECT * FROM "items" WHERE "sku" LIKE 'TEST%' ORDER BY "id";


-- ИНДЕКСЫ

-- До создания данного индекса 1й запрос Total cost = 58,63, после создания Total cost = 1.7. Увеличение производительности
-- запроса в 50 раз почти. Фй, да постгрес, ай, да молодчина!!! =))
CREATE INDEX "income_date_items_index" ON "items" ("income_date");

-- До создания данного индекса 1й запрос Total cost = 63,16, после создания Total cost = 1.74. Увеличение производительности
CREATE INDEX "price_items_index" ON "items" ("price");


