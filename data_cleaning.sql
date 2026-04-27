SET SQL_SAFE_UPDATES = 0;

UPDATE products 
SET product_category_name = TRIM(REPLACE(product_category_name, '\r', ''));

UPDATE product_category_name_translation 
SET product_category_name = TRIM(REPLACE(product_category_name, '\r', '')),
product_category_name_english = TRIM(REPLACE(product_category_name_english, '\r', ''));

SET SQL_SAFE_UPDATES = 1;

SELECT COUNT(*) FROM order_reviews;
