
/*VLERAT PER TABELENE ADRESA*/
INSERT INTO Adresa 
VALUES (1 , 2000 ,'711-2880 Nulla St.' , 17),
       (2 , 0000 ,'Mankato Mississippi 96522' , 198),
       (3 , 7953 ,'Ap #867-859 Sit Rd' , 356),
       (4 , 1000 ,'Corona New Mexico 08219' , 1590),
       (5 , 9557 ,'Chelsea MI 67708' , 1694),
	   (6 , 2000 ,'Santa Rosa MN 98804' , 15),
	   (7 , 3000 ,'Lebanon KY 69409' , 17),
	   (8 , 6000 ,'Ap #696-3279 Viverra. Avenue' , 99),
	   (9 , 1001 ,'666-4366 Lacinia Avenue' , 34),
	   (10 , 3300 ,'557-6308 Lacinia Road' , 65);

/*VLEART PER TABELAT LOGIMI*/
INSERT INTO Logimi
VALUES (56 , 'klevis.mema' , '1234kl'),
       (79 , 'flycitizenka' , 'OCEAN'),
	   (156 , 'flyantgolfg' , '17m2N'),
	   (78 , 'flystar-lor' , '12789'),
	   (100 , 'benicancerm' , 'vbdsf4'),
	   (345 , 'benitimon' , 'ouio8'),
	   (123 , 'benihambur' , '32467yh'),
	   (67 , 'ytramar' , 'dsfdsV3'),
	   (30 , 'ytrammagn' , 'FDGT6e4'),
	   (134, 'ytramari' , 'vhfgQ3');

/*VLERAT PER TABELEN LEJE*/
INSERT INTO Leje
VALUES (1784 , 'Jo Prezent' , 'Arsye shendetesore' ),
       (345 , 'Prezent', 'Ne pune' );
	  

/*VLERAT PER TABELEN ROLI*/
INSERT INTO Roli 
VALUES (156 , 'Room Service' , 'Sherben secilit klient ne dhoma' , 1784 ),
       (4 , 'Recepsionst/e' , 'Menaxhon dhomat dhe pagesat e dhomave' , 1784),
	   (891 , 'Ekonomist/ja' , 'Menaxhon xhirot e hotelit dhe kalon rrogat e puntoreve ne banke' , 345),
	   (784 , 'Menaxheri/ja' , 'Menaxhon dhe ndan punet e hotelit ' , 345),
	   (23 , 'Shefi salles ' , 'Menaxhon restorantin' , 345),
	   (098 , 'Shefi kuzhines' , 'Menaxhon kuzhinen' , 345),
	   (345, 'Kamarier/ja' , 'Sherben klientit' , 345);

/*VLERAT PER TABELEN PERDORUESI*/
INSERT INTO Perdoruesi 
VALUES (22 , 'Klevis' , 'Mema' , 'memaklevis2@gmail.com' , '+355699437079' , 1 , 56 , 156  ) ,
       (41 , 'Greit', 'Opingari' , 'greitopingari@gmail.com' , '+355678945012' , 2 , 79 , 784 ),  
       (16 , 'Lorena' , 'Meci' , 'lorenameci2@gmail.com' , '+3556964778125' ,3 , 156 , 891),
       (57 , 'Kleo' , 'Selmani' , 'klevosem4@gmail.com' , '+35598741565' , 3 , 78 , 23),
       (92 , 'Redi' , 'Gongo' , 'redi3@gmail.com' , '+3556512478' , 5 , 100 , 4),
       (59 , 'Ledio' , 'Malaj' , 'rledio56@gmail.com' , '+35565128748' , 10 , 345 , 345),
       (79 , 'Irvin' , 'Halili' , 'irvin3@gmail.com' , '+3556517878' , 9 , 123 , 098),
	   (80 , 'Grisleda' , 'Duka' , 'griselda@gmail.com' , '+355699477079' , 8 , 67 , 156 ),
	   (82 , 'Ksina' , 'Gjokaj' , 'ksina.gj@gmail.com' ,'+355698745123', 9 , 30 , 098 ),
	   (83 , 'Joni' , 'Prifti' , 'joni123@gmail.com' ,'+3554578569',10 , 134,784 );


/*VLERAT PER TABELEN FATURA*/
INSERT INTO Fatura
VALUES (10 , 345 , '01:45:13' , 5 , 2020),
       (11 , 100 , '13:25:43' , 7 , 2020),
	   (12 , 567 , '00:14:45' , 3 , 2020),
	   (13 , 781 , '16:23:23' , 1 , 2020),
	   (14 , 341 , '06:45:56' , 9 , 2020),
	   (15 , 100 , '09:45:12' , 10 , 2020),
	   (16 , 356 , '21:45:14' , 5 , 2020),
	   (17 , 3000 , '12:45:16' , 3 , 2020),
	   (18 , 3451 , '22:45:46' , 5 , 2020),
	   (19 , 34545 , '23:45:34' , 5 , 2020);

