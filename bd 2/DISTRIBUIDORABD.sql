/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.20-MariaDB : Database - distribuidora
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`distribuidora` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `distribuidora`;

/*Table structure for table `ciudad` */

DROP TABLE IF EXISTS `ciudad`;

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL,
  `detalle` varchar(255) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  PRIMARY KEY (`id_ciudad`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ciudad` */

insert  into `ciudad`(`id_ciudad`,`detalle`,`id_departamento`) values 
(1,'Guangping',1),
(2,'Taoyuan',2),
(3,'Villa Florida',3),
(4,'Szeged',4),
(5,'Jiukeng',5),
(6,'Strasbourg',6),
(7,'Tonggu',7),
(8,'Courelas Bravas',8),
(9,'Ikšķile',9),
(10,'Chambellan',10),
(11,'Datangzhuang',11),
(12,'Catanauan',12),
(13,'Novomykolayivka',13),
(14,'Xinsheng',14),
(15,'Kosan',15),
(16,'General Manuel J. Campos',16),
(17,'Anjozorobe',17),
(18,'Qal‘ah-ye Fārsī',18),
(19,'Sarrat',19),
(20,'Antanifotsy',20),
(21,'Nowa Sól',21),
(22,'Sakassou',22),
(23,'Yuqi',23),
(24,'Miki',24),
(25,'Pujilí',25),
(26,'Beigang',26),
(27,'Brušperk',27),
(28,'Sandy Bay',28),
(29,'Amangarh',29),
(30,'Chkalov',30),
(31,'Staraya Ladoga',31),
(32,'Novocheboksarsk',32),
(33,'Ryazanskiy',33),
(34,'Stąporków',34),
(35,'Campina Grande do Sul',35),
(36,'Meïganga',36),
(37,'Touama',37),
(38,'Doghs',38),
(39,'Gulod',39),
(40,'Lipljan',40),
(41,'Wujiao',41),
(42,'Leigongjian',42),
(43,'Kamaishi',43),
(44,'Žlutice',44),
(45,'Berlin',45),
(46,'Ueki',46),
(47,'Sanxi',47),
(48,'Yangcun',48),
(49,'Polanka Wielka',49),
(50,'Alquerubim',50);

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_sucursales` int(11) NOT NULL,
  `nombre_cliente` varchar(255) NOT NULL,
  `Nit_cc` bigint(20) NOT NULL,
  `nombre_representante` varchar(255) NOT NULL,
  `contacto_principal` bigint(20) NOT NULL,
  `id_cliente_sucursal` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente_sucursal` (`id_cliente_sucursal`),
  KEY `id_sucursales` (`id_sucursales`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

/*Data for the table `clientes` */

insert  into `clientes`(`id`,`id_sucursales`,`nombre_cliente`,`Nit_cc`,`nombre_representante`,`contacto_principal`,`id_cliente_sucursal`) values 
(1,1,'Van Gandrich',6350663780,'Anthia Lamming',9606628965,1),
(2,2,'Hannah Strank',5072926281,'Nert Witty',9861007326,2),
(3,3,'Nathanael Tinkham',577391291,'Simeon Tollit',7090833542,3),
(4,4,'William Smalman',4798100242,'Gustave Gert',7342656801,4),
(5,5,'Harmon Bellini',1208981315,'Jameson Tizzard',9683049729,5),
(6,6,'Irwinn Pitone',1191266079,'Jeremie Lindsey',5754428871,6),
(7,7,'Doug Garrud',4632698369,'Sherwin Kuzma',7004251454,7),
(8,8,'Candy Thunnerclef',6421622240,'Florette Ramas',6531725109,8),
(9,9,'Gardie Cosans',1889689335,'Reuven Jumeau',3092450965,9),
(10,10,'Lacie Kuhlmey',1612031099,'Merrie Ghidini',8797518514,10),
(11,11,'Hamlin Coldbreath',441919952,'Robb Carlton',5401182392,11),
(12,12,'Jaclyn Shurville',9324712764,'Amberly Cotelard',8477264481,12),
(13,13,'Ferrell Honnan',1220451126,'Ruperto Kays',6898270826,13),
(14,14,'Nataline Jilliss',5029841962,'Johnna Abrahami',9040925224,14),
(15,15,'Corny Carse',2952947740,'Judah Le Leu',9264526226,15),
(16,16,'Elene Greeve',6425878010,'Charity O\'Scanlon',5831515834,16),
(17,17,'Leonerd Sloat',8881210533,'Benjie Philip',3747164994,17),
(18,18,'Nicoline Healy',2083314220,'Kalila Morshead',8739062651,18),
(19,19,'Barney Plant',3421030510,'Marv Ropartz',1016116411,19),
(20,20,'Vince Proudman',3149551056,'Toddie Dombrell',8409361779,20),
(21,21,'Quincy Pearne',4053914698,'Guglielmo Linsay',5180146356,21),
(22,22,'Neville Slad',8876305831,'Tallie Downs',4378938936,22),
(23,23,'Hymie Capner',5884548222,'Tailor Ogg',1768573689,23),
(24,24,'Iormina Geharke',1546584749,'Constanta Bang',6719779141,24),
(25,25,'Ninon Culpan',1292202521,'Noelani Reolfo',2565894090,25),
(26,26,'Lacee Pennino',8921728511,'Hesther Snoxell',2706944129,26),
(27,27,'Tadio Cossum',1922148369,'Andonis Dolman',9285545963,27),
(28,28,'Roseanne Mathison',9470289439,'Stacee Trudgeon',4856800558,28),
(29,29,'Joaquin Creaven',4278926715,'Lowell Bolgar',5452786937,29),
(30,30,'Lexi Proven',7296803045,'Tracee Sculley',8719565712,30),
(31,31,'Fanechka Liell',449604241,'Henryetta Ravelus',7709314570,31),
(32,32,'Lucretia Rabley',4047670448,'Cordula Pothergill',6700658098,32),
(33,33,'Linzy Girsch',1366752252,'Holly Tuckerman',2015165053,33),
(34,34,'Daniel Soggee',4079160895,'Barnabe Earngy',4345602122,34),
(35,35,'Ibbie Matfield',7090864995,'Brit Rhys',4572428239,35),
(36,36,'Skipton O\' Cloney',6514747310,'Nels Maltby',2405296616,36),
(37,37,'Amalea Keenan',7344031485,'Odelinda Klesl',5093872342,37),
(38,38,'Ric Ellison',5341066847,'Arturo Pawlata',389199249,38),
(39,39,'Marjory Swinney',4950568795,'Clarice Skelding',1419747096,39),
(40,40,'Garnet Frill',70844003,'Gavrielle Kochl',7500981384,40),
(41,41,'Hayward Osgardby',8353560615,'Shane Heeks',318247232,41),
(42,42,'Roddy Shilton',4160611826,'Yanaton Rois',3686019035,42),
(43,43,'Mignon Duffyn',562945539,'Magda Theobald',5512135988,43),
(44,44,'Kyrstin Fullalove',4133695836,'Jennica Ricketts',6253265911,44),
(45,45,'Nathanil Hallin',2722333899,'Charlton Rous',6242474220,45),
(46,46,'Noble Edinborough',7391554405,'Freedman Jacobsen',2386330141,46),
(47,47,'Luciano Geraudy',5142212924,'Rory Enoksson',4475466296,47),
(48,48,'Flora Sartin',7088700301,'Reyna Easterfield',4175379193,48),
(49,49,'Ryann Klaussen',5893011848,'Marcelline Kamien',9067017000,49),
(50,50,'Malory Cubbon',3917794101,'Vickie Noone',661270300,50);

/*Table structure for table `departamento` */

DROP TABLE IF EXISTS `departamento`;

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `id_paises` int(11) NOT NULL,
  `nombre_departamento` varchar(255) NOT NULL,
  PRIMARY KEY (`id_departamento`),
  KEY `id_paises` (`id_paises`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `departamento` */

insert  into `departamento`(`id_departamento`,`id_paises`,`nombre_departamento`) values 
(1,1,'Human Resources'),
(2,2,'Accounting'),
(3,3,'Sales'),
(4,4,'Support'),
(5,5,'Services'),
(6,6,'Research and Development'),
(7,7,'Sales'),
(8,8,'Sales'),
(9,9,'Accounting'),
(10,10,'Marketing'),
(11,11,'Support'),
(12,12,'Accounting'),
(13,13,'Services'),
(14,14,'Accounting'),
(15,15,'Marketing'),
(16,16,'Human Resources'),
(17,17,'Engineering'),
(18,18,'Human Resources'),
(19,19,'Product Management'),
(20,20,'Legal'),
(21,21,'Accounting'),
(22,22,'Support'),
(23,23,'Sales'),
(24,24,'Marketing'),
(25,25,'Accounting'),
(26,26,'Marketing'),
(27,27,'Services'),
(28,28,'Research and Development'),
(29,29,'Product Management'),
(30,30,'Services'),
(31,31,'Training'),
(32,32,'Business Development'),
(33,33,'Research and Development'),
(34,34,'Accounting'),
(35,35,'Human Resources'),
(36,36,'Sales'),
(37,37,'Legal'),
(38,38,'Training'),
(39,39,'Support'),
(40,40,'Accounting'),
(41,41,'Human Resources'),
(42,42,'Legal'),
(43,43,'Training'),
(44,44,'Support'),
(45,45,'Sales'),
(46,46,'Legal'),
(47,47,'Research and Development'),
(48,48,'Product Management'),
(49,49,'Training'),
(50,50,'Services');

/*Table structure for table `paises` */

DROP TABLE IF EXISTS `paises`;

CREATE TABLE `paises` (
  `id_paises` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(255) NOT NULL,
  PRIMARY KEY (`id_paises`),
  CONSTRAINT `paises_ibfk_1` FOREIGN KEY (`id_paises`) REFERENCES `departamento` (`id_paises`)
) ENGINE=InnoDB AUTO_INCREMENT=513 DEFAULT CHARSET=utf8;

/*Data for the table `paises` */

insert  into `paises`(`id_paises`,`detalle`) values 
(1,'Lithuania'),
(2,'Philippines'),
(3,'Montenegro'),
(4,'China'),
(5,'Peru'),
(6,'Syria'),
(7,'Vietnam'),
(8,'Indonesia'),
(9,'Trinidad and Tobago'),
(10,'Indonesia'),
(11,'Russia'),
(12,'Poland'),
(13,'Indonesia'),
(14,'China'),
(15,'Armenia'),
(16,'China'),
(17,'Indonesia'),
(18,'Thailand'),
(19,'South Korea'),
(20,'Belarus'),
(21,'Philippines'),
(22,'France'),
(23,'Greece'),
(24,'Japan'),
(25,'Indonesia'),
(26,'Ukraine'),
(27,'Indonesia'),
(28,'Kenya'),
(29,'Russia'),
(30,'Argentina'),
(31,'Brazil'),
(32,'France'),
(33,'Russia'),
(34,'Brazil'),
(35,'Indonesia'),
(36,'Brazil'),
(37,'Indonesia'),
(38,'Uganda'),
(39,'Czech Republic'),
(40,'Finland'),
(41,'Spain'),
(42,'Poland'),
(43,'Mexico'),
(44,'Iraq'),
(45,'Indonesia'),
(46,'China'),
(47,'Greece'),
(48,'China'),
(49,'China'),
(50,'China');

/*Table structure for table `personal` */

DROP TABLE IF EXISTS `personal`;

CREATE TABLE `personal` (
  `id_personal` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id_personal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `personal` */

insert  into `personal`(`id_personal`,`nombre`) values 
(1,'Georgine Ginni'),
(2,'Harry Weitzel'),
(3,'Mano Petkens'),
(4,'Gillan Burley'),
(5,'Hamilton Gowrich'),
(6,'Ragnar Deaville'),
(7,'Letti Simonich'),
(8,'Jorey Grestye'),
(9,'Shanon Marritt'),
(10,'Sheelagh Hadlington'),
(11,'Rosette Lismore'),
(12,'Junie Camosso'),
(13,'Nate Kondratowicz'),
(14,'Blancha McGiveen'),
(15,'Kiah Spacey'),
(16,'Roda Aspell'),
(17,'Terry Ottey'),
(18,'Christina Semonin'),
(19,'Aurelie Fannin'),
(20,'Prudy Magne'),
(21,'Adolpho Ratchford'),
(22,'Valentino Ismirnioglou'),
(23,'Ave Ghione'),
(24,'Scarface Bickers'),
(25,'Kayle Kilpatrick'),
(26,'Lesya Tesmond'),
(27,'Kippar Dreher'),
(28,'Gram Brennon'),
(29,'Catha Dacey'),
(30,'Patin Longmire'),
(31,'Rees Jent'),
(32,'Ailey Petrol'),
(33,'Austin Gennrich'),
(34,'Valentino Arniz'),
(35,'Glynn Caherny'),
(36,'Jacquenette Geerdts'),
(37,'Bud Phippen'),
(38,'Jose Eldershaw'),
(39,'Orlando Martusewicz'),
(40,'Belva Mandal'),
(41,'Farah Jirek'),
(42,'Alexine Aplin'),
(43,'Tasia Le Grice'),
(44,'Sarette Verring'),
(45,'Hernando Battersby'),
(46,'Dave Tommei'),
(47,'Evangelia Allenson'),
(48,'Kendall Binge'),
(49,'Francesco Veall'),
(50,'Cullan Frankis');

/*Table structure for table `personal_departamento` */

DROP TABLE IF EXISTS `personal_departamento`;

CREATE TABLE `personal_departamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_personal` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_personal` (`id_personal`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `personal_departamento_ibfk_1` FOREIGN KEY (`id_personal`) REFERENCES `personal` (`id_personal`),
  CONSTRAINT `personal_departamento_ibfk_2` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

/*Data for the table `personal_departamento` */

insert  into `personal_departamento`(`id`,`id_personal`,`id_departamento`) values 
(1,1,1),
(2,2,2),
(3,3,3),
(4,4,4),
(5,5,5),
(6,6,6),
(7,7,7),
(8,8,8),
(9,9,9),
(10,10,10),
(11,11,11),
(12,12,12),
(13,13,13),
(14,14,14),
(15,15,15),
(16,16,16),
(17,17,17),
(18,18,18),
(19,19,19),
(20,20,20),
(21,21,21),
(22,22,22),
(23,23,23),
(24,24,24),
(25,25,25),
(26,26,26),
(27,27,27),
(28,28,28),
(29,29,29),
(30,30,30),
(31,31,31),
(32,32,32),
(33,33,33),
(34,34,34),
(35,35,35),
(36,36,36),
(37,37,37),
(38,38,38),
(39,39,39),
(40,40,40),
(41,41,41),
(42,42,42),
(43,43,43),
(44,44,44),
(45,45,45),
(46,46,46),
(47,47,47),
(48,48,48),
(49,49,49),
(50,50,50);

/*Table structure for table `sucursales` */

DROP TABLE IF EXISTS `sucursales`;

CREATE TABLE `sucursales` (
  `id_sucursales` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_encargado` varchar(225) NOT NULL,
  `numero_contacto` varchar(50) NOT NULL,
  `direccion` varchar(225) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_personal` int(11) NOT NULL,
  PRIMARY KEY (`id_sucursales`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_ciudad` (`id_ciudad`),
  CONSTRAINT `sucursales_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  CONSTRAINT `sucursales_ibfk_3` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

/*Data for the table `sucursales` */

insert  into `sucursales`(`id_sucursales`,`nombre_encargado`,`numero_contacto`,`direccion`,`id_ciudad`,`id_cliente`,`id_personal`) values 
(1,'Enos Santoro','4188259485.000000','81 Arkansas Place',1,1,1),
(2,'Renaldo Girone','8622890643.000000','7 Thackeray Alley',2,2,2),
(3,'Dolly Blagden','4907137753.000000','0 Parkside Hill',3,3,3),
(4,'Addy Saywood','5291176326.000000','917 Amoth Trail',4,4,4),
(5,'Reba Berringer','7988500015.000000','8338 Ryan Trail',5,5,5),
(6,'Lem Tithecott','6717175842.000000','64 Sloan Parkway',6,6,6),
(7,'Quint Canfield','8276904319.000000','98438 Manufacturers Street',7,7,7),
(8,'Law Emery','7086429910.000000','85485 Village Green Street',8,8,8),
(9,'Dino Farady','7518445883.000000','24468 Dottie Center',9,9,9),
(10,'Maye Coda','2193630682.000000','8 Tennessee Hill',10,10,10),
(11,'Claresta Serjeant','9800235833.000000','49 Dunning Road',11,11,11),
(12,'Davidde Corah','5606461641.000000','18216 Cardinal Road',12,12,12),
(13,'Northrop Korejs','2108502661.000000','534 Bay Alley',13,13,13),
(14,'Starlene Schroter','7660465481.000000','69012 Namekagon Drive',14,14,14),
(15,'Dasi Aynold','4399773103.000000','7674 Eagan Crossing',15,15,15),
(16,'Filip Glading','9882561543.000000','5241 Superior Center',16,16,16),
(17,'Shanna Cretney','6095363608.000000','37219 Loomis Plaza',17,17,17),
(18,'Emory Cubbino','8540303310.000000','5 Vermont Drive',18,18,18),
(19,'Granville Behagg','2895907641.000000','1 Burrows Alley',19,19,0),
(20,'Nicki Tailby','5790299709.000000','464 Kensington Point',20,20,0),
(21,'Becka De Hailes','9717903727.000000','5101 Kropf Drive',21,21,0),
(22,'Deb Dargan','1746179147.000000','6611 Duke Lane',22,22,0),
(23,'Willis Morrad','7432149240.000000','1478 Longview Pass',23,23,0),
(24,'Elsworth Bugs','302353399.000000','70905 Luster Hill',24,24,0),
(25,'Carmine Wallbutton','4489622198.000000','65052 Jenna Crossing',25,25,0),
(26,'Tome Danielsky','8077718981.000000','83838 Little Fleur Drive',26,26,0),
(27,'Melvin Riddel','6670857799.000000','5924 Mockingbird Way',27,27,0),
(28,'Shurwood Woolerton','6876947645.000000','3 Golden Leaf Lane',28,28,0),
(29,'Willie Crabb','7309697839.000000','3465 Ludington Park',29,29,0),
(30,'Othilie Pietrasik','8847726646.000000','1 Ronald Regan Point',30,30,0),
(31,'Cristin Beney','2941198628.000000','3 Erie Trail',31,31,0),
(32,'Sukey Cunniff','1573648558.000000','04342 Mosinee Place',32,32,0),
(33,'Freddi Axston','1348648619.000000','5623 Cordelia Terrace',33,33,0),
(34,'Avis Marr','9371696281.000000','552 Northwestern Way',34,34,0),
(35,'Herculie Mugg','8734135057.000000','33 Lakewood Gardens Parkway',35,35,0),
(36,'Fania De Hailes','5189449564.000000','9220 Brentwood Place',36,36,0),
(37,'Dyna Jarvis','881068845.000000','29 Eggendart Way',37,37,0),
(38,'Guilbert Gosselin','2749977932.000000','33354 Service Point',38,38,0),
(39,'Reinhard Wayon','7719665236.000000','859 Delaware Junction',39,39,0),
(40,'Dorella Pirrey','6214815396.000000','9 Grayhawk Street',40,40,0),
(41,'Indira McDugal','9417641123.000000','28 Elka Terrace',41,41,0),
(42,'Avery Fanti','5448333508.000000','8906 Grayhawk Drive',42,42,0),
(43,'Lucila Minall','9189203321.000000','66 Karstens Pass',43,43,0),
(44,'Siegfried Lubeck','2077704799.000000','45212 Bartillon Park',44,44,0),
(45,'Ailina Snaddon','2945291908.000000','0136 Orin Place',45,45,0),
(46,'Eda Schofield','5172630007.000000','681 Tennyson Point',46,46,0),
(47,'Taryn Dentith','2262684103.000000','77 Pine View Way',47,47,0),
(48,'Merrie Lowrey','2815898764.000000','363 Basil Terrace',48,48,0),
(49,'Tadeo Janczyk','11571373.000000','44 Lakewood Gardens Place',49,49,0),
(50,'Marten Reschke','7667778833.000000','44 Golf Course Road',50,50,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
