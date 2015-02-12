DROP TABLE FACTURE CASCADE CONSTRAINTS;

DROP TABLE MEDECIN CASCADE CONSTRAINTS;

DROP TABLE MEDICAMENT CASCADE CONSTRAINTS;

DROP TABLE FOURNISSEUR CASCADE CONSTRAINTS;

DROP TABLE COMMANDE CASCADE CONSTRAINTS;

DROP TABLE PATIENT CASCADE CONSTRAINTS;

DROP TABLE ORDONNANCE CASCADE CONSTRAINTS;

DROP TABLE CENTRE_DE_GESTION CASCADE CONSTRAINTS;

DROP TABLE ETAT CASCADE CONSTRAINTS;

DROP TABLE ALLERGENE  CASCADE CONSTRAINTS;

DROP TABLE MUTUEL CASCADE CONSTRAINTS;

DROP TABLE CLASSE_PHARMACEUTIQUE CASCADE CONSTRAINTS;

DROP TABLE LIGNE_COMMANDE CASCADE CONSTRAINTS;

DROP TABLE ALLERGIQUE CASCADE CONSTRAINTS;

DROP TABLE FOURNIR CASCADE CONSTRAINTS;

DROP TABLE INCOMPATIBILITE CASCADE CONSTRAINTS;

DROP TABLE MEDIC_SUR_ORDO CASCADE CONSTRAINTS;


-- -----------------------------------------------------------------------------
--       TABLE : FACTURE
-- -----------------------------------------------------------------------------

