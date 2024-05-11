/*
SQLyog Enterprise v12.5.1 (64 bit)
MySQL - 10.4.24-MariaDB : Database - ci_barang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `barang` */

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `id_barang` char(7) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `ket_barang` varchar(255) NOT NULL,
  `stok` int(11) DEFAULT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `satuan_id` int(11) NOT NULL,
  `jenis_id` int(11) NOT NULL,
  PRIMARY KEY (`id_barang`),
  KEY `satuan_id` (`satuan_id`),
  KEY `kategori_id` (`jenis_id`),
  CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`satuan_id`) REFERENCES `satuan` (`id_satuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `barang_ibfk_2` FOREIGN KEY (`jenis_id`) REFERENCES `jenis` (`id_jenis`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `barang` */

LOCK TABLES `barang` WRITE;

insert  into `barang`(`id_barang`,`nama_barang`,`ket_barang`,`stok`,`harga_beli`,`harga_jual`,`satuan_id`,`jenis_id`) values 
('B000001','Gembok Bigen Kuningan','20mm',12,4000,0,1,8),
('B000004','Ampelas Duko','100',10,3700,6000,1,1),
('B000005','Ampelas Duko','120',0,3700,6000,1,1),
('B000006','Ampelas Duko','140',0,3700,6000,1,1),
('B000007','Ampelas Duko','600',0,3700,6000,1,1),
('B000008','Ampelas Duko','1000',0,3700,6000,1,1),
('B000009','Ampelas Roll','-',0,137016,6000,9,1),
('B000010','Besi Full','8 mili',0,43000,48000,1,1),
('B000011','Besi Full','10 mili',0,72000,77000,1,1),
('B000012','Besi Full','6 mili',0,27750,32750,1,1),
('B000013','Bodem','3 LB',0,51000,65000,1,1),
('B000014','Bodem','4 LB',0,68000,80000,1,1),
('B000015','Bodem','6 LB',0,102000,115000,1,1),
('B000016','Cat Kuda Terbang','200cc',0,11667,16667,1,1),
('B000017','Cat Q-Luc','4,5 kilo',0,66418,71418,1,1),
('B000018','catut bison biasa','9 inci',0,12167,17167,1,1),
('B000019','Catut Bison Card','9 inci',0,28000,40000,1,1),
('B000020','Dempul Sanpolac','1 kilogram',0,51000,56000,1,1),
('B000021','Dinabolt','5/16 x 40',0,910,5910,1,1),
('B000022','Dinabolt','5/16 x 65',0,1210,6210,1,1),
('B000023','Dinabolt','5/16 x 85',0,2510,7510,1,1),
('B000024','Dinabolt','3/8 x 50',0,1443,6443,1,1),
('B000025','Dinabolt','3/8 x 77',0,1920,6920,1,1),
('B000026','Dinabolt','3/8 x 97',0,2365,7365,1,1),
('B000027','Engsel Eifel','3 inci',0,10000,17500,1,1),
('B000028','Engsel Eifel','4 inci',0,14600,22000,1,1),
('B000029','Engsel HPP','3 inci',0,6458,12500,1,1),
('B000030','Engsel HPP','4 inci',0,7667,15000,1,1),
('B000031','Engsel Tipis','1 inci',0,500,1000,1,1),
('B000032','Engsel Tipis','1 1/2 inci',0,608,1500,1,1),
('B000033','Engsel Tipis','2 inci',0,767,2000,1,1),
('B000034','Fiber Pagar','1 roll',0,1058000,1625000,1,1),
('B000035','Fiber Pagar','1 meter',0,21160,32500,1,1),
('B000036','Flashband','5 cm',0,120000,140000,1,1),
('B000037','Flashband','7,5 cm',0,180000,210000,1,1),
('B000038','Flashband','10 cm',0,240000,260000,1,1),
('B000039','Foot Klep Elfa','1/2 inci ',0,3780,8780,1,1),
('B000040','Foot Klep Elfa','3/4 inci',0,4800,9800,1,1),
('B000041','Gembok Accura','30 Pendek',0,12600,17600,1,1),
('B000042','Gembok Accura','30 Panjang',0,13200,18200,1,1),
('B000043','Gembok Accura','40 Pendek',0,16800,21800,1,1),
('B000044','Gembok Accura','40 Panjang',0,19000,24000,1,1),
('B000045','Gembok Accura','50 Pendek',0,23750,28750,1,1),
('B000046','Gembok Accura','50 Panjang',0,25000,30000,1,1),
('B000047','Gembok Bigen Kuningan','25mm',0,4483,9483,1,1),
('B000048','Gembok Bigen Kuningan','30mm',0,6417,11417,1,1),
('B000049','GRC Board','122x244',0,58000,63000,1,1),
('B000050','Grendel East Stainless Steel','2 inci',0,3150,8000,1,1),
('B000051','Grendel East Stainless Steel','3 inci',0,3800,10000,1,1),
('B000052','Grendel East Stainless Steel','4 inci',0,4500,12000,1,1),
('B000053','Grendel Kupu Hitam','1 1/4 inci',0,1400,4000,1,1),
('B000054','Grendel Kupu Hitam','1 1/2 inci',0,1458,5000,1,1),
('B000055','Grendel Kupu Hitam','2 inci',0,2450,6000,1,1),
('B000056','Grendel Tebal KZK Hitam','2 inci',0,2625,5000,1,1),
('B000057','Grendel Tebal KZK Hitam','3 inci',0,2792,6000,1,1),
('B000058','Grendel Tebal KZK Hitam','4 inci',0,3567,8500,1,1),
('B000059','Gunting Bison Serbaguna','nomor 1',0,14850,22500,1,1),
('B000060','Hak Angin Lucky','8 inci',0,5833,10000,1,1),
('B000061','Holo Galvalum TMJ Econ','2x4 DL',0,12250,17250,1,1),
('B000062','Hook Buka','nomer 6',0,272,1500,1,1),
('B000063','Hook Buka ','nomer 8',0,375,2000,1,1),
('B000064','Hook Buka ','nomer 10',0,394,2500,1,1),
('B000065','Hook Buka ','nomer 12',0,608,3000,1,1),
('B000066','Hook Buka ','nomer 16',0,660,5000,1,1),
('B000067','Kaki Engkel Alumunium','-',0,1000,5000,1,1),
('B000068','Kape Dempul Kayu','2 inci',0,2500,5000,1,1),
('B000069','Kape Dempul Kayu','3 inci',0,2917,8000,1,1),
('B000070','Kape Dempul Kayu','4 inci',0,3333,10000,1,1),
('B000071','Kape PVC','5 inci',0,700,3000,1,1),
('B000072','Kape PVC','9 inci',0,1600,7000,1,1),
('B000073','Kape Set Pallazo','-',0,12000,17000,1,1),
('B000074','Kapur Besi','-',0,1000,6000,1,1),
('B000075','Karet Asbes','-',0,27500,32500,1,1),
('B000076','Karpet Macan','60x50meter',0,19000,24000,1,1),
('B000077','Karpet Macan','90x50meter',0,25000,30000,1,1),
('B000078','Kawat Hordeng','-',0,65,150,1,1),
('B000079','Keramik Accura','40x40 Putih',0,40000,47000,1,1),
('B000080','Kikir JK','3,5 mm',0,13942,18942,1,1),
('B000081','Kikir JK ','4,0 mm',0,13942,18942,1,1),
('B000082','Kinik GC.GD','-',0,11570,16570,1,1),
('B000083','Kinik Poles','4x6',0,7520,12520,1,1),
('B000084','Klem Selang','5/8 inci',0,475,2000,1,1),
('B000085','Klem Selang','3/4 inci',0,475,2500,1,1),
('B000086','Klem Selang','7/8 inci',0,475,3000,1,1),
('B000087','Klem Selang','1 inci',0,475,5000,1,1),
('B000088','Knee RUcika','1/2',0,1960,3750,1,1),
('B000089','Kompon','20 Kilogram',0,0,5000,1,1),
('B000090','Kompon','1 Kilogram',0,0,5000,1,1),
('B000091','Kuas Biasa','1 inci',0,1375,3000,1,1),
('B000092','Kuas Biasa','1 1/2 inci',0,2063,4500,1,1),
('B000093','Kuas Biasa','2 inci',0,2750,5000,1,1),
('B000094','Kuas Biasa','2 1/5 inci',0,3438,6500,1,1),
('B000095','Kuas Biasa','3 inci',0,4125,8000,1,1),
('B000096','Kuas Biasa','4 inci',0,5625,10000,1,1),
('B000097','Kuas Eterna','1 inci',8,2917,7917,1,1),
('B000098','Kuas Eterna','2 inci',12,5833,10833,1,1),
('B000099','Kuas Eterna','2 1/2 inci',12,7292,12292,1,1),
('B000100','Kuas Eterna','3 inci',12,8750,13750,1,1),
('B000101','Kuas Eterna','4 inci',0,15417,20417,1,1),
('B000102','Kunci Armenie','Kecil',0,81000,110000,1,1),
('B000103','Kunci Armenie','Tanggung',0,91000,120000,1,1),
('B000104','Kunci Laci 808','-',0,16042,21042,1,1),
('B000105','Kunci Laci Brabus','-',0,3083,8083,1,1),
('B000106','Kunci Laci Huben 138','-',0,10000,15000,1,1),
('B000107','Lakban Bening','2 inci',0,11750,16750,1,1),
('B000108','Lakban Kain Hitam','2 inci',0,15000,20000,1,1),
('B000109','Lakban Kertas','1 inci',0,7500,12500,1,1),
('B000110','Lakban Kertas','2 inci',0,15000,20000,1,1),
('B000111','Leibel','1 tzak',0,55500,60500,1,1),
('B000112','Lem Dextone 2 Jam','-',0,12250,17250,1,1),
('B000113','Lem Dextone 5 menit','-',0,13933,18500,1,1),
('B000114','Lem Dextone Kaca','Besar',0,15417,20417,1,1),
('B000115','Lem Dextone Kaca','Kecil',0,7708,12708,1,1),
('B000116','Lem Dextone Red','Besar',0,16500,21500,1,1),
('B000117','Lem Dextone Red','Kecil',0,8525,13525,1,1),
('B000118','Lem Fox Kaleng Kuning','0,1 kg',0,8700,14000,1,1),
('B000119','Lem Fox Kaleng Kuning','1/4 kg',0,18560,25000,1,1),
('B000120','Lem Fox Plastik','0,4',0,9050,14050,1,1),
('B000121','Lem Fox Tikus','75g',0,9929,15000,1,1),
('B000122','Lem G','-',0,7000,12000,1,1),
('B000123','Mata Gergaji Triplek','nomer 5',0,11667,16667,1,1),
('B000124','Matabor Beton','4,0 mm',0,2900,7900,1,1),
('B000125','Matabor Beton','5,0 mm',0,3600,8600,1,1),
('B000126','Matabor Beton','6,0 mm',0,4300,9300,1,1),
('B000127','Matabor Beton','8,0 mm',0,6300,11300,1,1),
('B000128','Matabor Beton','10 mm',0,7900,12900,1,1),
('B000129','Matabor Beton','12 mm',0,12000,17000,1,1),
('B000130','Matabor kuning GDO','2,0 mm',0,1325,6325,1,1),
('B000131','Matabor kuning GDO','2,5 mm',0,1325,6325,1,1),
('B000132','Matabor kuning GDO','3,0 mm',0,1785,6785,1,1),
('B000133','Matabor kuning GDO','3,5 mm',0,2083,7083,1,1),
('B000134','Matabor kuning GDO','4,0 mm',0,2380,7380,1,1),
('B000135','Matabor kuning GDO','4,5 mm',0,2678,7678,1,1),
('B000136','Matabor kuning GDO','5,0 mm',0,2975,7975,1,1),
('B000137','Matabor kuning GDO','5,5 mm',0,3273,8273,1,1),
('B000138','Matabor kuning GDO','6 mm',0,3570,8570,1,1),
('B000139','Matabor kuning GDO','8 mm',0,6960,11960,1,1),
('B000140','Matex Putty (Dempul Tembok)','4 Kg',0,40759,45759,1,1),
('B000141','Meteran Essen','3 Meter',0,13333,18333,1,1),
('B000142','Meteran Essen','5 Meter',0,21000,26000,1,1),
('B000143','Meteran Essen','7,5 Meter',0,36600,41600,1,1),
('B000144','No Drop','Pail',0,1038035,1130000,1,1),
('B000145','No Drop','Galon',0,211000,235000,1,1),
('B000146','No Drop Bitumen','4 Kilogram',0,162615,167615,1,1),
('B000147','Obeng 2 Way Anata','-',0,13667,20000,1,1),
('B000148','Obeng 2 Way Masutoyo','-',0,5792,12500,1,1),
('B000149','Obeng Bison','4 inci +',0,13333,20000,1,1),
('B000150','Obeng Bison','4 inci -',0,13333,20000,1,1),
('B000151','Overpal Solar','2 inci',0,1417,5000,1,1),
('B000152','Overpal Solar','2 1/2 inci',0,1500,6000,1,1),
('B000153','Overpal Solar','3 inci',0,1583,7000,1,1),
('B000154','Overpal Solar','4 inci',0,1750,7500,1,1),
('B000155','Paku Beton Hitam','20',0,9325,14000,1,1),
('B000156','Paku Beton Hitam','30',0,13350,17500,1,1),
('B000157','Paku Beton Hitam','40',0,22650,28000,1,1),
('B000158','Paku Beton Hitam','50',0,30650,35000,1,1),
('B000159','Paku Beton Hitam','70',0,50600,57500,1,1),
('B000160','Paku Beton Hitam','100',0,89250,105000,1,1),
('B000161','Paku Beton Hitam','120',0,117200,125000,1,1),
('B000162','Palu Tukang Kayu Blitz','0,2',0,22000,30000,1,1),
('B000163','Pelampung Kranz','1/2',0,112375,117375,1,1),
('B000164','Pelampung Kranz','3/4',0,120425,125425,1,1),
('B000165','Pelampung Radar','-',0,46500,51500,1,1),
('B000166','Pintu PVC','Polos',0,162500,210000,1,1),
('B000167','Pintu PVC','Kayu',0,172500,220000,1,1),
('B000168','Pipa Alderon AW','3 inci',0,114964,119964,1,1),
('B000169','Pipa Alderon AW','1/2 inci',0,13802,18802,1,1),
('B000170','Pipa Alderon AW','3/4 inci',0,18673,23673,1,1),
('B000171','Pipa Alderon AW','1 inci',0,25602,30602,1,1),
('B000172','Pipa Alderon AW','4 inci',0,190415,195415,1,1),
('B000173','Pipa Alderon D','4 inci',0,97860,102860,1,1),
('B000174','Pipa Alderon D','6 inci',0,198588,203588,1,1),
('B000175','Pipa Alphinlon','5/8',0,4125,8000,1,1),
('B000176','Pipa Rucika','3/4',0,27000,32000,1,1),
('B000177','Pipa Rucika AW','1 inci',0,38834,43834,1,1),
('B000178','Pipa Rucika AW','3/4',0,27000,32000,1,1),
('B000179','Pylox','0,3 Liter',0,28832,33832,1,1),
('B000180','Q Tex 02','1 pail',0,242550,280000,1,1),
('B000181','Rel Pintu Grandia','1,8 meter',0,150000,155000,1,1),
('B000182','Roda Hordeng Alumunium','-',0,125,200,1,1),
('B000183','Roda SKK TG','1 buah',0,12000,17000,1,1),
('B000184','Sanpolac','1/4 kg',0,18250,25000,1,1),
('B000185','Selang Timbang Cobra','1/4 inci',0,250600,255600,1,1),
('B000186','Sikat Baja','6 baris',0,4167,10000,1,1),
('B000187','Sikat Kuning Eagle','-',0,7083,12000,1,1),
('B000188','Siku Tembok','10x12',0,8542,13542,1,1),
('B000189','Siku Tembok','12x14',0,9583,14583,1,1),
('B000190','Skrup Gipsun','1 inci',0,11500,22500,1,1),
('B000191','Skrup Gypsun','1x6',0,25000,30000,1,1),
('B000192','Spandek','100 x 0,3 x 6 full',0,242702,247702,1,1),
('B000193','Talang Galvalum ','0,25 x 600 x 5',0,684684,689684,1,1),
('B000194','Tang Kombinasi Blitz','6 inci',0,31000,37500,1,1),
('B000195','Tang Lancip Blitz','6 inci',0,31000,37500,1,1),
('B000196','Tang Potong Blitz','6 inci',0,31000,37500,1,1),
('B000197','Tarikan RRC','3 inci',0,758,3000,1,1),
('B000198','Tarikan RRC','4 inci',0,917,4000,1,1),
('B000199','Tarikan RRC','5 inci',0,1750,5000,1,1),
('B000200','Tarikan RRC','6 inci',0,2750,6000,1,1),
('B000201','Tiktok GDO','-',0,1000,3000,1,1),
('B000202','Triplek','8 mili',0,83000,88000,1,1),
('B000203','Triplek','9 mili',0,98000,103000,1,1),
('B000204','Tusen Klep Elfa','3/4 inci',0,4354,9354,1,1),
('B000205','Tutup Hordeng Kotak','-',0,450,1500,1,1),
('B000206','Paku Kayu','5 cm',0,0,0,3,4),
('B000207','Paku Kayu','Triplek / 1cm',0,0,0,3,4),
('B000208','Paku Kayu','2cm',0,0,0,3,4),
('B000209','Paku Kayu','3cm',0,0,0,3,4),
('B000210','Paku Kayu','4cm',0,0,0,3,4),
('B000211','Paku Kayu','7cm',0,0,0,3,4),
('B000212','Paku Kayu','10cm',0,0,0,3,4),
('B000213','Paku Kayu','12cm',0,0,0,3,4),
('B000214','Paku Kayu','15cm',0,0,0,3,4);

UNLOCK TABLES;

/*Table structure for table `barang_keluar` */

DROP TABLE IF EXISTS `barang_keluar`;

CREATE TABLE `barang_keluar` (
  `id_barang_keluar` char(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `barang_id` char(7) NOT NULL,
  `jumlah_keluar` int(11) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `total_jual` int(11) NOT NULL,
  PRIMARY KEY (`id_barang_keluar`),
  KEY `id_user` (`user_id`),
  KEY `barang_id` (`barang_id`),
  CONSTRAINT `barang_keluar_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `barang_keluar_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `barang_keluar` */

LOCK TABLES `barang_keluar` WRITE;

insert  into `barang_keluar`(`id_barang_keluar`,`user_id`,`barang_id`,`jumlah_keluar`,`tanggal_keluar`,`harga_jual`,`total_jual`) values 
('T-BK-23110400001',1,'B000097',3,'2023-11-04',5000,15000),
('T-BK-23110400002',1,'B000097',1,'2023-11-04',5000,5000);

UNLOCK TABLES;

/*Table structure for table `barang_masuk` */

DROP TABLE IF EXISTS `barang_masuk`;

CREATE TABLE `barang_masuk` (
  `id_barang_masuk` char(16) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `barang_id` char(7) NOT NULL,
  `jumlah_masuk` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `total_beli` int(11) NOT NULL,
  PRIMARY KEY (`id_barang_masuk`),
  KEY `id_user` (`user_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `barang_id` (`barang_id`),
  CONSTRAINT `barang_masuk_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `barang_masuk_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `barang_masuk_ibfk_3` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `barang_masuk` */

LOCK TABLES `barang_masuk` WRITE;

insert  into `barang_masuk`(`id_barang_masuk`,`supplier_id`,`user_id`,`barang_id`,`jumlah_masuk`,`tanggal_masuk`,`harga_beli`,`total_beli`) values 
('T-BM-23110300001',1,1,'B000001',12,'2023-11-03',4000,48000),
('T-BM-23110400001',5,1,'B000097',12,'2023-11-04',2917,35004),
('T-BM-23110400002',5,1,'B000098',12,'2023-11-04',5833,69996),
('T-BM-23110400003',5,1,'B000099',12,'2023-11-04',7292,87504),
('T-BM-23110400004',5,1,'B000100',12,'2023-11-04',8750,105000),
('T-BM-23110400005',1,1,'B000004',10,'2023-11-04',3700,37000);

UNLOCK TABLES;

/*Table structure for table `jenis` */

DROP TABLE IF EXISTS `jenis`;

CREATE TABLE `jenis` (
  `id_jenis` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jenis` varchar(20) NOT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `jenis` */

LOCK TABLES `jenis` WRITE;

insert  into `jenis`(`id_jenis`,`nama_jenis`) values 
(1,'Ampelas'),
(2,'Cat Tembok'),
(3,'Cat Kayu dan Besi'),
(4,'Paku'),
(5,'Alat Cat'),
(6,'Baut'),
(7,'Skrup'),
(8,'Gembok'),
(9,'Alat-alat Lampu'),
(10,'Alat-alat Listrik'),
(11,'Kawat'),
(12,'Besi');

UNLOCK TABLES;

/*Table structure for table `satuan` */

DROP TABLE IF EXISTS `satuan`;

CREATE TABLE `satuan` (
  `id_satuan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_satuan` varchar(15) NOT NULL,
  PRIMARY KEY (`id_satuan`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `satuan` */

LOCK TABLES `satuan` WRITE;

insert  into `satuan`(`id_satuan`,`nama_satuan`) values 
(1,'Unit'),
(2,'Pack'),
(3,'Kilo'),
(4,'Galon'),
(7,'Pail'),
(8,'Tzak'),
(9,'Botol'),
(10,'Kaleng'),
(11,'Meter');

UNLOCK TABLES;

/*Table structure for table `supplier` */

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL AUTO_INCREMENT,
  `nama_supplier` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `supplier` */

LOCK TABLES `supplier` WRITE;

insert  into `supplier`(`id_supplier`,`nama_supplier`,`no_telp`,`alamat`) values 
(1,'Sejati','0231202746','Depan Asia Toserba'),
(4,'Rizqie','0','aasd'),
(5,'Haji Fahmi (Ale)','055','Jotun Tengah Tani'),
(6,'Avian Brands','055','Tirta Kencana Pilang');

UNLOCK TABLES;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `role` enum('gudang','admin') NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  `foto` text NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

LOCK TABLES `user` WRITE;

insert  into `user`(`id_user`,`nama`,`username`,`email`,`no_telp`,`role`,`password`,`created_at`,`foto`,`is_active`) values 
(1,'Rizqie Miftah','Rizqie','admin@admin.com','0838628700001','admin','$2y$10$LkWr5QqYiP/3vJixW8dDW.M/gsCwbaBR7fps3ESOG.UnS9OE0dHgS',1568689561,'user.png',1),
(15,'Abang Arip','Bangunan','admin@gmail.com','055','gudang','$2y$10$lf.XEkTWpMZW397v.YdgkOOvxQlmNANo0OUgcGYMrUVGWia0Cjh0y',1699062389,'user.png',0);

UNLOCK TABLES;

/* Trigger structure for table `barang_keluar` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `update_stok_keluar` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `update_stok_keluar` BEFORE INSERT ON `barang_keluar` FOR EACH ROW UPDATE `barang` SET `barang`.`stok` = `barang`.`stok` - NEW.jumlah_keluar WHERE `barang`.`id_barang` = NEW.barang_id */$$


DELIMITER ;

/* Trigger structure for table `barang_masuk` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `update_stok_masuk` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `update_stok_masuk` BEFORE INSERT ON `barang_masuk` FOR EACH ROW UPDATE `barang` SET `barang`.`stok` = `barang`.`stok` + NEW.jumlah_masuk WHERE `barang`.`id_barang` = NEW.barang_id */$$


DELIMITER ;

/* Trigger structure for table `barang_masuk` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `update_harga_beli` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `update_harga_beli` BEFORE INSERT ON `barang_masuk` FOR EACH ROW UPDATE `barang` SET `barang`.`harga_beli` = NEW.harga_beli WHERE `barang`.`id_barang` = NEW.barang_id */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
