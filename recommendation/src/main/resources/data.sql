INSERT INTO recommendation.user_category (id, user_type) VALUES (1, 'admin');
INSERT INTO recommendation.user_category (id, user_type) VALUES (2, 'customer');
INSERT INTO recommendation.user_category (id, user_type) VALUES (3, 'seller');

INSERT INTO recommendation.addresses (id, apt_number, city, state, street, zip) VALUES (1, '5', 'Beaumont', 'TX', '1160 Oregon Ave', '77705');

INSERT INTO recommendation.users (id, active, email, firstname, lastname, password, phone, address_id, user_category_id) VALUES (1, 1, 'admin@admin.com', 'admin', 'admin', 'admin', '7812409029', 1, 1);
INSERT INTO recommendation.users (id, active, email, firstname, lastname, password, phone, address_id, user_category_id) VALUES (2, 1, 'srijal@user.com', 'srijal', 'joshi', 'srijal', '7812409030', 1, 2);
INSERT INTO recommendation.users (id, active, email, firstname, lastname, password, phone, address_id, user_category_id) VALUES (3, 1, 'amol@seller.com', 'amol', 'dulal', 'amol', '7812409031', 1, 3);
/*
Learn more about our data:
There are 15 product brands (Adidas,blowfish.....OSHKOSH BGOSH)
Top 4 Brands (Adidas,Calvin Klein,Levis and Nike) have shirts, pants and shoes
All other brands excluding top 4 brands have shoes only
There are 5 product category types (X-S,S,M,L,X-L)
Out of top 4 brands (Adidas and Nike only) has all 5 category types shoes
 */

INSERT INTO recommendation.product_brand (id, brand_name) VALUES (1, 'Adidas');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (2, 'Blowfish');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (3, 'Calvin Klein');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (4, 'Dockers');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (5, 'Esprit');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (6, 'Fila');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (7, 'Grasshoppers');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (8, 'Highland Creek');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (9, 'Italian Shoemakers');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (10, 'J-Sport');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (11, 'K-Swiss');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (12, 'Levis');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (13, 'Mia');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (14, 'Nike');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (15, 'OSHKOSH BGOSH');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (16, 'HP');
INSERT INTO  recommendation.product_brand (id, brand_name) VALUES (17, 'Samsung');
INSERT INTO  recommendation.product_brand (id, brand_name) VALUES (18, 'Otterbox');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (19, 'Samsung');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (20, 'Samsung ');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (21, 'Samsung');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (22, 'Samsung');

INSERT INTO recommendation.product_brand (id, brand_name) VALUES (23, 'Lenovo');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (24, 'Apple');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (25, 'Turmoil');

INSERT INTO recommendation.product_category (id, name) VALUES (1, 'Laptop');
INSERT INTO recommendation.product_category (id, name) VALUES (2, 'Phone');
INSERT INTO recommendation.product_category (id, name) VALUES (3, 'Shoes');
INSERT INTO recommendation.product_category (id, name) VALUES (4, 'Android Phones');
INSERT INTO recommendation.product_category (id, name) VALUES (5, 'Phone Cases');
INSERT INTO recommendation.product_category (id, name) VALUES (9, 'Apple Watches');
INSERT INTO recommendation.product_category (id, name) VALUES (10, 'Samsung Watches');
INSERT INTO recommendation.product_category (id, name) VALUES (11, 'Charger');
INSERT INTO recommendation.product_category (id, name) VALUES (12, 'Headset');

INSERT INTO recommendation.product_category (id, name) VALUES (13, 'Lenovo Laptop');
INSERT INTO recommendation.product_category (id, name) VALUES (14, 'Airpod');
INSERT INTO recommendation.product_category (id, name) VALUES (15, 'Screen Protector');