/*VLERAT PER TABELEN MENAXHON*/
INSERT INTO Menaxhon
VALUES (10 , 92),
       (11 , 92),
	   (12 , 92),
	   (18 , 92),
	   (19 , 92),
	   (15 , 92),
	   (17 , 92),
	   (13 , 92),
	   (14 , 92),
	   (16 , 92);



/*VLERAT PER TABELEN KLIENTET*/
INSERT INTO Klientet
VALUES (17 , 'Sara Negollari' , 'Albania' , 'sasra2@gmail.com' ),
       (18 , 'Brulinda Rama' , 'Albania' , 'brulinda_rama@gmail.com' ),
	   (19 , 'Vjollca Shala' , 'Italy' , 'vjollsh3@gmail.com'),
	   (20 , 'Ersian Brari' , 'Germany' , 'ersian56@yahoo.com'),
	   (21 ,'Edlira Myftari' , 'Spain' , 'edliramyf@gmail.com'),
	   (22 , 'Denada Potia' , 'Spain' , 'denada_potia@gmail.com' ),
	   (23 , 'Gerta Sauli' , 'Albania' , 'gerta.sauli@gmail.com' ),
	   (24 , 'Ervis Mulaj' , 'Italy' , 'eRVIS.Mu@gmail.com' ),
	   (25 , 'Samet Mulaj' , 'Hungary' , 'samet07@gmail.com' ),
	   (26 , 'Sajmir Hoti' , 'Kosovo' , 's.hoti@gmail.com');

/*VLERAT PER TABELEN PAGUAJNE */
INSERT INTO Paguajne
VALUES ('CREDIT CARD' , 10 , 17 ),
       ('CASH' , 19 , 23 ),
	   ('CASH' , 18 , 24 ),
	   ('DEBIT CARD' , 11 , 18 ),
	   ('CREDIT CARD' , 12 , 19 ),
	   ('CREDIT CARD' , 14 , 20 ),
	   ('CREDIT CARD' , 13 , 21 ),
	   ('CREDIT CARD' , 15 , 22 ),
	   ('DEBIT CARD' , 16 , 25 ),
	   ('CASH' , 17 , 26 );

/*VLERAT PER TABELEN OBJEKTET E HOTELIT*/
INSERT INTO Objektet_ne_pronesi_te_hotelit
VALUES (20 , 'SPA'),
       (21 , 'Parking'),
	   (22 , 'Plazhi'),
	   (24 , 'Restorant'),
	   (25 , 'Pishina');

/*VLERAT PER TABELEN PERDORIN*/
INSERT INTO Perdorin
VALUES (20 , 17),
       (21 , 18),
	   (22 , 19),
       (21 , 20),
	   (24 , 21),
	   (25 , 22),
       (20 , 23),
	   (24 , 24),
	   (24 , 25),
	   (25 , 26);

/*VLERAT PER TABELEN SHERBIMET*/
INSERT INTO Sherbimet
VALUES (30 , 'WIFI'),
       (31 , 'Ekskursion'),
	   (32 , 'Room Service');

/*VLERAT PER TABELEN SHFRYTEZOJNE*/
INSERT INTO Shfrytezojne
VALUES (30 , 17),(31 , 17),(32 , 17),
       (30 , 18),(31 , 18),
	   (30 , 19),(31 , 19),(32 , 19),
	   (31 , 20),(32 , 20),
	   (30 , 21),(31 , 21),
	   (30 , 22),(31 , 22),(32 , 22),
	   (30 , 23),(32 , 23),
	   (30 , 24),(31 , 24),(32 , 24),
	   (30 , 25),(31 , 25),(32 , 25),
	   (30 , 26),(32 , 26);

/*VLERAT PER KATEGORIA DHOMA*/
INSERT INTO Kategoria_Dhoma
VALUES (40 , 'Single' , 1 , 1),
       (41 , 'Single' , 23 , 2),
	   (42 , 'Double' , 56 , 5),
	   (43 , 'Single' , 12 , 1),
	   (44 , 'Double' , 34 , 3),
	   (45 , 'Single' , 56 , 5),
	   (46 , 'Double' , 62 , 6),
	   (47 , 'Single' , 5 , 5),
	   (48 , 'Single' , 22 , 2),
	   (49 , 'Double' , 21 , 2);

/*VLERAT PER TABELEN REZERVOJNE*/
INSERT INTO Rezervojne 
VALUES ('2020-05-14' , '2020-05-17' , 40 , 17 ),
       ('2020-06-21' , '2020-06-23' , 41 , 18 ),
	   ('2020-01-02' , '2020-02-01' , 42 , 19 ),
	   ('2020-12-05' , '2020-12-25' , 43 , 20 ),
	   ('2020-07-16' , '2020-07-20' , 44 , 21 ),
	   ('2020-09-11' , '2020-09-19' , 45 , 22 ),
	   ('2020-10-02' , '2020-10-29' , 46 , 23 ),
	   ('2020-03-14' , '2020-03-15' , 47 , 24 ),
	   ('2020-04-24' , '2020-04-28' , 48 , 25 ),
	   ('2020-11-10' , '2020-11-14' , 49 , 26 );
