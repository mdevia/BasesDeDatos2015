create TABLE cliente (
id_cliente serial,
razonSocial varchar (50),
dniCuil varchar (13),
fechaAlta date,
primary key (id_cliente));

create table factura(
idFac serial,
nroFactura varchar(5),
fecha date,
fechaPago date,
idCliente int,
primary key (idFac),
foreign key (idCliente)
	references cliente (id_cliente)
);

create table producto (
idProd serial,
precioUnitario money,
stockActual int,
primary key (idProd)
);



create table facturaProducto (
idFactura serial,
idProd int,
cant int,
foreign key (idFactura)
	references factura (idFac),
foreign key (idProd)
	references producto(idProd)
);


INSERT INTO "cliente" (razonSocial,dniCuil,fechaAlta) VALUES ('Blandit Industries',27886656,'07/09/14'),('Facilisi Sed Incorporated',32163555,'25/12/14'),('Vulputate Eu Corp.',18728070,'16/11/15'),('Pede Corp.',15859010,'17/03/15'),('Cras Institute',20930030,'13/01/15'),('Malesuada Fringilla Consulting',31609532,'19/07/14'),('Dolor Inc.',17323308,'15/05/16'),('Nec Leo Morbi Inc.',17923173,'01/08/14'),('Nascetur Ridiculus Mus Corporation',36885755,'31/10/15'),('Tristique Senectus Foundation',3773865,'20/10/15');
INSERT INTO "cliente" (razonSocial,dniCuil,fechaAlta) VALUES ('Convallis Ante Lectus Corporation',13549523,'13/01/15'),('Diam Duis LLC',20122706,'23/03/16'),('Nam Nulla Company',28092690,'13/11/14'),('Felis Associates',28671875,'11/07/14'),('Lorem Corp.',36506856,'17/08/14'),('Risus Industries',9939925,'18/03/15'),('Donec PC',26943235,'26/04/15'),('Fermentum Associates',12225164,'30/10/15'),('Lobortis Nisi Nibh Associates',34068164,'13/10/14'),('Aliquam Erat Volutpat Industries',25818129,'17/02/15');
INSERT INTO "cliente" (razonSocial,dniCuil,fechaAlta) VALUES ('Hendrerit Id Ante Limited',19132676,'14/09/15'),('Orci Adipiscing Associates',32521453,'29/11/15'),('At Foundation',12787416,'02/06/16'),('In Tempus Ltd',16219424,'27/02/15'),('Velit In Aliquet Company',19048541,'19/09/15'),('Ligula Nullam LLC',39978333,'22/10/14'),('Convallis Convallis LLP',5502105,'18/07/15'),('Cras Vulputate Velit Foundation',24687892,'23/02/16'),('Morbi Quis Urna LLC',14763820,'10/11/15'),('Auctor Limited',14778364,'06/10/15');
INSERT INTO "cliente" (razonSocial,dniCuil,fechaAlta) VALUES ('Amet LLP',4347381,'10/06/15'),('Purus Nullam Scelerisque LLC',4278707,'15/01/16'),('Libero Proin Sed PC',39375824,'17/09/15'),('Erat Etiam Institute',31188870,'18/01/16'),('Ut Molestie In LLP',24565629,'29/05/15'),('Luctus Et Foundation',20639831,'20/02/15'),('Nibh Dolor Nonummy Institute',25453653,'10/11/15'),('Nam Interdum LLC',1396921,'27/03/15'),('Mauris Sagittis Placerat Inc.',31181827,'21/02/16'),('Ante PC',21348889,'29/03/16');
INSERT INTO "cliente" (razonSocial,dniCuil,fechaAlta) VALUES ('Condimentum Ltd',11254221,'15/04/15'),('Phasellus Ornare Fusce LLC',1775496,'22/09/14'),('Dolor PC',38815639,'01/09/15'),('Nec Metus Institute',16186692,'05/11/14'),('Ipsum Porta Industries',37955696,'18/02/15'),('Enim Curabitur Massa Associates',26642598,'03/03/15'),('Diam Company',20165533,'21/02/16'),('Ligula Tortor Dictum Company',11155764,'13/06/15'),('Vel Company',2545991,'25/09/14'),('Cum Consulting',22471453,'19/08/15');
INSERT INTO "cliente" (razonSocial,dniCuil,fechaAlta) VALUES ('Semper Dui Lectus Institute',6648366,'09/03/16'),('Feugiat Metus Sit Industries',16307789,'18/06/15'),('Nec Diam Duis Company',1119918,'02/08/15'),('Volutpat Corporation',24489422,'27/09/15'),('Ullamcorper Velit In Company',5516941,'15/01/16'),('Aliquam Enim Incorporated',5182739,'16/03/16'),('Tempor Diam Incorporated',16987377,'05/05/15'),('Gravida Aliquam Incorporated',32938476,'28/09/14'),('Tortor At Risus Institute',30304060,'08/03/15'),('Auctor Ltd',27395763,'28/07/15');
INSERT INTO "cliente" (razonSocial,dniCuil,fechaAlta) VALUES ('Nullam Limited',2325143,'09/03/15'),('Tincidunt Adipiscing Mauris Industries',2006429,'09/07/14'),('Ipsum Suspendisse Foundation',12574621,'23/09/14'),('Integer Tincidunt Inc.',29527887,'13/01/16'),('Sem Semper Erat Company',4664159,'01/02/15'),('Cras Industries',22345037,'22/01/15'),('Tempor Est Ac Limited',14763386,'24/05/16'),('Consequat Auctor Nunc Corp.',1426250,'27/06/14'),('Quisque LLC',29513163,'09/10/15'),('Scelerisque Scelerisque Corp.',12675866,'06/10/14');
INSERT INTO "cliente" (razonSocial,dniCuil,fechaAlta) VALUES ('Ullamcorper Corporation',11292731,'14/10/15'),('Orci Ut Incorporated',21475524,'12/07/14'),('Vehicula Risus Nulla Corp.',4210055,'14/03/16'),('Egestas Aliquam Nec Limited',32587821,'27/12/14'),('Interdum Corporation',14840640,'20/05/15'),('Hendrerit Id Associates',23405070,'10/05/16'),('Mauris Sapien Limited',35585801,'05/05/15'),('Sapien Nunc Pulvinar Foundation',5681330,'29/09/14'),('Arcu Vivamus Ltd',1172070,'08/04/15'),('In Ornare Sagittis LLC',32434949,'29/07/14');
INSERT INTO "cliente" (razonSocial,dniCuil,fechaAlta) VALUES ('Tempor Bibendum Corp.',30322396,'28/04/16'),('In Inc.',26296741,'08/09/15'),('Libero LLP',3548016,'13/05/15'),('Cum Corporation',28633577,'05/11/15'),('Etiam Imperdiet Dictum LLP',13811616,'12/03/16'),('Dictum Phasellus In Foundation',21886126,'18/03/16'),('Congue Corporation',20077148,'25/08/15'),('Non Hendrerit Limited',16844342,'28/05/15'),('Ut Tincidunt Consulting',13886604,'20/01/16'),('Nullam Suscipit Industries',13375818,'15/09/14');
INSERT INTO "cliente" (razonSocial,dniCuil,fechaAlta) VALUES ('Nunc Ltd',6664551,'10/08/14'),('Lacinia Sed Congue Associates',39244210,'20/08/14'),('Tempus Eu Ligula Inc.',8060797,'16/05/15'),('Aliquet Diam Sed Limited',38890350,'27/07/15'),('Lobortis Class Aptent Associates',16269263,'20/12/15'),('Cum Sociis Natoque Industries',28754423,'02/12/15'),('Nonummy Ultricies Ornare Consulting',17347437,'11/09/14'),('Cum Sociis Natoque Industries',1837347,'25/05/15'),('Sollicitudin LLP',5476954,'05/05/15'),('Odio Institute',6753474,'25/09/14');

