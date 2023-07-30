
CREATE TABLE IF NOT EXISTS products (
    "product_id" UInt16,
    "product_name" String,
    "price" Decimal(10, 2)
)
ENGINE = MergeTree()
PRIMARY KEY (product_id);

CREATE TABLE IF NOT EXISTS shops (
    "shop_id" UInt16,
    "shop_name" String
)
ENGINE = MergeTree()
PRIMARY KEY (shop_id);

CREATE TABLE IF NOT EXISTS plan (
    "plan_id" UInt32,
    "product_id" UInt16,
    "shop_id" UInt16,
    "plan_cnt" UInt16,
    "plan_date" Date
)
ENGINE = MergeTree()
PRIMARY KEY (plan_id)
ORDER BY (plan_id, shop_id, product_id);

CREATE TABLE IF NOT EXISTS shop_dns (
    "sale_id" UInt32,
    "date" Date,
    "product_id" UInt16,
    "sales_cnt" UInt16
)
ENGINE = MergeTree()
PRIMARY KEY (sale_id);

CREATE TABLE IF NOT EXISTS shop_mvideo (
    "sale_id" UInt32,
    "date" Date,
    "product_id" UInt16,
    "sales_cnt" UInt16
)
ENGINE = MergeTree()
PRIMARY KEY (sale_id);

CREATE TABLE IF NOT EXISTS shop_sitilink (
    "sale_id" UInt32,
    "date" Date,
    "product_id" UInt16,
    "sales_cnt" UInt16
)
ENGINE = MergeTree()
PRIMARY KEY (sale_id);


