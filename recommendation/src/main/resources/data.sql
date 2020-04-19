insert into recommendation.user_category (id, user_type) values (1, 'admin');
insert into recommendation.user_category (id, user_type) values (2, 'customer');
insert into recommendation.user_category (id, user_type) values (3, 'seller');

insert into recommendation.addresses (id, apt_number, city, state, street, zip) values (1, '5', 'Beaumont', 'TX', '1160 Oregon Ave', '77705');

insert into recommendation.users (id, active, email, firstname, lastname, password, phone, address_id, user_category_id) values (1, 1, 'roshan@user.com', 'roshan', 'bhatta', 'roshan', '7812409030', 1, 2);
insert into recommendation.users (id, active, email, firstname, lastname, password, phone, address_id, user_category_id) values (2, 1, 'srijal@user.com', 'srijal', 'joshi', 'srijal', '7812409030', 1, 2);
insert into recommendation.users (id, active, email, firstname, lastname, password, phone, address_id, user_category_id) values (3, 1, 'amol@seller.com', 'amol', 'dulal', 'amol', '7812409031', 1, 3);

insert into recommendation.users (id, active, email, firstname, lastname, password, phone, address_id, user_category_id) values (4, 1, 'anil@user.com', 'anil', 'sharma', 'anil', '7812409030', 1, 2);
insert into recommendation.users (id, active, email, firstname, lastname, password, phone, address_id, user_category_id) values (5, 1, 'admin@admin.com', 'admin', 'admin', 'admin', '7812409029', 1, 1);

/*
Learn more about our data:
There are 15 product brands (Adidas,blowfish.....OSHKOSH BGOSH)
Top 4 Brands (Adidas,Calvin Klein,Levis and Nike) have shirts, pants and shoes
All other brands excluding top 4 brands have shoes only
There are 5 product category types (X-S,S,M,L,X-L)
Out of top 4 brands (Adidas and Nike only) has all 5 category types shoes
 */
insert into recommendation.product_brand (id, brand_name) values (1, 'Adidas');
insert into recommendation.product_brand (id, brand_name) values (2, 'Blowfish');
insert into recommendation.product_brand (id, brand_name) values (3, 'Calvin Klein');
insert into recommendation.product_brand (id, brand_name) values (4, 'Dockers');
insert into recommendation.product_brand (id, brand_name) values (5, 'Esprit');
insert into recommendation.product_brand (id, brand_name) values (6, 'Fila');
insert into recommendation.product_brand (id, brand_name) values (7, 'Grasshoppers');
insert into recommendation.product_brand (id, brand_name) values (8, 'Highland Creek');
insert into recommendation.product_brand (id, brand_name) values (9, 'Italian Shoemakers');
insert into recommendation.product_brand (id, brand_name) values (10, 'J-Sport');
insert into recommendation.product_brand (id, brand_name) values (11, 'K-Swiss');
insert into recommendation.product_brand (id, brand_name) values (12, 'Levis');
insert into recommendation.product_brand (id, brand_name) values (13, 'Mia');
insert into recommendation.product_brand (id, brand_name) values (14, 'Nike');
insert into recommendation.product_brand (id, brand_name) values (15, 'OSHKOSH BGOSH');
insert into recommendation.product_brand (id, brand_name) values (16, 'HP');
insert into  recommendation.product_brand (id, brand_name) values (17, 'Samsung');
insert into  recommendation.product_brand (id, brand_name) values (18, 'Otterbox');
insert into recommendation.product_brand (id, brand_name) values (19, 'IBM');
insert into recommendation.product_brand (id, brand_name) values (20, 'Microsoft ');
insert into recommendation.product_brand (id, brand_name) values (21, 'Samsung');
insert into recommendation.product_brand (id, brand_name) values (22, 'Google');
insert into recommendation.product_brand (id, brand_name) values (23, 'Lenovo');
insert into recommendation.product_brand (id, brand_name) values (24, 'Apple');
insert into recommendation.product_brand (id, brand_name) values (25, 'Michael Clark');
insert into recommendation.product_brand (id, brand_name) values (26, 'Dell');