INSERT INTO recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) VALUES (1, 'HP laptop','New Hp laptop the latest model', 'https://cdn.mos.cms.futurecdn.net/yrrMKexnLDBUhybnvHW5HE-320-80.jpg', '439.99', 16, 1);
INSERT INTO recommendation.products (id, name,  description, image_url, price, product_brand_id, product_category_id) VALUES (2, 'Iphone11', 'Iphone 11 Pro latest one', 'https://specs-tech.com/wp-content/uploads/2019/09/Apple-iPhone-11-Pro-Max-600x600.jpg', '999.99', 2, 2);
INSERT INTO recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) VALUES (3, 'Dockers Shoes', 'Dockers Shoes very comfortable', 'https://www.joylot.com/gallery/554277924/1/dockers-mens-vargas-loafers-boat-shoes-1.jpg', '49.99', 4, 3);
INSERT INTO recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) VALUES (4, 'Android Phone', 'New Luch of Samsung Galaxy S11', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8HbB-h-ahesW7LqBeL5L_zr2zYEZ15CkWLQsZiBTO4kd3-lS5D2SxUyODBIPF8H9UVkobXZU&usqp=CAc', '49.99', 17, 4);
INSERT INTO recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) VALUES (5, 'Otterbox Phone Case', 'New Phone Cases for iphones available at best price', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT7TEPMlFnP5Dm6aueI4b6sGv-5D4-LghSPox6DGuIpo0JKtoIjPb26qgnn-4-a5AjW69CdDXaI&usqp=CAc', '29.00', 18, 5);
INSERT INTO recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) VALUES (9, 'Apple Watch Series 5', 'Enjoy the profit with 50% off in global pandemic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQGd4V1gyj9l3JhLUsNSAjxROoVPYxuhcJp_AxT34IA0dsbcNRixP6m9aGObYjkG43mBDmF_VM8&usqp=CAc', '529.99', 19, 9);
INSERT INTO recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) VALUES (10, 'Samsung Watch', 'Great quality for fitness measurements', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTMgaiv7FRXVLwpKSmpvI-Zl7chLb6gyKvfZ2Na6cPHEwJyZSk8xj91RESvDmtS4DwK58K7FR9oow&usqp=CAc', '299.99', 20, 10);
INSERT INTO recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) VALUES (11, 'Phone Charger', 'Good Battery charger', ' https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcT7FX4z3F9mBLYIuFBSe9LQ0-Iwpl59JA7suvpo1b2dsBg921K-Qchb16KT3BTx_N-JPdWpgEL9G5c&usqp=CAc', '15.00', 21, 11);
INSERT INTO recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) VALUES (12 , 'Beats Headsets', 'Great product with noice cancellation',  'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSvJiuiF9jFleI7PMKQbckUBoF3BAry1b_NKzbE0R_h6cWEBbtDu0cL4BoxfAtJYI9Q5m5nu0-d-lc&usqp=CAc', '299.00',22, 12);

INSERT INTO recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) VALUES (13, 'Lenovo Laptop', 'Laptop with high performace', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRdSGpsEL9KLqY71PYX9dbw-hxP-R91aeCwJW2TGj1AEdb6ZfhzRfwKetW4K5jHdxRiYFaSdudm8ixujzmzzLiyHn0lyy9vq_aTSUZphbs&usqp=CAc', '279.99',23,  13);
INSERT INTO recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) VALUES (14, 'Apple Airpod', 'Great peoples choice', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRlY6roKTA-YP_ePutllIL-TdBXOk_wdc2nykcKQYHXFbeLhdulejZKx5reiDxfKTss6YMc0hIrbBs&usqp=CAc', '199.00', 24, 14);
--INSERT INTO recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) VALUES (15, 'New tempered Glass', 'Awesome protection to your valuable phone','https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRs6qX05wplkYBfECLy20W4stA0Dr5rAJCSAdtExn7mUYjQfE_NywNPgWTqG3b1jA&usqp=CAc', '29.99',25, 25);

INSERT INTO recommendation.product_user (pid, uid) VALUES (1, 3);
INSERT INTO recommendation.product_user (pid, uid) VALUES (2, 3);
