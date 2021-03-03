drop table if exists RECTANGLE ;
drop table if exists INTERVALLE;

CREATE TABLE INTERVALLE
(borneInf int,
 borneSup int,
 PRIMARY KEY (borneInf, borneSup));

CREATE TABLE RECTANGLE
(xHautGauche int,
 yHautGauche int,
 xBasDroit int,
 yBasDroit int, 	
 PRIMARY KEY (xHautGauche, yHautGauche, xBasDroit, yBasDroit));

INSERT INTO INTERVALLE VALUES (2, 56);
INSERT INTO INTERVALLE VALUES (12, 30);
INSERT INTO INTERVALLE VALUES (2, 3);
INSERT INTO INTERVALLE VALUES (12, 3);
INSERT INTO INTERVALLE VALUES (8, 27);
INSERT INTO INTERVALLE VALUES (34, 26);
INSERT INTO INTERVALLE VALUES (5, 10);
INSERT INTO INTERVALLE VALUES (7, 32);
INSERT INTO INTERVALLE VALUES (0, 30);
INSERT INTO INTERVALLE VALUES (21, 8);

INSERT INTO RECTANGLE VALUES (2, 12, 5, 7);
INSERT INTO RECTANGLE VALUES (2, 12, 1, 13);
INSERT INTO RECTANGLE VALUES (10, 13, 1, 11);
INSERT INTO RECTANGLE VALUES (10, 13, 10, 11);
INSERT INTO RECTANGLE VALUES (2, 7, 5, 13);
INSERT INTO RECTANGLE VALUES (21, 73, 15, 22);
INSERT INTO RECTANGLE VALUES (1, 2, 3, 4);
INSERT INTO RECTANGLE VALUES (1, 5, 3, 2);
INSERT INTO RECTANGLE VALUES (1, 6, 3, 6);
INSERT INTO RECTANGLE VALUES (4, 2, 1, 4);
INSERT INTO RECTANGLE VALUES (2, 3, 4, 0);
INSERT INTO RECTANGLE VALUES (5, 4, 2, 1);
