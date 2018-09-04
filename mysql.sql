
/* items table creation */
CREATE TABLE items
(
    `id` SERIAL PRIMARY KEY,
    `sku` VARCHAR (90),
    `barcode` CHAR(12) DEFAULT '000000000000' NOT NULL,
    `title` VARCHAR(120),
    `full_title` VARCHAR (360),
    `description` TEXT,
    `img_uri` TEXT,
    `price` DECIMAL (8,2),
    `wh_count` BIGINT,
    `income_date` DATE,
    `updated` DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL

);



INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('66890YPF', '880187227346', 'Samsung Galaxy S61', 'Random description: sS92qVCREXdwRMlERsSNr5P57', 'Smartphone Samsung Galaxy S69', 'samsung_galaxy_s6.jpg', '20147.95', '25', '2014-2-27');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('31251SSN', '784786554844', 'Samsung Galaxy S6 edge5', 'Random description: daUMRqFjtDc8KIi10MFmhcXBJ', 'Smartphone Samsung Galaxy S6 edge3', 'samsung_galaxy_s6_edge.jpg', '54527.94', '18', '2011-9-9');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('93207SNK', '876831100565', 'Microsoft Lumia 6403', 'Random description: cHCHoM1Ay52R0pC1o0 A9zLWk', 'Smartphone Microsoft Lumia 6403', 'microsoft_lumia_640.jpg', '88405.26', '22', '2013-1-23');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('40257KJG', '389009429724', 'AT&T 85252', 'Random description: oBX4BTZnhHsm4LP9NOFswIt9c', 'Smartphone AT&T 85256', 'at&t_8525.jpg', '61715.77', '1', '2018-3-21');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('21580PKR', '419779079028', 'Sony Xperia C38', 'Random description: sf7zHQvFxaeg5c2NhTyOFH6ix', 'Smartphone Sony Xperia C35', 'sony_xperia_c3.jpg', '62041.40', '15', '2013-2-21');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('38311LJF', '414251870896', 'Alcatel One Touch Pixi 3 (3.5)5', 'Random description: SN s1z2KeP4xpYv9lujmXvtA2', 'Smartphone Alcatel One Touch Pixi 3 (3.5)6', 'alcatel_one_touch_pixi_3_(3.5).jpg', '55242.23', '13', '2011-3-15');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('70342SGT', '866522918552', 'Huawei Honor 3X Pro7', 'Random description: ef5CEtszFnU3HGMAqNho3Fd4U', 'Smartphone Huawei Honor 3X Pro6', 'huawei_honor_3x_pro.jpg', '90347.86', '2', '2012-8-20');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('78913P I', '223163019220', 'Samsung Galaxy S68', 'Random description: lCFaWNiQ cod9umyEMADD8NX8', 'Smartphone Samsung Galaxy S63', 'samsung_galaxy_s6.jpg', '17138.50', '20', '2014-8-4');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('55197BPQ', '461333847069', 'Axia A1081', 'Random description: 88FI8qd7uThv41eRmHdgNeiG2', 'Smartphone Axia A1089', 'axia_a108.jpg', '97894.37', '0', '2014-5-19');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('90798MCQ', '917814166242', 'Huawei Honor 3X Pro3', 'Random description: S50UU54B3aiB8jLouYuDp5bw3', 'Smartphone Huawei Honor 3X Pro9', 'huawei_honor_3x_pro.jpg', '49103.40', '14', '2012-10-17');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('99320OUV', '267520324982', 'Alcatel One Touch Pixi 3 (3.5)6', 'Random description: viEw7DtD45cwzsnkfMVMrSpO2', 'Smartphone Alcatel One Touch Pixi 3 (3.5)8', 'alcatel_one_touch_pixi_3_(3.5).jpg', '98086.23', '20', '2014-7-26');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('82820UJV', '333177298037', 'Axia A1085', 'Random description: fBSPiPaCDwHar2lBtTwAliimc', 'Smartphone Axia A1082', 'axia_a108.jpg', '89902.78', '20', '2015-10-12');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('75141TBU', '123927542225', 'Alcatel One Touch Pixi 3 (3.5)7', 'Random description: EmlBxCM27YQfUZ4Po24mpuIv1', 'Smartphone Alcatel One Touch Pixi 3 (3.5)9', 'alcatel_one_touch_pixi_3_(3.5).jpg', '53485.72', '16', '2012-8-26');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('76908VHJ', '350534818306', 'ZTE Blade HN2', 'Random description: ZUVB5RcwdFD6UhsDQlCh2P3z6', 'Smartphone ZTE Blade HN3', 'zte_blade_hn.jpg', '77000.66', '18', '2011-1-3');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('40615ZVV', '832261699530', 'Apple iPhone 6 Plus6', 'Random description: nQ4rC0V6rmMc HI65uRct1oRx', 'Smartphone Apple iPhone 6 Plus3', 'apple_iphone_6_plus.jpg', '73611.55', '15', '2012-2-7');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('91804KBU', '612850862552', 'Sony Xperia T32', 'Random description: yxGZho6gTMZKIlq1Lrij9ZrFO', 'Smartphone Sony Xperia T34', 'sony_xperia_t3.jpg', '67283.39', '24', '2018-10-5');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('78163QPD', '183146967938', 'LG L65 Dual D2853', 'Random description: Gd LXXHmhGjQsp7AOK tcQ2PR', 'Smartphone LG L65 Dual D2857', 'lg_l65_dual_d285.jpg', '15435.85', '20', '2015-7-23');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('89398UXR', '747991696129', 'Sony Xperia T31', 'Random description: dTgHWtkvHucDYUMA7D1hCxPGq', 'Smartphone Sony Xperia T35', 'sony_xperia_t3.jpg', '21925.87', '22', '2013-10-28');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('71755VJM', '596678279838', 'Alcatel One Touch Pixi 3 (3.5)5', 'Random description: AHvlaBW4t4jbiO0GxBzGC4U4i', 'Smartphone Alcatel One Touch Pixi 3 (3.5)5', 'alcatel_one_touch_pixi_3_(3.5).jpg', '61717.54', '25', '2015-4-12');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('48512CJF', '132834237705', 'AT&T 85256', 'Random description: 4osbIliQuEPIv946bOKYklEHP', 'Smartphone AT&T 85254', 'at&t_8525.jpg', '60107.6', '2', '2017-1-11');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('81142AJI', '505323275445', 'ZTE Blade HN1', 'Random description: dQAEmxjEahkISZ 0OWQKtaXwX', 'Smartphone ZTE Blade HN7', 'zte_blade_hn.jpg', '73439.23', '14', '2014-3-14');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('47222 OE', '985768718310', 'ZTE Blade HN1', 'Random description: gNxDfENVk2XyeINshuNWNTylG', 'Smartphone ZTE Blade HN3', 'zte_blade_hn.jpg', '52656.68', '10', '2011-6-20');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('42569NGQ', '615705571001', 'AT&T 57006', 'Random description: gid2WHuhhP6dz67EjSgMyux1l', 'Smartphone AT&T 57006', 'at&t_5700.jpg', '78903.92', '10', '2014-4-26');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('60335TLS', '657263817196', 'AT&T 57006', 'Random description: tBAOQPiObZPIkEyRbBcKWLn8B', 'Smartphone AT&T 57006', 'at&t_5700.jpg', '53713.98', '16', '2012-8-8');
INSERT INTO items (`sku`, `barcode`, `title`, `full_title`, `description`, `img_uri`, `price`, `wh_count`, `income_date`) VALUES ('26846HVC', '580461169324', 'Axia A1082', 'Random description: Z WYREr4wmUkfp1R6d64KgKSa', 'Smartphone Axia A1084', 'axia_a108.jpg', '41236.27', '10', '2011-2-1');