INSERT INTO "factura" (nroFactura,fecha,fechaPago,idCliente) VALUES (122,'24/06/2014','24/06/2014',35),(582,'24/06/2014','24/06/2014',89),(683,'24/06/2014','24/06/2014',29),(402,'24/06/2014','24/06/2014',45),(399,'24/06/2014','24/06/2014',10),(776,'24/06/2014','24/06/2014',84),(862,'24/06/2014','24/06/2014',56),(435,'24/06/2014','24/06/2014',25),(855,'24/06/2014','24/06/2014',48),(573,'24/06/2014','24/06/2014',7);
INSERT INTO "factura" (nroFactura,fecha,fechaPago,idCliente) VALUES (350,'24/06/2014','24/06/2014',51),(864,'24/06/2014','24/06/2014',84),(581,'24/06/2014','24/06/2014',50),(477,'24/06/2014','24/06/2014',23),(456,'24/06/2014','24/06/2014',15),(331,'24/06/2014','24/06/2014',68),(570,'24/06/2014','24/06/2014',56),(530,'24/06/2014','24/06/2014',9),(813,'24/06/2014','24/06/2014',82),(351,'24/06/2014','24/06/2014',3);
INSERT INTO "factura" (nroFactura,fecha,fechaPago,idCliente) VALUES (292,'24/06/2014','24/06/2014',17),(509,'24/06/2014','24/06/2014',32),(179,'24/06/2014','24/06/2014',63),(153,'24/06/2014','24/06/2014',51),(509,'24/06/2014','24/06/2014',84),(885,'24/06/2014','24/06/2014',48),(528,'24/06/2014','24/06/2014',96),(763,'24/06/2014','24/06/2014',96),(542,'24/06/2014','24/06/2014',72),(638,'24/06/2014','24/06/2014',7);
INSERT INTO "factura" (nroFactura,fecha,fechaPago,idCliente) VALUES (206,'24/06/2014','24/06/2014',5),(696,'24/06/2014','24/06/2014',23),(288,'24/06/2014','24/06/2014',41),(975,'24/06/2014','24/06/2014',6),(333,'24/06/2014','24/06/2014',51),(103,'24/06/2014','24/06/2014',87),(109,'24/06/2014','24/06/2014',50),(908,'24/06/2014','24/06/2014',49),(358,'24/06/2014','24/06/2014',3),(703,'24/06/2014','24/06/2014',10);
INSERT INTO "factura" (nroFactura,fecha,fechaPago,idCliente) VALUES (229,'24/06/2014','24/06/2014',99),(446,'24/06/2014','24/06/2014',16),(241,'24/06/2014','24/06/2014',71),(220,'24/06/2014','24/06/2014',21),(630,'24/06/2014','24/06/2014',41),(117,'24/06/2014','24/06/2014',67),(660,'24/06/2014','24/06/2014',81),(744,'24/06/2014','24/06/2014',23),(896,'24/06/2014','24/06/2014',58),(276,'24/06/2014','24/06/2014',71);
INSERT INTO "factura" (nroFactura,fecha,fechaPago,idCliente) VALUES (1000,'24/06/2014','24/06/2014',97),(397,'24/06/2014','24/06/2014',53),(177,'24/06/2014','24/06/2014',13),(545,'24/06/2014','24/06/2014',5),(137,'24/06/2014','24/06/2014',33),(680,'24/06/2014','24/06/2014',31),(201,'24/06/2014','24/06/2014',59),(693,'24/06/2014','24/06/2014',31),(633,'24/06/2014','24/06/2014',6),(241,'24/06/2014','24/06/2014',49);
INSERT INTO "factura" (nroFactura,fecha,fechaPago,idCliente) VALUES (853,'24/06/2014','24/06/2014',57),(649,'24/06/2014','24/06/2014',85),(110,'24/06/2014','24/06/2014',1),(606,'24/06/2014','24/06/2014',55),(513,'24/06/2014','24/06/2014',36),(815,'24/06/2014','24/06/2014',49),(496,'24/06/2014','24/06/2014',89),(705,'24/06/2014','24/06/2014',56),(470,'24/06/2014','24/06/2014',56),(820,'24/06/2014','24/06/2014',95);
INSERT INTO "factura" (nroFactura,fecha,fechaPago,idCliente) VALUES (831,'24/06/2014','24/06/2014',40),(447,'24/06/2014','24/06/2014',16),(532,'24/06/2014','24/06/2014',32),(122,'24/06/2014','24/06/2014',27),(892,'24/06/2014','24/06/2014',93),(648,'24/06/2014','24/06/2014',34),(320,'24/06/2014','24/06/2014',75),(225,'24/06/2014','24/06/2014',46),(620,'24/06/2014','24/06/2014',60),(708,'24/06/2014','24/06/2014',16);
INSERT INTO "factura" (nroFactura,fecha,fechaPago,idCliente) VALUES (656,'24/06/2014','24/06/2014',70),(245,'24/06/2014','24/06/2014',57),(828,'24/06/2014','24/06/2014',5),(206,'24/06/2014','24/06/2014',71),(552,'24/06/2014','24/06/2014',65),(662,'24/06/2014','24/06/2014',53),(948,'24/06/2014','24/06/2014',58),(971,'24/06/2014','24/06/2014',92),(166,'24/06/2014','24/06/2014',49),(693,'24/06/2014','24/06/2014',55);
INSERT INTO "factura" (nroFactura,fecha,fechaPago,idCliente) VALUES (385,'24/06/2014','24/06/2014',35),(953,'24/06/2014','24/06/2014',36),(215,'24/06/2014','24/06/2014',37),(678,'24/06/2014','24/06/2014',33),(416,'24/06/2014','24/06/2014',1),(254,'24/06/2014','24/06/2014',86),(267,'24/06/2014','24/06/2014',83),(984,'24/06/2014','24/06/2014',32),(987,'24/06/2014','24/06/2014',6),(518,'24/06/2014','24/06/2014',62);