INSERT INTO products
(product_id, product_name, price) VALUES
(1, 'Испорченный телефон', 109000.00),(2, 'Сарафанное радио', 29000.00),(3, 'Патефон', 9999.00);   
INSERT INTO shops
(shop_id, shop_name) VALUES
(1, 'DNS'),(2, 'М.видео'),(3, 'СИТИЛИНК');   
INSERT INTO plan
(plan_id, product_id, shop_id, plan_cnt, plan_date) VALUES
(1, 1, 1, 50, '2023-05-31'),(2, 1, 2, 50, '2023-05-31'),(3, 1, 3, 100, '2023-05-31'),(4, 2, 1, 200, '2023-05-31'),(5, 2, 2, 200, '2023-05-31'),(6, 2, 3, 400, '2023-05-31'),(7, 3, 1, 100, '2023-05-31'),(8, 3, 2, 100, '2023-05-31'),(9, 3, 3, 200, '2023-05-31'),(10, 1, 1, 50, '2023-06-30'),(11, 1, 2, 50, '2023-06-30'),(12, 1, 3, 100, '2023-06-30'),(13, 2, 1, 200, '2023-06-30'),(14, 2, 2, 200, '2023-06-30'),(15, 2, 3, 400, '2023-06-30'),(16, 3, 1, 100, '2023-06-30'),(17, 3, 2, 100, '2023-06-30'),(18, 3, 3, 200, '2023-06-30'),(19, 1, 1, 50, '2023-07-31'),(20, 1, 2, 50, '2023-07-31'),(21, 1, 3, 100, '2023-07-31'),(22, 2, 1, 200, '2023-07-31'),(23, 2, 2, 200, '2023-07-31'),(24, 2, 3, 400, '2023-07-31'),(25, 3, 1, 100, '2023-07-31'),(26, 3, 2, 100, '2023-07-31'),(27, 3, 3, 200, '2023-07-31');
INSERT INTO shop_dns 
(sale_id, date, product_id, sales_cnt) VALUES
(1, '2023-05-25', 2, 200),(2, '2023-06-01', 1, 10),(3, '2023-06-01', 2, 20),(4, '2023-06-02', 2, 40),(5, '2023-06-02', 3, 17),(6, '2023-06-03', 1, 11),(7, '2023-06-03', 2, 12),(8, '2023-06-05', 3, 23),(9, '2023-06-05', 1, 9),(10, '2023-06-10', 1, 8),(11, '2023-06-10', 2, 25),(12, '2023-06-15', 3, 43),(13, '2023-06-20', 1, 15),(14, '2023-06-20', 2, 10),(15, '2023-06-20', 3, 27),(16, '2023-06-25', 1, 5),(17, '2023-06-26', 2, 2),(18, '2023-06-27', 3, 38),(19, '2023-07-01', 1, 4),(20, '2023-07-02', 2, 8),(21, '2023-07-02', 3, 21);   
INSERT INTO shop_mvideo 
(sale_id, date, product_id, sales_cnt) VALUES
(1, '2023-05-30', 3, 50),(2, '2023-06-01', 1, 7),(3, '2023-06-01', 2, 21),(4, '2023-06-01', 2, 33),(5, '2023-06-02', 3, 8),(6, '2023-06-03', 1, 10),(7, '2023-06-04', 2, 14),(8, '2023-06-05', 3, 15),(9, '2023-06-05', 1, 8),(10, '2023-06-10', 1, 7),(11, '2023-06-10', 2, 26),(12, '2023-06-15', 3, 29),(13, '2023-06-20', 1, 8),(14, '2023-06-20', 2, 15),(15, '2023-06-20', 3, 21),(16, '2023-06-25', 1, 4),(17, '2023-06-26', 2, 12),(18, '2023-06-27', 3, 17),(19, '2023-07-01', 1, 6),(20, '2023-07-02', 2, 11),(21, '2023-07-02', 3, 10);    
INSERT INTO shop_sitilink 
(sale_id, date, product_id, sales_cnt) VALUES
(1, '2023-05-29', 1, 100),(2, '2023-06-01', 1, 15),(3, '2023-06-01', 2, 40),(4, '2023-06-01', 2, 15),(5, '2023-06-02', 3, 15),(6, '2023-06-03', 1, 20),(7, '2023-06-04', 2, 25),(8, '2023-06-05', 3, 30),(9, '2023-06-05', 1, 11),(10, '2023-06-10', 1, 15),(11, '2023-06-10', 2, 20),(12, '2023-06-15', 3, 40),(13, '2023-06-20', 1, 13),(14, '2023-06-20', 2, 15),(15, '2023-06-20', 3, 21),(16, '2023-06-25', 1, 6),(17, '2023-06-26', 2, 10),(18, '2023-06-27', 3, 39),(19, '2023-07-01', 1, 11),(20, '2023-07-02', 2, 21),(21, '2023-07-02', 3, 23);
/*CREATE TABLE IF NOT EXISTS products AS
file('products.csv', 'CSV', 'product_id UInt32, product_name String, price Float');

CREATE TABLE IF NOT EXISTS shop AS
file('shop.csv', 'CSV', 'shop_id UInt32, shop_name String');

CREATE TABLE IF NOT EXISTS plan AS
file('plan.csv', 'CSV', 'plan_date DATE, product_id UInt32, plan_cnt Float, shop_id UInt32');

CREATE TABLE IF NOT EXISTS shop_dns AS
file('shop_dns.csv', 'CSV', 'shop_id UInt32, date DATE, product_id UInt32, sales_cnt Int32');

CREATE TABLE IF NOT EXISTS shop_mvideo AS
file('shop_mvideo.csv', 'CSV', 'shop_id UInt32, date DATE, product_id UInt32, sales_cnt Int32');

CREATE TABLE IF NOT EXISTS shop_sitilink AS
file('shop_sitilink.csv', 'CSV', 'shop_id UInt32, date DATE, product_id UInt32, sales_cnt BIGINT');

CREATE TABLE IF NOT EXISTS promo AS
file('promo.csv', 'CSV', 'promo_id UInt32, product_id UInt32, shop_id String, discount Float, promo_date DATE');*/