CREATE TABLE IF NOT EXISTS products AS
file('products.csv', 'CSV', 'product_id UInt32, product_name String, price Float');

CREATE TABLE IF NOT EXISTS shops AS
file('shops.csv', 'CSV', 'shop_id UInt16, shop_name String');

CREATE TABLE IF NOT EXISTS plan AS
file('plan.csv', 'CSV', 'plan_id UInt16, product_id UInt16, shop_id UInt16, plan_cnt UInt16, plan_date DATE');

CREATE TABLE IF NOT EXISTS shop_dns AS
file('shop_dns.csv', 'CSV', 'shop_id UInt16, date DATE, product_id UInt16, sales_cnt UInt16');

CREATE TABLE IF NOT EXISTS shop_mvideo AS
file('shop_mvideo.csv', 'CSV', 'shop_id UInt16, date DATE, product_id UInt16, sales_cnt UInt16');

CREATE TABLE IF NOT EXISTS shop_sitilink AS
file('shop_sitilink.csv', 'CSV', 'shop_id UInt16, date DATE, product_id UInt16, sales_cnt UInt16');