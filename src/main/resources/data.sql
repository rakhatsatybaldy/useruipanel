INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), 'Ноутбук Lenovo IdeaPad 3 Athlon Silver 3050U / 4ÃÁ / 256SSD / 15.6 / Win10 / (81W100V3RK)' , 'Äèàãîíàëü äèñïëåÿ, äþéì : 15.6 , Ñåðèÿ ïðîöåññîðà : Athlon Silver , Ìîäåëü ïðîöåññîðà : 3050U , Îáú¸ì îïåðàòèâíîé ïàìÿòè, ÃÁ : 4 , Îáú¸ì SSD íàêîïèòåëÿ ,ÃÁ : 256 , Îïåðàöèîííàÿ ñèñòåìà :Windows 10' , 174990 , 25 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/2/a/2a1ede9d14f99b063353de123f2fd80d115cd4cb_227564_1.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , 'Ноутбук Lenovo IdeaPad 3 Athlon 3050U / 8ÃÁ / 1000HDD / 15.6 / Dos / (81W100XJRK)' , 'Äèàãîíàëü äèñïëåÿ, äþéì : 15.6 , Ìîäåëü ïðîöåññîðà : 3050U , Îáú¸ì îïåðàòèâíîé ïàìÿòè, ÃÁ : 8 , Îáú¸ì HDD íàêîïèòåëÿ :  ÃÁ1000 , Îïåðàöèîííàÿ ñèñòåìà : DOS' , 159990 , 12 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/8/5/85f650f2a3e4496f62d839a4a59de3132a12978d_227228_1.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , 'Ноутбук Asus X509JA i3 1005G1 / 8ÃÁ / 1000HDD / 15.6 / Win10 / (X509JA-BR237T)' , 'Äèàãîíàëü äèñïëåÿ, äþéì : 15.6 , Ñåðèÿ ïðîöåññîðà : Intel Core i3 , Ìîäåëü ïðîöåññîðà : 1005G1 , Îáú¸ì îïåðàòèâíîé ïàìÿòè, ÃÁ:8 , Îáú¸ì HDD íàêîïèòåëÿ, ÃÁ:1000 , Îïåðàöèîííàÿ ñèñòåìà : Windows 10' , 219990 , 7 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/f/6/f6b62d837183ce60fde6071d329c201e170975d0_224219_1.jpg');

INSERT INTO categories(id , name ) VALUES (nextval('categories_id_seq') , 'Ноутбук и компьютеры');

INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (1 , 1);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (2 , 1);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (3 , 1);


INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), 'Смартфон Samsung Galaxy A11 32GB Black ',' Äèàãîíàëü äèñïëåÿ, äþéì : 6.4 , Ðàçðåøåíèå äèñïëåÿ : 720x1560 , Îïåðàöèîííàÿ ñèñòåìà : Android 10.0 , Îáúåì îïåðàòèâíîé ïàìÿòè : 2 , Îáú¸ì âñòðîåííîé ïàìÿòè : 32 , Êîëè÷åñòâî SIM-êàðò : 2 , ¨ìêîñòü àêêóìóëÿòîðà, mAh:4000 , Ìîäåëüíûé ãîä : 2020' , 64890 , 3 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/4/7/47c6f1dcb09efc08c1b2d2450499f4d7589caeb9_219516_1.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , 'Смартфон Apple iPhone 12 Pro 128GB Blue' , 'Äèàãîíàëü äèñïëåÿ, äþéì : 6.1 , Ðàçðåøåíèå äèñïëåÿ : 2532x1170 , Îïåðàöèîííàÿ ñèñòåìà : iOS 14 , Îáúåì îïåðàòèâíîé ïàìÿòè : 6 , Îáú¸ì âñòðîåííîé ïàìÿòè : 128 , Êîëè÷åñòâî SIM-êàðò : 1 , Ìîäåëüíûé ãîä : 2020' , 619990 , 13 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/2/c/2c26620bba089982a8a4b024c08042f90d5f8923_228626_1.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , 'Смартфон OPPO A5 2020 64GB Mirror Black' , 'Äèàãîíàëü äèñïëåÿ, äþéì : 6.5 , Ðàçðåøåíèå äèñïëåÿ : 720x1600 , Îïåðàöèîííàÿ ñèñòåìà : Android 9.0 (Pie) , Îáúåì îïåðàòèâíîé ïàìÿòè : 3 , Îáú¸ì âñòðîåííîé ïàìÿòè : 64 , Êîëè÷åñòâî SIM-êàðò : 2 , ¨ìêîñòü àêêóìóëÿòîðà, mAh : 5000' , 89990 , 26 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/b/3/b3c56e5adba2aac68ddc44eda4efb71116aff626_179042_1.jpg');

INSERT INTO categories(id , name ) VALUES (nextval('categories_id_seq') , 'Телефон и гаджеты');

INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (4 , 2);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (5 , 2);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (6 , 2);

INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), 'Телевизор 32" AVA 32W5 LED HD Android Black','Äèàãîíàëü ýêðàíà, ñì ; 32" (81 ñì) , Ðàçðåøåíèå ýêðàíà : 1366x768 HD Ready , Ïîääåðæêà òåõíîëîãèè "SMART TV" : Äà , Òåõíîëîãèÿ : LED , Òèï ýêðàíà : Ïðÿìîé , Ôîðìàò êðåïëåíèÿ  : VESA100õ100 ìì' , 69990 , 45 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/6/6/66fc97e97a54542a415baf65572eef23abc8beb0_15859786711070.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , 'Телевизор 43" Samsung UE43T5300AUXCE LED FHD Smart Black' , 'Äèàãîíàëü ýêðàíà, ñì : 43" (109 ñì) , Ðàçðåøåíèå ýêðàíà : 1920x1080 Full HD , Ïîääåðæêà òåõíîëîãèè "SMART TV" : Äà , Òåõíîëîãèÿ : LED , Òèï ýêðàíà : Ïðÿìîé , Ïîääåðæêà HDR : Äà' , 142790 , 25 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/d/0/d0ec11357dc976ffdb939b3bddb287cf0ced19f8_216516_2.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , 'Телевизор 43" LG 43LM5700PLA LED FHD Smart Black' , 'Äèàãîíàëü ýêðàíà, ñì : 43" (109 ñì) , Ðàçðåøåíèå ýêðàíà : 1920x1080 Full HD , Ïîääåðæêà òåõíîëîãèè "SMART TV" : Äà , Òåõíîëîãèÿ : LED , Òèï ýêðàíà : Ïðÿìîé , Ïîääåðæêà HDR : Äà' , 138590 , 15 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/7/5/75599dde41b1c2b6a2966f234bfe973dc9dfb991_190158_1.jpg');

INSERT INTO categories(id , name ) VALUES (nextval('categories_id_seq') , 'ТВ , аудио , фото и видео');

INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (7 , 3);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (8 , 3);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (9 , 3);

INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), 'Игровой консоль XBOX One X 1TB Cyberpunk 2077 Limited Edition Bundle (FMP-00254)','Ñåðèÿ : X-Box One X , Îïåðàòèâíàÿ ïàìÿòü, ÃÁ : 12 , Îáúåì âñòðîåííîé ïàìÿòè, ÃÁ : 1000 , Èíòåðôåéñ : Ethernet, Wi-Fi, HDMI, AUX, Îïòè÷åñêèé àóäèîâûõîä, USB, Bluetooth' , 249990 , 7 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/f/9/f98a632de37c8ff7e25a69e77fa2108cfea81356_218967_1.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), 'Игровой консоль XBOX One S 1TB + Äæîéñòèê XBOX ñ ðàçúåìîì 3,5 ìì è Bluetooth, Áåëûé (234-00608)' , 'Ñåðèÿ : X-Box One S , Îïåðàòèâíàÿ ïàìÿòü, ÃÁ : 8 , Îáúåì âñòðîåííîé ïàìÿòè, ÃÁ : 1000 , Èíòåðôåéñ : USB, Wi-Fi, Bluetooth, Ethernet, AUX, HDMI' , 144990 , 12 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/9/1/91bb6c6c44e2bac86fe2f62171c7048d7302770a_175749.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), 'Игровой консоль XBOX One S 1TB All Digital SOT, Minecraft, Fortnite (NJP-00060)' , 'Ñåðèÿ : X-Box One S , Îïåðàòèâíàÿ ïàìÿòü, ÃÁ : 8 , Îáúåì âñòðîåííîé ïàìÿòè, ÃÁ : 1000 , Èíòåðôåéñ : USB, HDMI, Wi-Fi, AUX, Ethernet, Bluetooth' , 114990 , 5 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/1/7/17c87ef7fbed67fbc605042b1440c8428cd93838_200799_1vc.jpg');

INSERT INTO categories(id , name ) VALUES (nextval('categories_id_seq') , 'Всё для геймеров');

INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (10 , 4);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (11 , 4);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (12 , 4);

INSERT INTO roles (role_id , role_name , role_description) VALUES (1 , 'ROLE_USER' , 'DEFAULT ROLE FOR ALL USERS');

INSERT INTO cities(city_id , city_name) VALUES (nextval('cities_city_id_seq') , 'Алматы');
INSERT INTO cities(city_id , city_name) VALUES (nextval('cities_city_id_seq') , 'Шымкент');
INSERT INTO cities(city_id , city_name) VALUES (nextval('cities_city_id_seq') , 'Нур-Султан');
INSERT INTO cities(city_id , city_name) VALUES (nextval('cities_city_id_seq') , 'Караганды');
INSERT INTO cities(city_id , city_name) VALUES (nextval('cities_city_id_seq') , 'Павлодар');