INSERT INTO "producto" (precioUnitario,stockActual) VALUES ('$506.24',110),('$900.24',238),('$248.86',220),('$098.04',263),('$108.80',109),('$610.34',58),('$119.47',39),('$441.44',38),('$343.97',205),('$368.14',70);
INSERT INTO "producto" (precioUnitario,stockActual) VALUES ('$253.63',99),('$404.34',35),('$068.02',99),('$020.39',101),('$674.24',5),('$162.78',186),('$067.90',158),('$296.24',7),('$832.30',147),('$982.57',206);
INSERT INTO "producto" (precioUnitario,stockActual) VALUES ('$835.01',72),('$633.32',217),('$559.35',241),('$533.18',219),('$141.65',48),('$539.94',272),('$088.65',130),('$389.50',81),('$440.47',187),('$808.08',271);
INSERT INTO "producto" (precioUnitario,stockActual) VALUES ('$481.81',73),('$549.36',71),('$734.19',240),('$116.42',202),('$776.22',30),('$629.91',19),('$487.16',160),('$812.71',148),('$392.10',290),('$351.25',62);
INSERT INTO "producto" (precioUnitario,stockActual) VALUES ('$172.18',65),('$773.72',87),('$889.83',18),('$644.10',108),('$939.79',70),('$974.03',89),('$981.08',33),('$102.22',216),('$818.64',89),('$77.98',216);
INSERT INTO "producto" (precioUnitario,stockActual) VALUES ('$237.00',207),('$694.04',33),('$680.49',261),('$823.88',1),('$932.62',216),('$224.27',169),('$775.11',277),('$147.64',89),('$204.09',178),('$657.66',253);
INSERT INTO "producto" (precioUnitario,stockActual) VALUES ('$255.60',260),('$706.60',46),('$876.69',184),('$839.04',173),('$110.32',141),('$117.29',217),('$707.10',225),('$583.69',261),('$321.07',244),('$773.88',40);
INSERT INTO "producto" (precioUnitario,stockActual) VALUES ('$940.53',31),('$883.01',237),('$263.19',55),('$738.64',88),('$217.86',179),('$718.79',58),('$846.86',98),('$111.59',254),('$424.05',81),('$797.28',190);
INSERT INTO "producto" (precioUnitario,stockActual) VALUES ('$364.94',229),('$403.56',128),('$738.91',202),('$459.15',99),('$208.62',164),('$675.58',14),('$049.78',212),('$633.64',54),('$844.86',209),('$798.15',213);
INSERT INTO "producto" (precioUnitario,stockActual) VALUES ('$886.71',112),('$909.74',3),('$913.09',106),('$268.92',45),('$254.34',173),('$163.05',239),('$537.48',237),('$521.54',232),('$199.30',257),('$683.30',253);

