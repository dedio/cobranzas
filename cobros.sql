/*
 * cobros.sql
 * 
 * Copyright 2019 Juanmanuel <jmdedio@jgmail.com>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */

DROP TABLE IF EXISTS "cobros";

CREATE TABLE "cobros" (
  id SERIAL PRIMARY KEY,
  id integer NULL,
  fecha varchar(255),
  importe varchar(100) default NULL,
  doc_id integer NULL
);

INSERT INTO "cobros" 
    (id,fecha,importe,doc_id) 
VALUES 
    (1,'1580752403','$378.33',33),
    (2,'1588312739','$741.73',43),
    (3,'1575001748','$517.12',10),
    (4,'1582060612','$557.32',38),
    (5,'1603002780','$54.83',24),
    (6,'1584676344','$572.05',21),
    (7,'1596092044','$497.74',20),
    (8,'1547663327','$533.07',45),
    (9,'1561511421','$238.77',41),
    (10,'1547847629','$672.65',43),
    (11,'1565731156','$544.03',1),
    (12,'1556210461','$890.92',48),
    (13,'1597980792','$378.91',26),
    (14,'1584712177','$70.87',31),
    (15,'1582524961','$848.63',1),
    (16,'1586353327','$817.88',11),
    (17,'1586163190','$866.05',40),
    (18,'1605167341','$933.61',16),
    (19,'1578387113','$87.02',14),
    (20,'1542906931','$65.97',46),
    (21,'1572515341','$274.91',42),
    (22,'1600840204','$590.79',47),
    (23,'1578952784','$705.28',8),
    (24,'1555374656','$304.51',28),
    (25,'1585725225','$554.52',40),
    (26,'1543834709','$952.83',4),
    (27,'1574401565','$768.81',12),
    (28,'1544027240','$219.53',7),
    (29,'1545550109','$765.31',8),
    (30,'1569345625','$620.66',27),
    (31,'1569001583','$787.52',13),
    (32,'1566633686','$423.82',34),
    (33,'1546163220','$779.27',42),
    (34,'1604788332','$331.89',22),
    (35,'1589951079','$690.28',2),
    (36,'1597653486','$553.57',20),
    (37,'1553683617','$520.06',26).
    (38,'1592167962','$320.47',43),
    (39,'1571725179','$683.12',23),
    (40,'1600288488','$347.63',27),
    (41,'1588616736','$592.68',24),
    (42,'1602033520','$341.59',9),
    (43,'1566493815','$192.51',21),
    (44,'1585364639','$688.25',46),
    (45,'1599291633','$750.10',6),
    (46,'1559801324','$476.26',25),
    (47,'1592861852','$885.60',35),
    (48,'1551713152','$701.42',36),
    (49,'1600430683','$569.79',21),
    (50,'1602776698','$833.69',45),
    (51,'1568400296','$76.74',35),
    (52,'1546702161','$208.10',30),
    (53,'1592363654','$653.54',16),
    (54,'1582231858','$733.33',47),
    (55,'1571982162','$115.49',3),
    (56,'1600983947','$52.07',9),
    (57,'1569397555','$481.99',37),
    (58,'1605536545','$286.81',42),
    (59,'1548857282','$964.77',39),
    (60,'1564409428','$628.06',26),
    (61,'1578483418','$361.65',30),
    (62,'1566352200','$263.16',49),
    (63,'1569461748','$858.56',26),
    (64,'1563671782','$893.16',17),
    (65,'1584125195','$278.44',43),
    (66,'1605149107','$203.05',43),
    (67,'1584457037','$316.07',13),
    (68,'1577823633','$857.87',49),
    (69,'1575438953','$75.42',21),
    (70,'1600120023','$412.03',5),
    (71,'1574605801','$306.95',43),
    (72,'1551551824','$408.31',9),
    (73,'1547277652','$962.50',10),
    (74,'1570883875','$27.76',40),
    (75,'1605252331','$278.75',42),
    (76,'1542507738','$114.74',17),
    (77,'1576847163','$881.35',50),
    (78,'1562686387','$864.89',14),
    (79,'1563553717','$422.93',25),
    (80,'1570562167','$862.60',17),
    (81,'1564726631','$526.97',7),
    (82,'1594303212','$774.93',45),
    (83,'1553681138','$814.09',48),
    (84,'1549498584','$220.32',29),
    (85,'1595430738','$369.11',3),
    (86,'1570358855','$211.45',25),
    (87,'1555169337','$245.28',34),
    (88,'1574618673','$610.25',36),
    (89,'1588469737','$938.37',35),
    (90,'1570691316','$179.88',34),
    (91,'1561018512','$26.56',45),
    (92,'1586939585','$174.84',50),
    (93,'1599919726','$549.19',24),
    (94,'1561833209','$870.15',45),
    (95,'1565146877','$301.18',27),
    (96,'1547705736','$586.10',20),
    (97,'1554703034','$170.74',50),
    (98,'1601787887','$254.24',19),
    (99,'1545344265','$609.07',40),
    (100,'1556755282','$636.62',15)
;