/*
CREATE TABLE IF NOT EXISTS products (
    "product_id" UInt16,
    "product_name" String,
    "price" Float64
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
*/