INSERT INTO recommendation.user_category (id, user_type) VALUES (1, 'admin');
INSERT INTO recommendation.user_category (id, user_type) VALUES (2, 'customer');
INSERT INTO recommendation.user_category (id, user_type) VALUES (3, 'seller');

INSERT INTO recommendation.addresses (id, apt_number, city, state, street, zip) VALUES (1, '5', 'Beaumont', 'TX', '1160 Oregon Ave', '77705');

INSERT INTO recommendation.users (id, active, email, firstname, lastname, password, phone, address_id, user_category_id) VALUES (1, 1, 'admin@admin.com', 'admin', 'admin', 'admin', '7812409029', 1, 1);
INSERT INTO recommendation.users (id, active, email, firstname, lastname, password, phone, address_id, user_category_id) VALUES (2, 1, 'srijal@user.com', 'srijal', 'joshi', 'srijal', '7812409030', 1, 2);
INSERT INTO recommendation.users (id, active, email, firstname, lastname, password, phone, address_id, user_category_id) VALUES (3, 1, 'amol@user.com', 'amol', 'dulal', 'amol', '7812409031', 1, 3);
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



INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (110, 'shoes', '190', '1');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (111, 'shirt', '90', '1');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (112, 'pant', '99', '1');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (113, 'shoes', '56', '2');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (114, 'shoes', '120', '3');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (115, 'shirt', '20', '3');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (116, 'shirt', '9.99', '3');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (117, 'pant', '60', '3');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (118, 'shoes', '19.99', '4');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (119, 'shoes', '89.99', '5');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (120, 'shoes', '49.99', '5');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (121, 'shoes', '19.99', '6');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (122, 'shoes', '250', '7');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (123, 'shoes', '140', '8');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (124, 'shoes', '150', '9');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (125, 'shoes', '119.99', '10');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (126, 'shoes', '119.99', '11');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (127, 'shoes', '119.99', '12');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (128, 'shirt', '119.99', '12');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (129, 'pant', '119.99', '12');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (130, 'shoes', '119.99', '13');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (131, 'shoes', '119.99', '14');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (132, 'shirt', '19.99', '14');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (133, 'shoes', '119.99', '14');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (134, 'pant', '109.99', '14');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (135, 'shoes', '119.99', '15');

INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (136, 'shoes', '19.99', '1');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (137, 'shoes', '19.99', '1');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (138, 'shoes', '19.99', '1');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (139, 'shoes', '19.99', '1');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (140, 'shoes', '39.99', '1');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (141, 'shoes', '39.99', '14');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (142, 'shoes', '39.99', '14');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (143, 'shoes', '39.99', '14');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (144, 'shoes', '39.99', '14');
INSERT INTO recommendation.products (id, description, price, product_brand_id ) VALUES (145, 'shoes', '39.99', '14');



INSERT INTO recommendation.product_category (id, name) VALUES (1, 'X-Small');
INSERT INTO recommendation.product_category (id, name) VALUES (2, 'Small');
INSERT INTO recommendation.product_category (id, name) VALUES (3, 'Medium');
INSERT INTO recommendation.product_category (id, name) VALUES (4, 'Large');
INSERT INTO recommendation.product_category (id, name) VALUES (5, 'X-Large');

INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (1, 110);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (1, 111);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (2, 112);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (2, 113);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (3, 114);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (3, 115);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (4, 116);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (4, 117);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (4, 118);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (5, 119);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (5, 120);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (1, 121);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (1, 122);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (2, 123);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (2, 124);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (3, 125);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (3, 126);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (4, 127);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (4, 128);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (5, 129);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (5, 130);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (1, 131);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (1, 132);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (2, 133);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (2, 134);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (3, 135);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (1, 136);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (2, 137);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (3, 138);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (4, 139);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (5, 140);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (1, 141);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (2, 142);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (3, 143);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (4, 144);
INSERT INTO recommendation.product_category_product (product_category_id, product_id) VALUES (5, 145);
