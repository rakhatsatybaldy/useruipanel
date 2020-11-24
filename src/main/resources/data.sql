INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), 'Ноутбук Lenovo IdeaPad 3 Athlon Silver 3050U / 4ГБ / 256SSD / 15.6 / Win10 / (81W100V3RK)' , 'Диагональ дисплея, дюйм : 15.6 , Серия процессора : Athlon Silver , Модель процессора : 3050U , Объём оперативной памяти, ГБ : 4 , Объём SSD накопителя ,ГБ : 256 , Операционная система :Windows 10' , 174990 , 25 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/2/a/2a1ede9d14f99b063353de123f2fd80d115cd4cb_227564_1.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , 'Ноутбук Lenovo IdeaPad 3 Athlon 3050U / 8ГБ / 1000HDD / 15.6 / Dos / (81W100XJRK)' , 'Диагональ дисплея, дюйм : 15.6 , Модель процессора : 3050U , Объём оперативной памяти, ГБ : 8 , Объём HDD накопителя :  ГБ1000 , Операционная система : DOS' , 159990 , 12 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/8/5/85f650f2a3e4496f62d839a4a59de3132a12978d_227228_1.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , 'Ноутбук Asus X509JA i3 1005G1 / 8ГБ / 1000HDD / 15.6 / Win10 / (X509JA-BR237T)' , 'Диагональ дисплея, дюйм : 15.6 , Серия процессора : Intel Core i3 , Модель процессора : 1005G1 , Объём оперативной памяти, ГБ:8 , Объём HDD накопителя, ГБ:1000 , Операционная система : Windows 10' , 219990 , 7 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/f/6/f6b62d837183ce60fde6071d329c201e170975d0_224219_1.jpg');

INSERT INTO categories(id , name ) VALUES (nextval('categories_id_seq') , 'Ноутбуки и компьютеры');

INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (1 , 1);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (2 , 1);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (3 , 1);


INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), 'Смартфон Samsung Galaxy A11 32GB Black ',' Диагональ дисплея, дюйм : 6.4 , Разрешение дисплея : 720x1560 , Операционная система : Android 10.0 , Объем оперативной памяти : 2 , Объём встроенной памяти : 32 , Количество SIM-карт : 2 , Ёмкость аккумулятора, mAh:4000 , Модельный год : 2020' , 64890 , 3 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/4/7/47c6f1dcb09efc08c1b2d2450499f4d7589caeb9_219516_1.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , 'Смартфон Apple iPhone 12 Pro 128GB Blue' , 'Диагональ дисплея, дюйм : 6.1 , Разрешение дисплея : 2532x1170 , Операционная система : iOS 14 , Объем оперативной памяти : 6 , Объём встроенной памяти : 128 , Количество SIM-карт : 1 , Модельный год : 2020' , 619990 , 13 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/2/c/2c26620bba089982a8a4b024c08042f90d5f8923_228626_1.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , 'Смартфон OPPO A5 2020 64GB Mirror Black' , 'Диагональ дисплея, дюйм : 6.5 , Разрешение дисплея : 720x1600 , Операционная система : Android 9.0 (Pie) , Объем оперативной памяти : 3 , Объём встроенной памяти : 64 , Количество SIM-карт : 2 , Ёмкость аккумулятора, mAh : 5000' , 89990 , 26 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/b/3/b3c56e5adba2aac68ddc44eda4efb71116aff626_179042_1.jpg');

INSERT INTO categories(id , name ) VALUES (nextval('categories_id_seq') , 'Смартфоны и гаджеты');

INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (4 , 2);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (5 , 2);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (6 , 2);

INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), 'Телевизор 32" AVA 32W5 LED HD Android Black','Диагональ экрана, см ; 32" (81 см) , Разрешение экрана : 1366x768 HD Ready , Поддержка технологии "SMART TV" : Да , Технология : LED , Тип экрана : Прямой , Формат крепления  : VESA100х100 мм' , 69990 , 45 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/6/6/66fc97e97a54542a415baf65572eef23abc8beb0_15859786711070.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , 'Телевизор 43" Samsung UE43T5300AUXCE LED FHD Smart Black' , 'Диагональ экрана, см : 43" (109 см) , Разрешение экрана : 1920x1080 Full HD , Поддержка технологии "SMART TV" : Да , Технология : LED , Тип экрана : Прямой , Поддержка HDR : Да' , 142790 , 25 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/d/0/d0ec11357dc976ffdb939b3bddb287cf0ced19f8_216516_2.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , 'Телевизор 43" LG 43LM5700PLA LED FHD Smart Black' , 'Диагональ экрана, см : 43" (109 см) , Разрешение экрана : 1920x1080 Full HD , Поддержка технологии "SMART TV" : Да , Технология : LED , Тип экрана : Прямой , Поддержка HDR : Да' , 138590 , 15 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/7/5/75599dde41b1c2b6a2966f234bfe973dc9dfb991_190158_1.jpg');

INSERT INTO categories(id , name ) VALUES (nextval('categories_id_seq') , 'ТВ, аудио, фото, видео');

INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (7 , 3);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (8 , 3);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (9 , 3);

INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), 'Игровая консоль XBOX One X 1TB Cyberpunk 2077 Limited Edition Bundle (FMP-00254)','Серия : X-Box One X , Оперативная память, ГБ : 12 , Объем встроенной памяти, ГБ : 1000 , Интерфейс : Ethernet, Wi-Fi, HDMI, AUX, Оптический аудиовыход, USB, Bluetooth' , 249990 , 7 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/f/9/f98a632de37c8ff7e25a69e77fa2108cfea81356_218967_1.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), 'Игровая консоль XBOX One S 1TB + Джойстик XBOX с разъемом 3,5 мм и Bluetooth, Белый (234-00608)' , 'Серия : X-Box One S , Оперативная память, ГБ : 8 , Объем встроенной памяти, ГБ : 1000 , Интерфейс : USB, Wi-Fi, Bluetooth, Ethernet, AUX, HDMI' , 144990 , 12 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/9/1/91bb6c6c44e2bac86fe2f62171c7048d7302770a_175749.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), 'Игровая консоль XBOX One S 1TB All Digital SOT, Minecraft, Fortnite (NJP-00060)' , 'Серия : X-Box One S , Оперативная память, ГБ : 8 , Объем встроенной памяти, ГБ : 1000 , Интерфейс : USB, HDMI, Wi-Fi, AUX, Ethernet, Bluetooth' , 114990 , 5 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/1/7/17c87ef7fbed67fbc605042b1440c8428cd93838_200799_1vc.jpg');

INSERT INTO categories(id , name ) VALUES (nextval('categories_id_seq') , 'Всё для геймеров');

INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (10 , 4);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (11 , 4);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (12 , 4);

INSERT INTO roles (role_id , role_name , role_description) VALUES (1 , 'ROLE_USER' , 'DEFAULT ROLE FOR ALL USERS');

INSERT INTO cities(city_id , city_name) VALUES (nextval('cities_city_id_seq') , 'Алматы');
INSERT INTO cities(city_id , city_name) VALUES (nextval('cities_city_id_seq') , 'Шымкент');
INSERT INTO cities(city_id , city_name) VALUES (nextval('cities_city_id_seq') , 'Нур-Султан');
INSERT INTO cities(city_id , city_name) VALUES (nextval('cities_city_id_seq') , 'Караганда');
INSERT INTO cities(city_id , city_name) VALUES (nextval('cities_city_id_seq') , 'Павлодар');