INSERT INTO "facturaProducto" (idProd,cant) VALUES (1,300),(2,114),(3,130),(4,177),(5,121),(6,138),(7,8),(8,244),(9,111),(10,211);
INSERT INTO "facturaProducto" (idProd,cant) VALUES (11,159),(12,93),(13,211),(14,9),(15,130),(16,202),(17,16),(18,127),(19,293),(20,16);
INSERT INTO "facturaProducto" (idProd,cant) VALUES (21,68),(22,6),(23,88),(24,91),(25,250),(26,3),(27,81),(28,154),(29,281),(30,1);
INSERT INTO "facturaProducto" (idProd,cant) VALUES (31,7),(32,281),(33,115),(34,189),(35,244),(36,149),(37,115),(38,143),(39,108),(40,201);
INSERT INTO "facturaProducto" (idProd,cant) VALUES (41,244),(42,74),(43,73),(44,189),(45,291),(46,226),(47,234),(48,139),(49,17),(50,90);
INSERT INTO "facturaProducto" (idProd,cant) VALUES (51,1),(52,148),(53,44),(54,66),(55,26),(56,268),(57,69),(58,125),(59,247),(60,141);
INSERT INTO "facturaProducto" (idProd,cant) VALUES (61,138),(62,267),(63,8),(64,171),(65,27),(66,250),(67,154),(68,79),(69,285),(70,211);
INSERT INTO "facturaProducto" (idProd,cant) VALUES (71,145),(72,21),(73,95),(74,158),(75,145),(76,120),(77,134),(78,130),(79,126),(80,149);
INSERT INTO "facturaProducto" (idProd,cant) VALUES (81,63),(82,50),(83,32),(84,118),(85,22),(86,300),(87,168),(88,190),(89,246),(90,109);
INSERT INTO "facturaProducto" (idProd,cant) VALUES (91,255),(92,225),(93,33),(94,190),(95,17),(96,153),(97,103),(98,86),(99,290),(100,192);