insert into recommendation.product_brand (id, brand_name) values (27, 'Aeropostale');
insert into recommendation.product_brand (id, brand_name) values (28, 'American Eagles Outfitters');
insert into recommendation.product_brand (id, brand_name) values (29, 'JC Penny');
insert into recommendation.product_brand (id, brand_name) values (30, 'Brooks Brothers');
insert into recommendation.product_brand (id, brand_name) values (31, 'Converse');
insert into recommendation.product_brand (id, brand_name) values (32, 'Kate Spade');
insert into recommendation.product_brand (id, brand_name) values (33, 'Tommy Hilfiger');
insert into recommendation.product_brand (id, brand_name) values (34, 'Old Navy');

insert into recommendation.product_brand (id, brand_name) values (35, 'Polo Ralph Lauren');
insert into recommendation.product_brand (id, brand_name) values (36, 'Kate Spade');
insert into recommendation.product_brand (id, brand_name) values (37, 'Eddie Bauer');
insert into recommendation.product_brand (id, brand_name) values (38, 'Vans');
insert into recommendation.product_brand (id, brand_name) values (39, 'Hollister');
insert into recommendation.product_brand (id, brand_name) values (40, 'Banana Republic');
insert into recommendation.product_brand (id, brand_name) values (41, 'Gap');
insert into recommendation.product_brand (id, brand_name) values (42, 'Appolo');
insert into recommendation.product_brand (id, brand_name) values (43, 'Pampers');


--Product Category
insert into recommendation.product_category (id, category_name) values (1, 'Laptop');
insert into recommendation.product_category (id, category_name) values (2, 'iPhone');
insert into recommendation.product_category (id, category_name) values (3, 'Shoes');
insert into recommendation.product_category (id, category_name) values (4, 'Android Phones');
insert into recommendation.product_category (id, category_name) values (5, 'Phone Cases');

insert into recommendation.product_category (id, category_name) values (6, 'Automotive Parts');
insert into recommendation.product_category (id, category_name) values (7, 'Medical Stuffs');
insert into recommendation.product_category (id, category_name) values (8 , 'Household Utensils');

insert into recommendation.product_category (id, category_name) values (9, 'Apple Watches');
insert into recommendation.product_category (id, category_name) values (10, 'Samsung Watches');
insert into recommendation.product_category (id, category_name) values (11, 'Charger');
insert into recommendation.product_category (id, category_name) values (12, 'Headset');

insert into recommendation.product_category (id, category_name) values (13, 'Lenovo Laptop');
insert into recommendation.product_category (id, category_name) values (14, 'Airpod');
insert into recommendation.product_category (id, category_name) values (15, 'Screen Protector');

insert into recommendation.product_category (id, category_name) values (16, 'Mens Clothes');
insert into recommendation.product_category (id, category_name) values (17, 'Womens Clothes');
insert into recommendation.product_category (id, category_name) values (18, 'Shocks');
insert into recommendation.product_category (id, category_name) values (19, 'Caps');
insert into recommendation.product_category (id, category_name) values (20, 'Musical Instruments');

insert into recommendation.product_category (id, category_name) values (21, 'All Electronics');
insert into recommendation.product_category (id, category_name) values (22, 'Baby Stuffs');
insert into recommendation.product_category (id, category_name) values (23, 'Jewelry');
insert into recommendation.product_category (id, category_name) values (24, 'Kitchen Utensils');
insert into recommendation.product_category (id, category_name) values (25, 'Beauty and Personal Care');

insert into recommendation.product_category (id, category_name) values (26, 'Pet Supplies');
insert into recommendation.product_category (id, category_name) values (27, 'Baby Stuffs');
insert into recommendation.product_category (id, category_name) values (28, 'Books');
insert into recommendation.product_category (id, category_name) values (29, 'sports and Outdoors');
insert into recommendation.product_category (id, category_name) values (30, 'Grocery');

insert into recommendation.product_category (id, category_name) values (31, 'Cell Phones');
insert into recommendation.product_category (id, category_name) values (32, 'Electronic accessories');
insert into recommendation.product_category (id, category_name) values (33, 'Phone accessories');
insert into recommendation.product_category (id, category_name) values (34, 'Laptop accessories');


insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (1, 'HP laptop','New Hp laptop the latest model', 'https://cdn.mos.cms.futurecdn.net/yrrMKexnLDBUhybnvHW5HE-320-80.jpg', '439.99', 16, 1);
insert into recommendation.products (id, name,  description, image_url, price, product_brand_id, product_category_id) values (2, 'Iphone11', 'Iphone 11 Pro latest one', 'https://specs-tech.com/wp-content/uploads/2019/09/Apple-iPhone-11-Pro-Max-600x600.jpg', '999.99', 2, 2);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (3, 'Dockers Shoes', 'Dockers Shoes very comfortable', 'https://www.joylot.com/gallery/554277924/1/dockers-mens-vargas-loafers-boat-shoes-1.jpg', '49.99', 4, 3);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (4, 'Android Phone', 'New Luch of Samsung Galaxy S11', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8HbB-h-ahesW7LqBeL5L_zr2zYEZ15CkWLQsZiBTO4kd3-lS5D2SxUyODBIPF8H9UVkobXZU&usqp=CAc', '49.99', 17, 4);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (5, 'Otterbox Phone Case', 'New Phone Cases for iphones available at best price', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT7TEPMlFnP5Dm6aueI4b6sGv-5D4-LghSPox6DGuIpo0JKtoIjPb26qgnn-4-a5AjW69CdDXaI&usqp=CAc', '29.00', 18, 5);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (9, 'Apple Watch Series 5', 'Enjoy the profit with 50% off in global pandemic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQGd4V1gyj9l3JhLUsNSAjxROoVPYxuhcJp_AxT34IA0dsbcNRixP6m9aGObYjkG43mBDmF_VM8&usqp=CAc', '529.99', 19, 9);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (10, 'Samsung Watch', 'Great quality for fitness measurements', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTMgaiv7FRXVLwpKSmpvI-Zl7chLb6gyKvfZ2Na6cPHEwJyZSk8xj91RESvDmtS4DwK58K7FR9oow&usqp=CAc', '299.99', 20, 10);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (11, 'Phone Charger', 'Good Battery charger', ' https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcT7FX4z3F9mBLYIuFBSe9LQ0-Iwpl59JA7suvpo1b2dsBg921K-Qchb16KT3BTx_N-JPdWpgEL9G5c&usqp=CAc', '15.00', 21, 11);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (12 , 'Beats Headsets', 'Great product with noice cancellation',  'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSvJiuiF9jFleI7PMKQbckUBoF3BAry1b_NKzbE0R_h6cWEBbtDu0cL4BoxfAtJYI9Q5m5nu0-d-lc&usqp=CAc', '299.00',22, 12);

insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (13, 'Lenovo Laptop', 'Laptop with high performace', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRdSGpsEL9KLqY71PYX9dbw-hxP-R91aeCwJW2TGj1AEdb6ZfhzRfwKetW4K5jHdxRiYFaSdudm8ixujzmzzLiyHn0lyy9vq_aTSUZphbs&usqp=CAc', '279.99',23,  13);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (14, 'Apple Airpod', 'Great peoples choice', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRlY6roKTA-YP_ePutllIL-TdBXOk_wdc2nykcKQYHXFbeLhdulejZKx5reiDxfKTss6YMc0hIrbBs&usqp=CAc', '199.00', 24, 14);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (15, 'Google Pixel', 'Great resolution with better camera qualirt', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTvGeJ0--Lp_d4usq3Mdja_1SYmDa8KFkBAu7NTTVRJlIYzs80NxZPPdQKH4x3i6MAoaqVhlRmjkw&usqp=CAc','419.49', 22 , 4);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (16, 'Samsung Galaxy A50', 'Great new phone in reasonable price', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRw9C3RM6CyFXVaEbMVz75fqnvEjzhFiVK9-cbJLCzyI--DDq71vGuLb8vgXA-xVA2Aa2Otg1QaSg&usqp=CAc', '349.99', 22, 4);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (17, 'Samsung Galaxy Note1','Great and Cheapest Phone', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQbuPF5gq40eTNKsPDqkYBUrTSvBo6vyUA4-_VKHCSV3dXElboQQx4oXtran4yJtq-eYLj4FujraIxN&usqp=CAc', '399.49', 22,4);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (18, 'iPhone XS', 'Good Deal', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSx231-vHkvMxmtmSU7tQdyT7MENY-SMQq0s3b_SC6Pk_K6Uy4HqazS-PbQbrZyLk2qIXViodupMJi9waLfFdhnr2tLxau4s05QfV0Y9BCT&usqp=CAc', '899.89', 24,2);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (19, 'Iphone 11', 'Great peoples choice', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQPOQR8CRjYjUpMRI7lpotj0AaygdhKIgbCKoRKhcfFWjBG3kn5YyGF6PuQgQiS-A&usqp=CAc', '1199.99', 24, 2);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (20, 'iphone7 32 GB', 'Most pouplar among the users', 'https://www.boostmobile.com/content/dam/boostmobile/en/products/phones/apple/iphone-7/black/device-front.jpg.transform/pdpCarousel/image.jpg', '499.99', 24,2);


insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (21, 'Lenovo Ideapad 15.6', 'Your business partner is here ', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcR6RLNZXPeYf7S1NCXZI9uMeQ5qxNF_P1v4jdcnFZmMD6sX_-JbJ1yK_A1Dka3LD9xT18VN4elQjw&usqp=CAc', '549.00', 23,1);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (22, 'Lenovo legion Y540 Laptop ', 'Popular available laptop in the market', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRbw_42IgUPDZHU1dF9Y9WnsPp3U-Dz2ZaJoASGce71NCRY4zJNQuw9lHrCNuWXj2IhmMyT2zZDn7c&usqp=CAc', '1069.99', 23,1);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (23, 'Lenovo Ideapad S340', 'Recent Release from Lenovo', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTvR40MzVY4VprwHHHgI1uZUPxk8UYucI6dfg7tNtQV0zoHx6hVEn2l8Fy8M8P-fILMn-Vh-wLt6fQ&usqp=CAc', '400.49', 23,1);

insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (24, 'Chuck Taylor All Star Converse ', 'Most comfortable Converse shoes for men', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRYOxs9KjSDwAUIIBVECiU9S9SaJcpe2TLRFkaEJkUtEP1UtuQQf5Fcd3BpfrJ5-HX7feL8fOxpsIVw&usqp=CAc', '55.99', 3,3);

insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (25, 'Golden State Worriors', 'Comfortable shoes in best price', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRYRcZIOXg0W6uhtWLr5OkqGSksEYAOTtd-GBTLtqjvUmVTkM_mza9Ws4kyhHKAjgirw-77T5e64Qg&usqp=CAc','50.33', 9,3);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (26, 'NIKE Tanjung Womens Running Shoes', 'Good choice for running', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSPJKVeyji9oLaAQSLZaz6qm3sXmDv3D4nWK1QCrq73jo973bXJ3FTI4DMQ8t2QTteGhnzV2OQ&usqp=CAc', '55.5', 14,3);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (28, 'Vans Old Core Classis Levis', 'comfortable shoes', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRj3oF-1pcmWVrPHtPW7KnT7R05vu5LEypl_GhyXQWWjIAUEEV2FyF4BBGxsQypFMFczoPzZKtM&usqp=CAc', '29.99', 12,3);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (29, 'NIKE Airmax Motion 2 Womens Running Shoes', 'Best choice', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTRffQxm0iDGBPVnq5q4I63upZG00ZPJAMUM9CQHiEiMcQtAiY9zPT6kujbYwu6TJ9GyzB3UKw&usqp=CAc', '64.99', 12,3);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (30, 'NIKE Air Force', 'Light Weight Shoes','https://static.nike.com/a/images/t_PDP_1280_v1/f_auto/li4rxwuxpbjcuth4eqn4/air-max-270-react-womens-shoe-6bhhrf.jpg', '44.5', 12,3);

insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (31, 'Dell Inspiron 11', 'Great using cheap laptops', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcS7-GnNfFsQhuyi2t3gX-r4-e5rcbqMpYR8Vi2uWCKnP49W5TQmwb8elsKaCh9rJJDQjj9uFYVovQ&usqp=CAc', '279.49', 23, 1);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (32, 'Dell Inspiron 11', 'Great using cheap laptops','https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQVTAXxwlOQRETImwFoaEBQHfcNsbQR5zXpGwkWd0gCJrb1z53WHvqTlUMD0y-GAMiYnx6LzO_CRIQ&usqp=CAc', '539.99',26,1);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (33, 'HP Elitebook', 'Great choice for business ','https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRM8irvrIvQiLbZFDjIAhepWRQi5UWrIMCl6ht-CxwNdQaeuxsBBJnmCD4vi3h6hyd7GPTrNLKE1w&usqp=CAc', '2499.99', 16,1);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (34, 'HP Laptop 15Z', 'Windows 10 Home 64,AMD A9-9425 Dual-Core, AMD Radeon™ R5 Graphics 8 GB memory; 128 GB SSD storage, 15.6" diagonal HD display','https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQU7d9c2aFuQuUWOu_wz-lVRRPdNa0gsC3RlFZd_O-WykawCN_gYcizyqm7NvOGl3VLgcijaLM1ZQ&usqp=CAc' ,'499.59', 16,1);

insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (35, 'Men''s Zoom Domination', 'TR 2 Training Shoes', 'https://m.media-amazon.com/images/I/61GYC9FsyuL._AC_UL320_ML3_.jpg', '129.00', 14, 3);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (36, 'adidas Men Ultraboost', 'Black/Black/Grey Shoes', 'https://m.media-amazon.com/images/I/61hjkO9uHQL._AC_UL320_ML3_.jpg', '189.00', 1, 3);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (37, 'Levi''s Shoes','Rio Waxed UL NB BT', 'https://images-na.ssl-images-amazon.com/images/I/71o6haTjnQL._AC_UY695_.jpg', '89.00', 12, 3);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (38, 'Lenovo IdeaPad S145', 'Newest 15.6 Inch Premium Laptop', 'https://m.media-amazon.com/images/I/51hMUmm8lGL._AC_UL320_ML3_.jpg', '749.99', 23, 1);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (39, 'Samsung Electronics', 'Galaxy S10e Factory Unlocked Phone', 'https://m.media-amazon.com/images/I/61rB5Q7E9YL._AC_UL320_ML3_.jpg', '349.99', 17, 4);
insert into recommendation.products (id, name, description, image_url, price, product_brand_id, product_category_id) values (40, 'Obuolys MacBook Pro 13', 'New Formula, Ultra-Thin Light and Soft Mac Shell for Model A2159', 'https://m.media-amazon.com/images/I/51xsSuMBLgL._AC_UL320_ML3_.jpg', '349.99', 24, 1);


insert into recommendation.product_user (pid, uid) values (1, 3);
insert into recommendation.product_user (pid, uid) values (2, 3);
insert into recommendation.product_user (pid, uid) values (3, 3);
insert into recommendation.product_user (pid, uid) values (4, 3);
insert into recommendation.product_user (pid, uid) values (5, 3);


-- user 1
insert into recommendation.product_rating(user_id, product_id, rating) values (1,1,4);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,2,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,3,2);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,4,4);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,5,2);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,9,4);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,10,2);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,11,1);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,12,4);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,13,2);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,14,4);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,15,2);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,16,2);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,17,2);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,18,4);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,19,4);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,20,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,21,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,22,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,23,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,24,2);
insert into recommendation.product_rating(user_id, product_id, rating) values (1,25,3);

