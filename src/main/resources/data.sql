INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), '������� Lenovo IdeaPad 3 Athlon Silver 3050U / 4�� / 256SSD / 15.6 / Win10 / (81W100V3RK)' , '��������� �������, ���� : 15.6 , ����� ���������� : Athlon Silver , ������ ���������� : 3050U , ����� ����������� ������, �� : 4 , ����� SSD ���������� ,�� : 256 , ������������ ������� :Windows 10' , 174990 , 25 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/2/a/2a1ede9d14f99b063353de123f2fd80d115cd4cb_227564_1.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , '������� Lenovo IdeaPad 3 Athlon 3050U / 8�� / 1000HDD / 15.6 / Dos / (81W100XJRK)' , '��������� �������, ���� : 15.6 , ������ ���������� : 3050U , ����� ����������� ������, �� : 8 , ����� HDD ���������� :  ��1000 , ������������ ������� : DOS' , 159990 , 12 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/8/5/85f650f2a3e4496f62d839a4a59de3132a12978d_227228_1.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , '������� Asus X509JA i3 1005G1 / 8�� / 1000HDD / 15.6 / Win10 / (X509JA-BR237T)' , '��������� �������, ���� : 15.6 , ����� ���������� : Intel Core i3 , ������ ���������� : 1005G1 , ����� ����������� ������, ��:8 , ����� HDD ����������, ��:1000 , ������������ ������� : Windows 10' , 219990 , 7 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/f/6/f6b62d837183ce60fde6071d329c201e170975d0_224219_1.jpg');

INSERT INTO categories(id , name ) VALUES (nextval('categories_id_seq') , '�������� � ����������');

INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (1 , 1);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (2 , 1);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (3 , 1);


INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), '�������� Samsung Galaxy A11 32GB Black ',' ��������� �������, ���� : 6.4 , ���������� ������� : 720x1560 , ������������ ������� : Android 10.0 , ����� ����������� ������ : 2 , ����� ���������� ������ : 32 , ���������� SIM-���� : 2 , ������� ������������, mAh:4000 , ��������� ��� : 2020' , 64890 , 3 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/4/7/47c6f1dcb09efc08c1b2d2450499f4d7589caeb9_219516_1.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , '�������� Apple iPhone 12 Pro 128GB Blue' , '��������� �������, ���� : 6.1 , ���������� ������� : 2532x1170 , ������������ ������� : iOS 14 , ����� ����������� ������ : 6 , ����� ���������� ������ : 128 , ���������� SIM-���� : 1 , ��������� ��� : 2020' , 619990 , 13 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/2/c/2c26620bba089982a8a4b024c08042f90d5f8923_228626_1.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , '�������� OPPO A5 2020 64GB Mirror Black' , '��������� �������, ���� : 6.5 , ���������� ������� : 720x1600 , ������������ ������� : Android 9.0 (Pie) , ����� ����������� ������ : 3 , ����� ���������� ������ : 64 , ���������� SIM-���� : 2 , ������� ������������, mAh : 5000' , 89990 , 26 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/b/3/b3c56e5adba2aac68ddc44eda4efb71116aff626_179042_1.jpg');

INSERT INTO categories(id , name ) VALUES (nextval('categories_id_seq') , '��������� � �������');

INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (4 , 2);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (5 , 2);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (6 , 2);

INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), '��������� 32" AVA 32W5 LED HD Android Black','��������� ������, �� ; 32" (81 ��) , ���������� ������ : 1366x768 HD Ready , ��������� ���������� "SMART TV" : �� , ���������� : LED , ��� ������ : ������ , ������ ���������  : VESA100�100 ��' , 69990 , 45 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/6/6/66fc97e97a54542a415baf65572eef23abc8beb0_15859786711070.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , '��������� 43" Samsung UE43T5300AUXCE LED FHD Smart Black' , '��������� ������, �� : 43" (109 ��) , ���������� ������ : 1920x1080 Full HD , ��������� ���������� "SMART TV" : �� , ���������� : LED , ��� ������ : ������ , ��������� HDR : ��' , 142790 , 25 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/d/0/d0ec11357dc976ffdb939b3bddb287cf0ced19f8_216516_2.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq') , '��������� 43" LG 43LM5700PLA LED FHD Smart Black' , '��������� ������, �� : 43" (109 ��) , ���������� ������ : 1920x1080 Full HD , ��������� ���������� "SMART TV" : �� , ���������� : LED , ��� ������ : ������ , ��������� HDR : ��' , 138590 , 15 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/7/5/75599dde41b1c2b6a2966f234bfe973dc9dfb991_190158_1.jpg');

INSERT INTO categories(id , name ) VALUES (nextval('categories_id_seq') , '��, �����, ����, �����');

INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (7 , 3);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (8 , 3);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (9 , 3);

INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), '������� ������� XBOX One X 1TB Cyberpunk 2077 Limited Edition Bundle (FMP-00254)','����� : X-Box One X , ����������� ������, �� : 12 , ����� ���������� ������, �� : 1000 , ��������� : Ethernet, Wi-Fi, HDMI, AUX, ���������� ����������, USB, Bluetooth' , 249990 , 7 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/f/9/f98a632de37c8ff7e25a69e77fa2108cfea81356_218967_1.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), '������� ������� XBOX One S 1TB + �������� XBOX � �������� 3,5 �� � Bluetooth, ����� (234-00608)' , '����� : X-Box One S , ����������� ������, �� : 8 , ����� ���������� ������, �� : 1000 , ��������� : USB, Wi-Fi, Bluetooth, Ethernet, AUX, HDMI' , 144990 , 12 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/9/1/91bb6c6c44e2bac86fe2f62171c7048d7302770a_175749.jpg');
INSERT INTO goods(good_id , good_name , good_description , price , amount , picture) VALUES (nextval('goods_good_id_seq'), '������� ������� XBOX One S 1TB All Digital SOT, Minecraft, Fortnite (NJP-00060)' , '����� : X-Box One S , ����������� ������, �� : 8 , ����� ���������� ������, �� : 1000 , ��������� : USB, HDMI, Wi-Fi, AUX, Ethernet, Bluetooth' , 114990 , 5 , 'https://www.technodom.kz/media/catalog/product/cache/1366e688ed42c99cd6439df4031862c6/1/7/17c87ef7fbed67fbc605042b1440c8428cd93838_200799_1vc.jpg');

INSERT INTO categories(id , name ) VALUES (nextval('categories_id_seq') , '�� ��� ��������');

INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (10 , 4);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (11 , 4);
INSERT INTO goods_categories(goods_good_id , categories_id) VALUES (12 , 4);

INSERT INTO roles (role_id , role_name , role_description) VALUES (1 , 'ROLE_USER' , 'DEFAULT ROLE FOR ALL USERS');

INSERT INTO cities(city_id , city_name) VALUES (nextval('cities_city_id_seq') , '������');
INSERT INTO cities(city_id , city_name) VALUES (nextval('cities_city_id_seq') , '�������');
INSERT INTO cities(city_id , city_name) VALUES (nextval('cities_city_id_seq') , '���-������');
INSERT INTO cities(city_id , city_name) VALUES (nextval('cities_city_id_seq') , '���������');
INSERT INTO cities(city_id , city_name) VALUES (nextval('cities_city_id_seq') , '��������');