CREATE TABLE FACTURE
   (
    FAC_ID NUMBER(4)  NOT NULL,
    COM_ID NUMBER(2)  NOT NULL,
    FAC_CLOTURER NUMBER(1)  NOT NULL,
    FAC_MTN_PAYER NUMBER(4)  NOT NULL,
    FAC_DATE_FACTURE DATE  NOT NULL
,   CONSTRAINT PK_FACTURE PRIMARY KEY (FAC_ID)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       INDEX DE LA TABLE FACTURE
-- -----------------------------------------------------------------------------

CREATE  INDEX I_FK_FACTURE_COMMANDE
     ON FACTURE (COM_ID ASC)
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
--       TABLE : MEDICAMENT
-- -----------------------------------------------------------------------------

CREATE TABLE MEDICAMENT
   (
    MED_NOM VARCHAR2(38)  NOT NULL,
    MED_NUM_LOT CHAR(12)  NOT NULL,
    CPH_ID NUMBER(4)  NOT NULL,
    MED_DATE_EXPIRATION DATE  NOT NULL,
    MED_NOTICE VARCHAR2(255)  NOT NULL,
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
--       TABLE : COMMANDE
-- -----------------------------------------------------------------------------

CREATE TABLE COMMANDE
   (
    COM_ID NUMBER(2)  NOT NULL,
    ETAT_ID NUMBER(4)  NOT NULL,
    PAT_NUM NUMBER(2)  NOT NULL,
    COM_MTN_TOTALE NUMBER(7,2)  NOT NULL,
    COM_MTN_PATIENT NUMBER(7,2)  NOT NULL,
    COM_MTN_SECU NUMBER(7,2)  NULL,
    COM_MTN_MUTUEL NUMBER(7,2)  NULL,
    COM_QUESTION NUMBER(1)  NULL
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
--       TABLE : PATIENT
-- -----------------------------------------------------------------------------

CREATE TABLE PATIENT
   (
    PAT_NUM NUMBER(2)  NOT NULL,
    MED_ID NUMBER(4)  NOT NULL,
    CDG_ID NUMBER(4)  NULL,
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
    PAT_COTISSATION_MUT NUMBER(4)  NULL,
    PAT_AUTRE_INDIQUATION VARCHAR2(350)  NULL
,   CONSTRAINT PK_PATIENT PRIMARY KEY (PAT_NUM)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       INDEX DE LA TABLE PATIENT
-- -----------------------------------------------------------------------------

CREATE  INDEX I_FK_PATIENT_MEDECIN
     ON PATIENT (MED_ID ASC)
     TABLESPACE PHARMA_NDX
    ;

CREATE  INDEX I_FK_PATIENT_CENTRE_DE_GESTION
     ON PATIENT (CDG_ID ASC)
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
--       TABLE : ETAT
-- -----------------------------------------------------------------------------

CREATE TABLE ETAT
   (
    ETAT_ID NUMBER(4)  NOT NULL,
    ETAT_LIBELLE VARCHAR2(38)  NOT NULL
,   CONSTRAINT PK_ETAT PRIMARY KEY (ETAT_ID)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : ALLERGIQUE
-- -----------------------------------------------------------------------------

CREATE TABLE ALLERGENE
   (
    ALL_ID NUMBER(4)  NOT NULL,
    ALL_ELEMENT_ALLERGENE CHAR(38)  NULL
,   CONSTRAINT PK_ALLERGENE PRIMARY KEY (ALL_ID)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

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
    CPH_NOM VARCHAR2(255)  NOT NULL,
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
    PRIC_ACTUEL NUMBER(7,2)  NOT NULL
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
--       TABLE : ALLERGIQUE
-- -----------------------------------------------------------------------------

CREATE TABLE ALLERGIQUE
   (
    PAT_NUM NUMBER(2)  NOT NULL,
    ALL_ID NUMBER(4)  NOT NULL
,   CONSTRAINT PK_ALLERGIQUE PRIMARY KEY (PAT_NUM, ALL_ID)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       INDEX DE LA TABLE ALLERGIQUE
-- -----------------------------------------------------------------------------

CREATE  INDEX I_FK_ALLERGIQUE_PATIENT
     ON ALLERGIQUE (PAT_NUM ASC)
     TABLESPACE PHARMA_NDX
    ;

CREATE  INDEX I_FK_ALLERGIQUE_ALLERGIQUE
     ON ALLERGIQUE (ALL_ID ASC)
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
    QTE NUMBER(4)  NOT NULL,
    DATE_DE_COMMANDE DATE  NOT NULL,
    MONTANT_COMMANDE NUMBER(10)  NOT NULL,
    CLOTURER NUMBER(1)  NOT NULL
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
--       TABLE : INCOMPATIBILITE
-- -----------------------------------------------------------------------------

CREATE TABLE INCOMPATIBILITE
   (
    CPH_ID NUMBER(4)  NOT NULL,
    CPH_ID_1 NUMBER(4)  NOT NULL
,   CONSTRAINT PK_INCOMPATIBILITE PRIMARY KEY (CPH_ID, CPH_ID_1)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       INDEX DE LA TABLE INCOMPATIBILITE
-- -----------------------------------------------------------------------------

CREATE  INDEX I_FK_INCOMPATIBILITE_CLASSE_P
     ON INCOMPATIBILITE (CPH_ID ASC)
     TABLESPACE PHARMA_NDX
    ;

CREATE  INDEX I_FK_INCOMPATIBILITE_CLASSE_1
     ON INCOMPATIBILITE (CPH_ID_1 ASC)
     TABLESPACE PHARMA_NDX
    ;

-- -----------------------------------------------------------------------------
--       TABLE : MEDIC_SUR_ORDO
-- -----------------------------------------------------------------------------

CREATE TABLE MEDIC_SUR_ORDO
   (
    MED_NOM VARCHAR2(38)  NOT NULL,
    MED_NUM_LOT CHAR(12)  NOT NULL,
    ORD_NUM NUMBER(4)  NOT NULL
,   CONSTRAINT PK_MEDIC_SUR_ORDO PRIMARY KEY (MED_NOM, MED_NUM_LOT, ORD_NUM)  USING INDEX TABLESPACE PHARMA_NDX
   ) ;

-- -----------------------------------------------------------------------------
--       INDEX DE LA TABLE MEDIC_SUR_ORDO
-- -----------------------------------------------------------------------------

CREATE  INDEX I_FK_MEDIC_SUR_ORDO_MEDICAMENT
     ON MEDIC_SUR_ORDO (MED_NOM ASC, MED_NUM_LOT ASC)
     TABLESPACE PHARMA_NDX
    ;

CREATE  INDEX I_FK_MEDIC_SUR_ORDO_ORDONNANCE
     ON MEDIC_SUR_ORDO (ORD_NUM ASC)
     TABLESPACE PHARMA_NDX
    ;


-- -----------------------------------------------------------------------------
--       CREATION DES REFERENCES DE TABLE
-- -----------------------------------------------------------------------------


ALTER TABLE FACTURE ADD (
     CONSTRAINT FK_FACTURE_COMMANDE
          FOREIGN KEY (COM_ID)
               REFERENCES COMMANDE (COM_ID))   ;

ALTER TABLE MEDICAMENT ADD (
     CONSTRAINT FK_MEDICAMENT_CLASSE_PHARMACEU
          FOREIGN KEY (CPH_ID)
               REFERENCES CLASSE_PHARMACEUTIQUE (CPH_ID))   ;

ALTER TABLE COMMANDE ADD (
     CONSTRAINT FK_COMMANDE_ETAT
          FOREIGN KEY (ETAT_ID)
               REFERENCES ETAT (ETAT_ID))   ;

ALTER TABLE COMMANDE ADD (
     CONSTRAINT FK_COMMANDE_PATIENT
          FOREIGN KEY (PAT_NUM)
               REFERENCES PATIENT (PAT_NUM))   ;

ALTER TABLE PATIENT ADD (
     CONSTRAINT FK_PATIENT_MEDECIN
          FOREIGN KEY (MED_ID)
               REFERENCES MEDECIN (MED_ID))   ;

ALTER TABLE PATIENT ADD (
     CONSTRAINT FK_PATIENT_CENTRE_DE_GESTION
          FOREIGN KEY (CDG_ID)
               REFERENCES CENTRE_DE_GESTION (CDG_ID))   ;

ALTER TABLE ORDONNANCE ADD (
     CONSTRAINT FK_ORDONNANCE_PATIENT
          FOREIGN KEY (PAT_NUM)
               REFERENCES PATIENT (PAT_NUM))   ;

ALTER TABLE ORDONNANCE ADD (
     CONSTRAINT FK_ORDONNANCE_MEDECIN
          FOREIGN KEY (MED_ID)
               REFERENCES MEDECIN (MED_ID))   ;

ALTER TABLE CENTRE_DE_GESTION ADD (
     CONSTRAINT FK_CENTRE_DE_GESTION_MUTUEL
          FOREIGN KEY (MUT_ID)
               REFERENCES MUTUEL (MUT_ID))   ;

ALTER TABLE LIGNE_COMMANDE ADD (
     CONSTRAINT FK_LIGNE_COMMANDE_MEDICAMENT
          FOREIGN KEY (MED_NOM, MED_NUM_LOT)
               REFERENCES MEDICAMENT (MED_NOM, MED_NUM_LOT))   ;

ALTER TABLE LIGNE_COMMANDE ADD (
     CONSTRAINT FK_LIGNE_COMMANDE_COMMANDE
          FOREIGN KEY (COM_ID)
               REFERENCES COMMANDE (COM_ID))   ;

ALTER TABLE ALLERGIQUE ADD (
     CONSTRAINT FK_ALLERGIQUE_PATIENT
          FOREIGN KEY (PAT_NUM)
               REFERENCES PATIENT (PAT_NUM))   ;

ALTER TABLE ALLERGIQUE ADD (
     CONSTRAINT FK_ALLERGIQUE_ALLERGENE
          FOREIGN KEY (ALL_ID)
               REFERENCES ALLERGENE (ALL_ID))   ;

ALTER TABLE FOURNIR ADD (
     CONSTRAINT FK_FOURNIR_FOURNISSEUR
          FOREIGN KEY (FOU_ID)
               REFERENCES FOURNISSEUR (FOU_ID))   ;

ALTER TABLE FOURNIR ADD (
     CONSTRAINT FK_FOURNIR_MEDICAMENT
          FOREIGN KEY (MED_NOM, MED_NUM_LOT)
               REFERENCES MEDICAMENT (MED_NOM, MED_NUM_LOT))   ;

ALTER TABLE INCOMPATIBILITE ADD (
     CONSTRAINT FK_INCOMPATIBILITE_CLASSE_PHA
          FOREIGN KEY (CPH_ID)
               REFERENCES CLASSE_PHARMACEUTIQUE (CPH_ID))   ;

ALTER TABLE INCOMPATIBILITE ADD (
     CONSTRAINT FK_INCOMPATIBILITE_CLASSE_PH1
          FOREIGN KEY (CPH_ID_1)
               REFERENCES CLASSE_PHARMACEUTIQUE (CPH_ID))   ;

ALTER TABLE MEDIC_SUR_ORDO ADD (
     CONSTRAINT FK_MEDIC_SUR_ORDO_MEDICAMENT
          FOREIGN KEY (MED_NOM, MED_NUM_LOT)
               REFERENCES MEDICAMENT (MED_NOM, MED_NUM_LOT))   ;

ALTER TABLE MEDIC_SUR_ORDO ADD (
     CONSTRAINT FK_MEDIC_SUR_ORDO_ORDONNANCE
          FOREIGN KEY (ORD_NUM)
               REFERENCES ORDONNANCE (ORD_NUM))   ;


-- -----------------------------------------------------------------------------
--                FIN DE GENERATION
-- -----------------------------------------------------------------------------

