/************************************************Tabela Adresa***************************************************************/
CREATE TABLE Adresa (
                     ID_Adresa INT,
					 PRIMARY KEY (ID_Adresa) ,
					 Zip_Code INT NOT NULL,
					 Adresa_Rruges VARCHAR (50) NOT NULL ,
				     Numri_Lagjes INT NOT NULL,
                    );
/****************************************************************************************************************************/



/***************************************************Tabela Logimi*************************************************************/
CREATE TABLE Logimi (
                     ID_Login INT,
					 PRIMARY KEY (ID_Login) ,
					 Username  VARCHAR (30) NOT NULL UNIQUE , 
					 Pasword   Varchar (30) NOT NULL
                     );
/****************************************************************************************************************************/
	   
	   

/*****************************************************Tabela Leje************************************************************/
CREATE TABLE Leje (
                    ID_leje INT,
					PRIMARY KEY (ID_leje),
					Emri_Lejes VARCHAR (20) NOT NULL,
					Moduli_Lejes VARCHAR (30) NOT NULL
                   );
/****************************************************************************************************************************/




/*****************************************************Tabela Roli ***********************************************************/
CREATE TABLE Roli (
                    ID_roli INT ,
					PRIMARY KEY(ID_roli),
					Emri_Rolit VARCHAR (50) NOT NULL ,
					Pershkrimi_Rolit VARCHAR (100) NOT NULL , 
					ID_leje INT  FOREIGN KEY REFERENCES Leje(ID_leje)
				   );
/****************************************************************************************************************************/



/****************************************************Tabela Perdoruesi*******************************************************/
CREATE TABLE Perdoruesi (
                         ID_perdoruesi INT ,
						 Emer VARCHAR (20) NOT NULL , 
						 Mbiemer VARCHAR (20) NOT NULL ,
						 Email VARCHAR (30) NOT NULL UNIQUE ,
						 Numri_Telefonit VARCHAR (20) NOT NULL UNIQUE ,
						 PRIMARY KEY (ID_perdoruesi) , 
						 ID_Adresa INT          FOREIGN KEY REFERENCES Adresa(ID_Adresa),
						 ID_login  INT          FOREIGN KEY REFERENCES Logimi(ID_login),
						 ID_roli   INT          FOREIGN KEY REFERENCES Roli(ID_roli)
						 );
/****************************************************************************************************************************/




/******************************************Tabela Fatura*********************************************************************/
CREATE TABLE Fatura (
                     ID_fatura INT ,
					 PRIMARY KEY (ID_fatura),
					 Shuma INT NOT NULL ,
					 Ora TIME (0) NOT NULL ,
					 Muaji INT NOT NULL CHECK (Muaji>= 1 AND Muaji <= 12),
					 Viti INT NOT NULL CHECK (Viti=2020) 
					 );
/***************************************************************************************************************************/



/********************Tabela Menaxhon qe lidh tabelen fatura me perdoruesi nga lidhja M:M************************************/
CREATE TABLE Menaxhon (
                       ID_fatura INT NOT NULL,
					   ID_perdoruesi INT NOT NULL,
					   FOREIGN KEY (ID_fatura) REFERENCES Fatura(ID_fatura),
					   FOREIGN KEY (ID_perdoruesi) REFERENCES Perdoruesi(ID_perdoruesi),
					   PRIMARY KEY (ID_fatura , ID_perdoruesi)
					   );
/***************************************************************************************************************************/
                       
	
	

/**********************************************Tabela Klientet**************************************************************/
CREATE TABLE Klientet (
                       ID_klient INT, 
					   PRIMARY KEY (ID_klient),
					   EMER_MBIEMER VARCHAR (50) NOT NULL ,
					   Shteti VARCHAR (20) NOT NULL,
					   Emaili VARCHAR (30) NOT NULL
                       );
/***************************************************************************************************************************/



