--dns
SELECT DISTINCT shop_name,
       product_name,
       SUM(sales_cnt) AS sales_fact,
       plan_cnt AS sales_plan,
       ROUND(((SUM(sales_cnt) * 1.00) / plan_cnt), 3) AS "sales_fact/sales_plan",
       price *(SUM(sales_cnt)) AS incom_fact,
       price * plan_cnt AS income_plan,
       ROUND(((price *(SUM(sales_cnt)) * 1.00) /(price * plan_cnt)), 3) AS "income_fact/income_plan",
       month
FROM (
              SELECT (toMonth(shop_dns.date)) AS month,
                     ((toMonth(toDate(now()))) - 1) AS last_month,
                     (toMonth(plan.plan_date)) AS month_plan,
                     shop_name,
                     product_name,
                     sales_cnt,
                     plan_cnt,
                     price,
                     shop_dns.product_id
              FROM shop_dns sd
                     INNER JOIN products pr ON pr.product_id = sd.product_id
                     INNER JOIN plan pl ON pl.product_id = sd.product_id
                     INNER JOIN shops s ON s.shop_id = pl.shop_id
              WHERE pl.shop_id = 1
              GROUP BY shop_name, product_name, date, plan_date, sales_cnt, plan_cnt, price, shop_dns.product_id, month
              ORDER BY shop_dns.product_id
       ) AS DNS
WHERE month = month_plan
GROUP BY shop_name, product_name, plan_cnt, sales_cnt, price, month
UNION ALL
--mvideo
SELECT DISTINCT shop_name,
       product_name,
       SUM(sales_cnt) AS sales_fact,
       plan_cnt AS sales_plan,
       ROUND(((SUM(sales_cnt) * 1.00) / plan_cnt), 3) AS "sales_fact/sales_plan",
       price *(SUM(sales_cnt)) AS incom_fact,
       price * plan_cnt AS income_plan,
       ROUND(((price *(SUM(sales_cnt)) * 1.00) /(price * plan_cnt)), 3) AS "income_fact/income_plan",
       month
FROM (
              SELECT (toMonth(shop_mvideo.date)) AS month,
                     ((toMonth(toDate(now()))) - 1) AS last_month,
                     (toMonth(plan.plan_date)) AS month_plan,
                     shop_name,
                     product_name,
                     sales_cnt,
                     plan_cnt,
                     price,
                     shop_mvideo.product_id
              FROM shop_mvideo sm
                     INNER JOIN products pr ON pr.product_id = sm.product_id
                     INNER JOIN plan pl ON pl.product_id = sm.product_id
                     INNER JOIN shops s ON s.shop_id = pl.shop_id
              WHERE pl.shop_id = 2
              GROUP BY shop_name, product_name, date, plan_date, sales_cnt, plan_cnt, price, shop_mvideo.product_id, month
              ORDER BY shop_mvideo.product_id
       ) AS MVIDEO
WHERE month = month_plan
GROUP BY shop_name, product_name, plan_cnt, sales_cnt, price, month
UNION ALL
--sitilink
SELECT DISTINCT shop_name,
       product_name,
       SUM(sales_cnt) AS sales_fact,
       plan_cnt AS sales_plan,
       ROUND(((SUM(sales_cnt) * 1.00) / plan_cnt), 3) AS "sales_fact/sales_plan",
       price *(SUM(sales_cnt)) AS incom_fact,
       price * plan_cnt AS income_plan,
       ROUND(((price *(SUM(sales_cnt)) * 1.00) /(price * plan_cnt)), 3) AS "income_fact/income_plan",
       month
FROM (
              SELECT (toMonth(shop_sitilink.date)) AS month,
                     ((toMonth(toDate(now()))) - 1) AS last_month,
                     (toMonth(plan.plan_date)) AS month_plan,
                     shop_name,
                     product_name,
                     sales_cnt,
                     plan_cnt,
                     price,
                     shop_sitilink.product_id
              FROM shop_sitilink ss
                     INNER JOIN products pr ON pr.product_id = ss.product_id
                     INNER JOIN plan pl ON pl.product_id = ss.product_id
                     INNER JOIN shops s ON s.shop_id = pl.shop_id
              WHERE pl.shop_id = 3
              GROUP BY shop_name, product_name, date, plan_date, sales_cnt, plan_cnt, price, shop_sitilink.product_id, month
              ORDER BY shop_sitilink.product_id
       ) AS SITILINK
WHERE month = month_plan
GROUP BY shop_name, product_name, plan_cnt, sales_cnt, price, month