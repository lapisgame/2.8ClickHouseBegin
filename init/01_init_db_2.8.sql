CREATE TABLE IF NOT EXISTS products AS
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
file('promo.csv', 'CSV', 'promo_id UInt32, product_id UInt32, shop_id String, discount Float, promo_date DATE');