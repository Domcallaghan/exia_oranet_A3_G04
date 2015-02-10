-- -----------------------------------------------------------------------------
--             Generation d'une base de donnees pour
--                      Oracle Version 10g
--                        (10/2/2015 10:16:17)
-- -----------------------------------------------------------------------------
--      Date de derniere modification : 10/2/2015 10:13:47
-- -----------------------------------------------------------------------------

DROP TABLE FOURNISSEUR CASCADE CONSTRAINTS;

DROP TABLE MEDICAMENT CASCADE CONSTRAINTS;

DROP TABLE MEDECIN CASCADE CONSTRAINTS;

DROP TABLE COMMANDE CASCADE CONSTRAINTS;

DROP TABLE ALLERGIE CASCADE CONSTRAINTS;

DROP TABLE PATIENT CASCADE CONSTRAINTS;

DROP TABLE ETAT CASCADE CONSTRAINTS;

DROP TABLE CENTRE_DE_GESTION CASCADE CONSTRAINTS;

DROP TABLE ORDONNANCE CASCADE CONSTRAINTS;

DROP TABLE MUTUEL CASCADE CONSTRAINTS;

DROP TABLE CLASSE_PHARMACEUTIQUE CASCADE CONSTRAINTS;

DROP TABLE LIGNE_COMMANDE CASCADE CONSTRAINTS;

DROP TABLE FOURNIR CASCADE CONSTRAINTS;

DROP TABLE INCOMPATIBILITER CASCADE CONSTRAINTS;

DROP TABLE RATTACHER CASCADE CONSTRAINTS;

DROP TABLE POSSEDER CASCADE CONSTRAINTS;


-- -----------------------------------------------------------------------------
--       TABLE : FOURNISSEUR
-- -----------------------------------------------------------------------------

