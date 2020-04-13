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
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (16, 'Pollo');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (17, 'Aeropostale');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (18, 'Gold Star');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (19, 'Timberland');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (20, 'Michael Clark');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (21, 'Airmax');
INSERT INTO recommendation.product_brand (id, brand_name) VALUES (22, 'Rolex');


INSERT INTO recommendation.product_category (id, name) VALUES (1, 'Laptop');
INSERT INTO recommendation.product_category (id, name) VALUES (2, 'Phone');
INSERT INTO recommendation.product_category (id, name) VALUES (3, 'Shoes');

INSERT INTO recommendation.products (id, description, image_url, price, product_brand_id, product_category_id) VALUES (1, 'New Hp laptop', 'https://cdn.mos.cms.futurecdn.net/yrrMKexnLDBUhybnvHW5HE-320-80.jpg', '439.99', 4, 1);
INSERT INTO recommendation.products (id, description, image_url, price, product_brand_id, product_category_id) VALUES (2, 'Iphone 11 Pro', 'https://specs-tech.com/wp-content/uploads/2019/09/Apple-iPhone-11-Pro-Max-600x600.jpg', '999.99', 2, 2);
INSERT INTO recommendation.products (id, description, image_url, price, product_brand_id, product_category_id) VALUES (3, 'New Dockers Shoes', 'https://www.joylot.com/gallery/554277924/1/dockers-mens-vargas-loafers-boat-shoes-1.jpg', '49.99', 4, 3);


INSERT INTO recommendation.product_user (pid, uid) VALUES (1, 3);
INSERT INTO recommendation.product_user (pid, uid) VALUES (2, 3);