-- user 2

insert into recommendation.product_rating(user_id, product_id, rating) values (2,1,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,2,4);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,3,1);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,4,2);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,5,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,9,4);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,10,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,11,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,12,4);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,13,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,14,4);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,15,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,16,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,17,2);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,18,4);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,19,5);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,20,4);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,21,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,22,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,23,2);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,24,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (2,25,2);
-- insert into recommendation.product_rating(user_id, product_id, rating) values (2,1,3);
-- insert into recommendation.product_rating(user_id, product_id, rating) values (2,1,3);
-- insert into recommendation.product_rating(user_id, product_id, rating) values (2,1,3);

-- user 3

insert into recommendation.product_rating(user_id, product_id, rating) values (3,1,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,2,5);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,3,2);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,4,2);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,5,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,9,5);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,10,2);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,11,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,12,5);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,13,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,14,5);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,15,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,16,2);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,17,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,18,2);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,19,4);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,20,5);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,21,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,22,2);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,23,2);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,24,2);
insert into recommendation.product_rating(user_id, product_id, rating) values (3,25,2);


-- demo user

insert into recommendation.product_rating(user_id, product_id, rating) values (4,5,3);
insert into recommendation.product_rating(user_id, product_id, rating) values (4,9,4);
insert into recommendation.product_rating(user_id, product_id, rating) values (4,19,3);