/*******************************Tabela Paguajne qe ben lidhjen e tabeles klientet dhe fatura M:M****************************/
CREATE TABLE Paguajne (
                       Menyra_Pageses VARCHAR (20),
					   ID_fatura INT NOT NULL,
					   ID_klient  INT NOT NULL ,
					   FOREIGN KEY (ID_fatura) REFERENCES Fatura(ID_fatura),
					   FOREIGN KEY (ID_klient) REFERENCES Klientet(ID_klient),
					   PRIMARY KEY (ID_fatura , ID_klient)
					   );
/***************************************************************************************************************************/



/****************************Tabela objektet ne pronesi te hotelit***********************************************************/
CREATE TABLE Objektet_ne_pronesi_te_hotelit (
                                             ID_objektet_hotelit INT ,
											 PRIMARY KEY (ID_objektet_hotelit),
											 Pershkrimi VARCHAR (20) CHECK (Pershkrimi = 'SPA' or Pershkrimi ='Parking' or
											                                Pershkrimi = 'Plazhi' or Pershkrimi = 'Restorant'
																			or Pershkrimi = 'Pishina')							
											 );
/****************************************************************************************************************************/




/**************************Tabela qe lidh tabelat klientet me objektet e hotelit*********************************************/
CREATE TABLE Perdorin (
                       ID_objektet_hotelit INT NOT NULL,   
					   ID_klient INT NOT NULL,
					   FOREIGN KEY (ID_objektet_hotelit) REFERENCES Objektet_ne_pronesi_te_hotelit(ID_objektet_hotelit),
					   FOREIGN KEY (ID_klient) REFERENCES Klientet(ID_klient),
					   PRIMARY KEY (ID_objektet_hotelit , ID_klient) 
					   );
/****************************************************************************************************************************/




/*******************************************Tabela Sherbimet*****************************************************************/
CREATE TABLE Sherbimet (
                        ID_sherbimet INT ,
						PRIMARY KEY (ID_sherbimet),
						Tipi VARCHAR (30) CHECK (Tipi = 'WIFI' or Tipi = 'Room Service' or Tipi = 'Ekskursion')
                        );
/****************************************************************************************************************************/




/******************************************Tabela qe ben lidhjen e tabeles shebimet me klientet******************************/
CREATE TABLE Shfrytezojne (
                           ID_sherbimet INT NOT NULL,
						   ID_klient INT NOT NULL,
					       FOREIGN KEY (ID_sherbimet) REFERENCES Sherbimet(ID_sherbimet),
					       FOREIGN KEY (ID_klient) REFERENCES Klientet(ID_klient),
					       PRIMARY KEY (ID_sherbimet , ID_klient) 
						   );
/****************************************************************************************************************************/




/*****************************************Tabela Kategoria dhoma*************************************************************/
CREATE TABLE Kategoria_Dhoma (
                              ID_dhoma INT ,
							  PRIMARY KEY (ID_dhoma),
							  Tipi VARCHAR (10) NOT NULL CHECK (Tipi = 'Single' or Tipi = 'Double'),
							  Numri_dhomes INT NOT NULL ,
							  Kati_dhomes INT NOT NULL 
						      );
/****************************************************************************************************************************/




/*************************Tabela rezervoje qe ben lidhjen e tabeles kategoria dhoma me klientin******************************/
CREATE TABLE Rezervojne (
                         Data_fillimit DATE NOT NULL ,
						 Data_mbarimit DATE  NOT NULL,
						 ID_dhoma INT NOT NULL,
						 ID_klient INT NOT NULL,
					     FOREIGN KEY (ID_dhoma ) REFERENCES Kategoria_Dhoma(ID_dhoma ),
					     FOREIGN KEY (ID_klient) REFERENCES Klientet(ID_klient),
					     PRIMARY KEY (ID_dhoma , ID_klient)
						 );
/***************************************************************************************************************************/
                         

                         

