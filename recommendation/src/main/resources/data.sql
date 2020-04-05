

INSERT INTO recommendation.user_category (id, user_type) VALUES (1, 'admin');
INSERT INTO recommendation.user_category (id, user_type) VALUES (2, 'customer');
INSERT INTO recommendation.user_category (id, user_type) VALUES (3, 'seller');

INSERT INTO recommendation.addresses (id, apt_number, city, state, street, zip) VALUES (1, '5', 'Beaumont', 'TX', '1160 Oregon Ave', '77705');

INSERT INTO recommendation.users (id, active, email, firstname, lastname, password, phone, address_id, user_category_id) VALUES (1, 1, 'admin@admin.com', 'admin', 'admin', 'admin', '7812409029', 1, 1);
INSERT INTO recommendation.users (id, active, email, firstname, lastname, password, phone, address_id, user_category_id) VALUES (2, 1, 'srijal@user.com', 'srijal', 'joshi', 'srijal', '7812409029', 1, 2);