CREATE TABLE FOURNISSEUR
   (
    FOU_ID NUMBER(4)  NOT NULL,
    FOU_NOM VARCHAR2(38)  NOT NULL,
    FOU_ADRESSE1 VARCHAR2(38)  NOT NULL,
    FOU_ADRESSE2 VARCHAR2(38)  NULL,
    FOU_ADRESSE3 VARCHAR2(38)  NULL,
    FOU_CP CHAR(5)  NOT NULL,
    FOU_VILLE VARCHAR2(38)  NOT NULL
,   CONSTRAINT PK_FOURNISSEUR PRIMARY KEY (FOU_ID)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : MEDICAMENT
-- -----------------------------------------------------------------------------

CREATE TABLE MEDICAMENT
   (
    MED_NOM VARCHAR2(38)  NOT NULL,
    MED_NUM_LOT CHAR(12)  NOT NULL,
    CPH_ID NUMBER(4)  NOT NULL,
    ORD_NUM NUMBER(4)  NOT NULL,
    MED_DATE_EXPIRATION DATE  NOT NULL,
    MED_NOTICE CLOB  NOT NULL,
    MED_REMBOURSABLE NUMBER(1)  NOT NULL,
    MED_PRIX_BASE NUMBER(5,2)  NOT NULL,
    MED_FABRIC_NOM VARCHAR2(38)  NOT NULL
,   CONSTRAINT PK_MEDICAMENT PRIMARY KEY (MED_NOM, MED_NUM_LOT)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       INDEX DE LA TABLE MEDICAMENT
-- -----------------------------------------------------------------------------

CREATE  INDEX I_FK_MEDICAMENT_CLASSE_PHARMAC
     ON MEDICAMENT (CPH_ID ASC)
	 TABLESPACE PHARMA_NDX
    ;

CREATE  INDEX I_FK_MEDICAMENT_ORDONNANCE
     ON MEDICAMENT (ORD_NUM ASC)
	 TABLESPACE PHARMA_NDX
    ;

-- -----------------------------------------------------------------------------
--       TABLE : MEDECIN
-- -----------------------------------------------------------------------------

CREATE TABLE MEDECIN
   (
    MED_ID NUMBER(4)  NOT NULL,
    MED_NOM VARCHAR2(38)  NOT NULL,
    MED_ADRESSE1 VARCHAR2(38)  NOT NULL,
    MED_ADRESSE2 VARCHAR2(38)  NULL,
    MED_ADRESSE3 VARCHAR2(38)  NULL,
    MED_CP CHAR(5)  NOT NULL,
    MED_VILLE VARCHAR2(38)  NOT NULL,
    MED_NUM_AGREMENT CHAR(12)  NOT NULL,
    MED_SPECIALITE VARCHAR2(38)  NOT NULL
,   CONSTRAINT PK_MEDECIN PRIMARY KEY (MED_ID)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : COMMANDE
-- -----------------------------------------------------------------------------

CREATE TABLE COMMANDE
   (
    COM_ID NUMBER(2)  NOT NULL,
    ETAT_ID NUMBER(4)  NOT NULL,
    PAT_NUM NUMBER(2)  NOT NULL,
    COM_MTN_TOTALE NUMBER(5,2)  NOT NULL,
    COM_MTN_PATIENT NUMBER(5,2)  NOT NULL,
    COM_MTN_SECU NUMBER(5,2)  NULL,
    COM_MTN_MUTUEL NUMBER(5,2)  NULL
,   CONSTRAINT PK_COMMANDE PRIMARY KEY (COM_ID)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       INDEX DE LA TABLE COMMANDE
-- -----------------------------------------------------------------------------

CREATE  INDEX I_FK_COMMANDE_ETAT
     ON COMMANDE (ETAT_ID ASC)
	 TABLESPACE PHARMA_NDX
    ;

CREATE  INDEX I_FK_COMMANDE_PATIENT
     ON COMMANDE (PAT_NUM ASC)
	 TABLESPACE PHARMA_NDX
    ;

-- -----------------------------------------------------------------------------
--       TABLE : ALLERGIE
-- -----------------------------------------------------------------------------

CREATE TABLE ALLERGIE
   (
    ALL_ELEMENT_ALLERGENE CHAR(38)  NOT NULL
,   CONSTRAINT PK_ALLERGIE PRIMARY KEY (ALL_ELEMENT_ALLERGENE) USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : PATIENT
-- -----------------------------------------------------------------------------

CREATE TABLE PATIENT
   (
    PAT_NUM NUMBER(2)  NOT NULL,
    MED_ID NUMBER(4)  NOT NULL,
    PAT_NOM VARCHAR2(38)  NOT NULL,
    PAT_PRENOM VARCHAR2(38)  NOT NULL,
    PAT_NAISSANCE DATE  NOT NULL,
    PAT_ADRESSE1 VARCHAR2(38)  NOT NULL,
    PAT_ADRESSE2 VARCHAR2(38)  NULL,
    PAT_ADRESSE3 VARCHAR2(38)  NULL,
    PAT_CP CHAR(5)  NOT NULL,
    PAT_VILLE CHAR(32)  NOT NULL,
    PAT_NUM_SECU_SOCIAL CHAR(15)  NOT NULL,
    PAT_TEL CHAR(15)  NOT NULL,
    PAT_NUM_ADHE_MUTUEL CHAR(15)  NULL,
    PAT_MODE_REMBOURSEMENT VARCHAR2(38)  NULL,
    PAT_COTISSATION_MUT NUMBER(4)  NULL
,   CONSTRAINT PK_PATIENT PRIMARY KEY (PAT_NUM)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       INDEX DE LA TABLE PATIENT
-- -----------------------------------------------------------------------------

CREATE  INDEX I_FK_PATIENT_MEDECIN
     ON PATIENT (MED_ID ASC)
	 TABLESPACE PHARMA_NDX
    ;

-- -----------------------------------------------------------------------------
--       TABLE : ETAT
-- -----------------------------------------------------------------------------

CREATE TABLE ETAT
   (
    ETAT_ID NUMBER(4)  NOT NULL,
    ETAT_LIBELLE VARCHAR2(38)  NOT NULL
,   CONSTRAINT PK_ETAT PRIMARY KEY (ETAT_ID)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : CENTRE_DE_GESTION
-- -----------------------------------------------------------------------------

CREATE TABLE CENTRE_DE_GESTION
   (
    CDG_ID NUMBER(4)  NOT NULL,
    MUT_ID NUMBER(4)  NOT NULL,
    CDG_ADRESSE1 VARCHAR2(38)  NOT NULL,
    CDG_ADRESSE2 VARCHAR2(38)  NULL,
    CDG_ADRESSE3 VARCHAR2(38)  NULL,
    CDG_CP CHAR(5)  NOT NULL,
    CDG_VILLE VARCHAR2(38)  NOT NULL
,   CONSTRAINT PK_CENTRE_DE_GESTION PRIMARY KEY (CDG_ID)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       INDEX DE LA TABLE CENTRE_DE_GESTION
-- -----------------------------------------------------------------------------

CREATE  INDEX I_FK_CENTRE_DE_GESTION_MUTUEL
     ON CENTRE_DE_GESTION (MUT_ID ASC)
	 TABLESPACE PHARMA_NDX
    ;

-- -----------------------------------------------------------------------------
--       TABLE : ORDONNANCE
-- -----------------------------------------------------------------------------

CREATE TABLE ORDONNANCE
   (
    ORD_NUM NUMBER(4)  NOT NULL,
    PAT_NUM NUMBER(2)  NOT NULL,
    MED_ID NUMBER(4)  NOT NULL,
    ORD_URL VARCHAR2(255)  NOT NULL,
    ORD_DATE_CONSULT DATE  NOT NULL
,   CONSTRAINT PK_ORDONNANCE PRIMARY KEY (ORD_NUM)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       INDEX DE LA TABLE ORDONNANCE
-- -----------------------------------------------------------------------------

CREATE  INDEX I_FK_ORDONNANCE_PATIENT
     ON ORDONNANCE (PAT_NUM ASC)
	 TABLESPACE PHARMA_NDX
    ;

CREATE  INDEX I_FK_ORDONNANCE_MEDECIN
     ON ORDONNANCE (MED_ID ASC)
	 TABLESPACE PHARMA_NDX
    ;

-- -----------------------------------------------------------------------------
--       TABLE : MUTUEL
-- -----------------------------------------------------------------------------

CREATE TABLE MUTUEL
   (
    MUT_ID NUMBER(4)  NOT NULL,
    MUT_NOM VARCHAR2(38)  NOT NULL
,   CONSTRAINT PK_MUTUEL PRIMARY KEY (MUT_ID)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : CLASSE_PHARMACEUTIQUE
-- -----------------------------------------------------------------------------

CREATE TABLE CLASSE_PHARMACEUTIQUE
   (
    CPH_ID NUMBER(4)  NOT NULL,
    CPH_POURC_REMBOURSSEMENT NUMBER(4)  NOT NULL,
    CPH_RESUME VARCHAR2(255)  NOT NULL
,   CONSTRAINT PK_CLASSE_PHARMACEUTIQUE PRIMARY KEY (CPH_ID)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : LIGNE_COMMANDE
-- -----------------------------------------------------------------------------

CREATE TABLE LIGNE_COMMANDE
   (
    MED_NOM VARCHAR2(38)  NOT NULL,
    MED_NUM_LOT CHAR(12)  NOT NULL,
    COM_ID NUMBER(2)  NOT NULL,
    QTE NUMBER(4)  NOT NULL,
    PRIC_ACTUEL NUMBER(5,2)  NOT NULL
,   CONSTRAINT PK_LIGNE_COMMANDE PRIMARY KEY (MED_NOM, MED_NUM_LOT, COM_ID)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       INDEX DE LA TABLE LIGNE_COMMANDE
-- -----------------------------------------------------------------------------

CREATE  INDEX I_FK_LIGNE_COMMANDE_MEDICAMENT
     ON LIGNE_COMMANDE (MED_NOM ASC, MED_NUM_LOT ASC)
	 TABLESPACE PHARMA_NDX
    ;

CREATE  INDEX I_FK_LIGNE_COMMANDE_COMMANDE
     ON LIGNE_COMMANDE (COM_ID ASC)
	 TABLESPACE PHARMA_NDX
    ;

-- -----------------------------------------------------------------------------
--       TABLE : FOURNIR
-- -----------------------------------------------------------------------------

CREATE TABLE FOURNIR
   (
    FOU_ID NUMBER(4)  NOT NULL,
    MED_NOM VARCHAR2(38)  NOT NULL,
    MED_NUM_LOT CHAR(12)  NOT NULL,
    QTE NUMBER(4)  NOT NULL
,   CONSTRAINT PK_FOURNIR PRIMARY KEY (FOU_ID, MED_NOM, MED_NUM_LOT)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       INDEX DE LA TABLE FOURNIR
-- -----------------------------------------------------------------------------

CREATE  INDEX I_FK_FOURNIR_FOURNISSEUR
     ON FOURNIR (FOU_ID ASC)
	 TABLESPACE PHARMA_NDX
    ;

CREATE  INDEX I_FK_FOURNIR_MEDICAMENT
     ON FOURNIR (MED_NOM ASC, MED_NUM_LOT ASC)
	 TABLESPACE PHARMA_NDX
    ;

-- -----------------------------------------------------------------------------
--       TABLE : INCOMPATIBILITER
-- -----------------------------------------------------------------------------

CREATE TABLE INCOMPATIBILITER
   (
    CPH_ID NUMBER(4)  NOT NULL,
    CPH_ID_1 NUMBER(4)  NOT NULL
,   CONSTRAINT PK_INCOMPATIBILITER PRIMARY KEY (CPH_ID, CPH_ID_1)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       INDEX DE LA TABLE INCOMPATIBILITER
-- -----------------------------------------------------------------------------

CREATE  INDEX I_FK_INCOMPATIBILITER_CLASSE_P
     ON INCOMPATIBILITER (CPH_ID ASC)
	 TABLESPACE PHARMA_NDX
    ;

CREATE  INDEX I_FK_INCOMPATIBILITER_CLASSE_1
     ON INCOMPATIBILITER (CPH_ID_1 ASC)
	 TABLESPACE PHARMA_NDX
    ;

-- -----------------------------------------------------------------------------
--       TABLE : RATTACHER
-- -----------------------------------------------------------------------------

CREATE TABLE RATTACHER
   (
    PAT_NUM NUMBER(2)  NOT NULL,
    CDG_ID NUMBER(4)  NULL
,   CONSTRAINT PK_RATTACHER PRIMARY KEY (PAT_NUM)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       INDEX DE LA TABLE RATTACHER
-- -----------------------------------------------------------------------------

CREATE  INDEX I_FK_RATTACHER_CENTRE_DE_GESTI
     ON RATTACHER (CDG_ID ASC)
	 TABLESPACE PHARMA_NDX
    ;

-- -----------------------------------------------------------------------------
--       TABLE : POSSEDER
-- -----------------------------------------------------------------------------

CREATE TABLE POSSEDER
   (
    PAT_NUM NUMBER(2)  NOT NULL,
    ALL_ELEMENT_ALLERGENE CHAR(38)  NOT NULL
,   CONSTRAINT PK_POSSEDER PRIMARY KEY (PAT_NUM, ALL_ELEMENT_ALLERGENE) USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       INDEX DE LA TABLE POSSEDER
-- -----------------------------------------------------------------------------

CREATE  INDEX I_FK_POSSEDER_PATIENT
     ON POSSEDER (PAT_NUM ASC)
	 TABLESPACE PHARMA_NDX
    ;

CREATE  INDEX I_FK_POSSEDER_ALLERGIE
     ON POSSEDER (ALL_ELEMENT_ALLERGENE ASC)
	 TABLESPACE PHARMA_NDX
    ;


-- -----------------------------------------------------------------------------
--       CREATION DES REFERENCES DE TABLE
-- -----------------------------------------------------------------------------


ALTER TABLE MEDICAMENT ADD (
     CONSTRAINT FK_MEDICAMENT_CLASSE_PHARMACEU
          FOREIGN KEY (CPH_ID)
               REFERENCES CLASSE_PHARMACEUTIQUE (CPH_ID))   ;

ALTER TABLE MEDICAMENT ADD (
     CONSTRAINT FK_MEDICAMENT_ORDONNANCE
          FOREIGN KEY (ORD_NUM)
               REFERENCES ORDONNANCE (ORD_NUM) )   ;

ALTER TABLE COMMANDE ADD (
     CONSTRAINT FK_COMMANDE_ETAT
          FOREIGN KEY (ETAT_ID)
               REFERENCES ETAT (ETAT_ID) )   ;

ALTER TABLE COMMANDE ADD (
     CONSTRAINT FK_COMMANDE_PATIENT
          FOREIGN KEY (PAT_NUM)
               REFERENCES PATIENT (PAT_NUM) )   ;

ALTER TABLE PATIENT ADD (
     CONSTRAINT FK_PATIENT_MEDECIN
          FOREIGN KEY (MED_ID)
               REFERENCES MEDECIN (MED_ID) )   ;

ALTER TABLE CENTRE_DE_GESTION ADD (
     CONSTRAINT FK_CENTRE_DE_GESTION_MUTUEL
          FOREIGN KEY (MUT_ID)
               REFERENCES MUTUEL (MUT_ID) )   ;

ALTER TABLE ORDONNANCE ADD (
     CONSTRAINT FK_ORDONNANCE_PATIENT
          FOREIGN KEY (PAT_NUM)
               REFERENCES PATIENT (PAT_NUM) )   ;

ALTER TABLE ORDONNANCE ADD (
     CONSTRAINT FK_ORDONNANCE_MEDECIN
          FOREIGN KEY (MED_ID)
               REFERENCES MEDECIN (MED_ID) )   ;

ALTER TABLE LIGNE_COMMANDE ADD (
     CONSTRAINT FK_LIGNE_COMMANDE_MEDICAMENT
          FOREIGN KEY (MED_NOM, MED_NUM_LOT)
               REFERENCES MEDICAMENT (MED_NOM, MED_NUM_LOT) )   ;

ALTER TABLE LIGNE_COMMANDE ADD (
     CONSTRAINT FK_LIGNE_COMMANDE_COMMANDE
          FOREIGN KEY (COM_ID)
               REFERENCES COMMANDE (COM_ID) )   ;

ALTER TABLE FOURNIR ADD (
     CONSTRAINT FK_FOURNIR_FOURNISSEUR
          FOREIGN KEY (FOU_ID)
               REFERENCES FOURNISSEUR (FOU_ID) )   ;

ALTER TABLE FOURNIR ADD (
     CONSTRAINT FK_FOURNIR_MEDICAMENT
          FOREIGN KEY (MED_NOM, MED_NUM_LOT)
               REFERENCES MEDICAMENT (MED_NOM, MED_NUM_LOT) )   ;

ALTER TABLE INCOMPATIBILITER ADD (
     CONSTRAINT FK_INCOMPATIBILITER_CLASSE_PHA
          FOREIGN KEY (CPH_ID)
               REFERENCES CLASSE_PHARMACEUTIQUE (CPH_ID))   ;

ALTER TABLE INCOMPATIBILITER ADD (
     CONSTRAINT FK_INCOMPATIBILITER_CLASSE_PH1
          FOREIGN KEY (CPH_ID_1)
               REFERENCES CLASSE_PHARMACEUTIQUE (CPH_ID) )   ;

ALTER TABLE RATTACHER ADD (
     CONSTRAINT FK_RATTACHER_PATIENT
          FOREIGN KEY (PAT_NUM)
               REFERENCES PATIENT (PAT_NUM) )   ;

ALTER TABLE RATTACHER ADD (
     CONSTRAINT FK_RATTACHER_CENTRE_DE_GESTION
          FOREIGN KEY (CDG_ID)
               REFERENCES CENTRE_DE_GESTION (CDG_ID) )   ;

ALTER TABLE POSSEDER ADD (
     CONSTRAINT FK_POSSEDER_PATIENT
          FOREIGN KEY (PAT_NUM)
               REFERENCES PATIENT (PAT_NUM) )   ;

ALTER TABLE POSSEDER ADD (
     CONSTRAINT FK_POSSEDER_ALLERGIE
          FOREIGN KEY (ALL_ELEMENT_ALLERGENE)
               REFERENCES ALLERGIE (ALL_ELEMENT_ALLERGENE)  )   ;


-- -----------------------------------------------------------------------------
--                FIN DE GENERATION
-- -----------------------------------------------------------------------------
