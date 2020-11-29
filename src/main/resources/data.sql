INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), 'Laptop Lenovo IdeaPad 3 Athlon Silver 3050U / 4GB / 256SSD / 15.6 / Win10 / (81W100V3RK)' , 'Display diagonal, inch: 15.6, Processor series: Athlon Silver, Processor model: 3050U, RAM size, GB: 4, SSD drive size, GB: 256, Operating system: Windows 10' , 174990 , 25 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/2/a/2a1ede9d14f99b063353de123f2fd80d115cd4cb_227564_1.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , 'Laptop Lenovo IdeaPad 3 Athlon 3050U / 8GB / 1000HDD / 15.6 / Dos / (81W100XJRK)' , 'Display diagonal, inch: 15.6, Processor model: 3050U, RAM, GB: 8, HDD capacity: GB1000, Operating system: DOS' , 159990 , 12 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/8/5/85f650f2a3e4496f62d839a4a59de3132a12978d_227228_1.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , 'Laptop Asus X509JA i3 1005G1 / 8GB / 1000HDD / 15.6 / Win10 / (X509JA-BR237T)' , 'Display diagonal, inch: 15.6, Processor series: Intel Core i3, Processor model: 1005G1, RAM, GB: 8, HDD storage, GB: 1000, Operating system: Windows 10' , 219990 , 7 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/f/6/f6b62d837183ce60fde6071d329c201e170975d0_224219_1.jpg');

INSERT INTO categories(id , name ) VALUES (nextval('categories_id_seq') , 'Laptop and computers');

INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (1 , 1);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (2 , 1);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (3 , 1);


INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), 'Smartphone Samsung Galaxy A11 32GB Black ','Display diagonal, inch: 6.4, Display resolution: 720x1560, Operating system: Android 10.0, RAM size: 2, Internal memory size: 32, Number of SIM-cards: 2, Battery capacity, mAh: 4000, Model year: 2020' , 64890 , 3 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/4/7/47c6f1dcb09efc08c1b2d2450499f4d7589caeb9_219516_1.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , 'Smartphone Apple iPhone 12 Pro 128GB Blue' , 'Display diagonal, inch: 6.1, Display resolution: 2532x1170, Operating system: iOS 14, RAM size: 6, Built-in memory size: 128, Number of SIM cards: 1, Model year: 2020' , 619990 , 13 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/2/c/2c26620bba089982a8a4b024c08042f90d5f8923_228626_1.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , 'Smartphone OPPO A5 2020 64GB Mirror Black ','Display diagonal, inch: 6.5, Display resolution: 720x1600, Operating system: Android 9.0 (Pie), RAM size: 3, Internal memory size: 64, Number of SIM cards: 2, Battery capacity, mAh: 5000' , 89990 , 26 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/b/3/b3c56e5adba2aac68ddc44eda4efb71116aff626_179042_1.jpg');

INSERT INTO categories(id , name ) VALUES (nextval('categories_id_seq') , 'Smartphones and gadgets');

INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (4 , 2);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (5 , 2);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (6 , 2);

INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), 'TV 32" AVA 32W5 LED HD Android Black','Screen diagonal, cm; 32 "(81 cm), Screen resolution: 1366x768 HD Ready," SMART TV "technology support: Yes, Technology: LED, Screen type: Straight, Mounting format: VESA100x100 mm' , 69990 , 45 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/6/6/66fc97e97a54542a415baf65572eef23abc8beb0_15859786711070.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , 'TV 43" Samsung UE43T5300AUXCE LED FHD Smart Black' , 'Screen diagonal, cm: 43 "(109 cm), Screen resolution: 1920x1080 Full HD," SMART TV "technology support: Yes, Technology: LED, Screen type: Direct, HDR support: Yes' , 142790 , 25 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/d/0/d0ec11357dc976ffdb939b3bddb287cf0ced19f8_216516_2.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , 'TV 43" LG 43LM5700PLA LED FHD Smart Black' , 'Screen diagonal, cm: 43 "(109 cm), Screen resolution: 1920x1080 Full HD," SMART TV "technology support: Yes, Technology: LED, Screen type: Direct, HDR support: Yes' , 138590 , 15 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/7/5/75599dde41b1c2b6a2966f234bfe973dc9dfb991_190158_1.jpg');

INSERT INTO categories(id , name ) VALUES (nextval('categories_id_seq') , 'TV, audio, photo, video');

INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (7 , 3);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (8 , 3);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (9 , 3);

INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), 'Game console XBOX One X 1TB Cyberpunk 2077 Limited Edition Bundle (FMP-00254)','Series: X-Box One X, RAM, GB: 12, Built-in memory, GB: 1000, Interface: Ethernet, Wi-Fi, HDMI, AUX, Optical audio out, USB, Bluetooth' , 249990 , 7 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/f/9/f98a632de37c8ff7e25a69e77fa2108cfea81356_218967_1.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), 'Game console XBOX One S 1TB + Joystick XBOX with 3.5 mm jack and Bluetooth, White (234-00608)' , 'Series: X-Box One S, RAM, GB: 8, Built-in memory, GB: 1000, Interface: USB, Wi-Fi, Bluetooth, Ethernet, AUX, HDMI' , 144990 , 12 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/9/1/91bb6c6c44e2bac86fe2f62171c7048d7302770a_175749.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), 'Game console XBOX One S 1TB All Digital SOT, Minecraft, Fortnite (NJP-00060)' , 'Series: X-Box One S, RAM, GB: 8, Built-in memory, GB: 1000, Interface: USB, HDMI, Wi-Fi, AUX, Ethernet, Bluetooth' , 114990 , 5 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/1/7/17c87ef7fbed67fbc605042b1440c8428cd93838_200799_1vc.jpg');

INSERT INTO categories(id , name ) VALUES (nextval('categories_id_seq') , 'For the gamers');

INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (10 , 4);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (11 , 4);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (12 , 4);

INSERT INTO roles (role_id , role_name , role_description) VALUES (1 , 'ROLE_USER' , 'DEFAULT ROLE FOR ALL USERS');

INSERT INTO cities(city_id , city_name) VALUES (nextval('cities_city_id_seq') , 'Almaty');
INSERT INTO cities(city_id , city_name) VALUES (nextval('cities_city_id_seq') , 'Shymkent');
INSERT INTO cities(city_id , city_name) VALUES (nextval('cities_city_id_seq') , 'Nur-Sultan');
INSERT INTO cities(city_id , city_name) VALUES (nextval('cities_city_id_seq') , 'Karagandy');
INSERT INTO cities(city_id , city_name) VALUES (nextval('cities_city_id_seq') , 'Pavlodar');