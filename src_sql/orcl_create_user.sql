    ---------------------------------------------------
    ---------------------------------------------------
    --                                               --
    -- fichier de creation des utilisateurs et roles --
    --                  By Benoit                    --
    --                                               --
    ---------------------------------------------------
    ---------------------------------------------------

    -- on active les limites de resources
ALTER SYSTEM SET resource_limit=TRUE;

    ---------------------------------------------------
    --                  PHARMAWEB                    --
    ---------------------------------------------------

    -- on drop les existants
DROP USER Pharmaweb CASCADE;
DROP PROFILE prf_Pharmaweb;

    -- profil avec les param de connexion
CREATE PROFILE prf_Pharmaweb
     LIMIT
         SESSIONS_PER_USER 1
         IDLE_TIME 5
         ;

    -- L'utilisateur principale Pharmaweb
CREATE USER Pharmaweb
     IDENTIFIED BY Admin1337
     DEFAULT TABLESPACE PHARMAWEB
     TEMPORARY TABLESPACE TEMP
     PROFILE prf_Pharmaweb;

    -- ajout de role de connexion et de modification
GRANT CONNECT, RESOURCE TO Pharmaweb;

    ---------------------------------------------------

    ---------------------------------------------------
    --                 PHARMATEAM                    --
    ---------------------------------------------------

    -- on drop les existants
DROP USER PreparateurA CASCADE;
DROP USER PharmacienA CASCADE;
DROP PROFILE prf_PharmaTeam;
DROP ROLE rle_Preparateur;
DROP ROLE rle_Pharmacien;

    -- profil pour la team phara (prepa et pharma)
CREATE PROFILE prf_PharmaTeam
     LIMIT
         SESSIONS_PER_USER 1
         IDLE_TIME 15
         CONNECT_TIME 60
         FAILED_LOGIN_ATTEMPTS 4
         PASSWORD_LIFE_TIME 45
         ;
         -- @todo : on fait quoi pour les exlude?

    -- role pour les Preparateur
CREATE ROLE rle_Preparateur;
    -- ajout des droits au role
GRANT SELECT
     ON Pharmaweb.Facture
     TO rle_Preparateur;
GRANT SELECT, INSERT, UPDATE
     ON Pharmaweb.Medecin
     TO rle_Preparateur;
GRANT SELECT, INSERT, UPDATE
     ON Pharmaweb.Medicament
     TO rle_Preparateur;
GRANT SELECT
     ON Pharmaweb.Fournisseur
     TO rle_Preparateur;
GRANT SELECT
     ON Pharmaweb.Commande
     TO rle_Preparateur;
GRANT SELECT
     ON Pharmaweb.Patient
     TO rle_Preparateur;
GRANT SELECT
     ON Pharmaweb.Ordonnance
     TO rle_Preparateur;
GRANT SELECT
     ON Pharmaweb.Centre_de_gestion
     TO rle_Preparateur;
GRANT SELECT
     ON Pharmaweb.Etat
     TO rle_Preparateur;
GRANT SELECT
     ON Pharmaweb.Allergene
     TO rle_Preparateur;
GRANT SELECT
     ON Pharmaweb.Mutuel
     TO rle_Preparateur;
GRANT SELECT
     ON Pharmaweb.Classe_pharmaceutique
     TO rle_Preparateur;
GRANT SELECT
     ON Pharmaweb.Ligne_commande
     TO rle_Preparateur;
GRANT SELECT
     ON Pharmaweb.Allergique
     TO rle_Preparateur;
GRANT SELECT, INSERT, UPDATE
     ON Pharmaweb.Fournir
     TO rle_Preparateur;
GRANT SELECT
     ON Pharmaweb.Incompatibilite
     TO rle_Preparateur;
GRANT SELECT
     ON Pharmaweb.Medic_sur_ordo
     TO rle_Preparateur;

    -- creation d'un Preparateur A de test
CREATE USER PreparateurA
     IDENTIFIED BY Admin1337
     DEFAULT TABLESPACE PHARMAWEB
     TEMPORARY TABLESPACE TEMP
     PROFILE prf_PharmaTeam;

    -- ajout de role de connexion + son role de Preparateur
GRANT CONNECT, rle_Preparateur
     TO PreparateurA;

    ---------------------------------------------------

    -- role pour les Pharmacien
CREATE ROLE rle_Pharmacien;
    -- ajout des droits au role
GRANT SELECT, INSERT, UPDATE, DELETE
     ON Pharmaweb.Facture
     TO rle_Pharmacien;
GRANT SELECT, INSERT, UPDATE, DELETE
     ON Pharmaweb.Medecin
     TO rle_Pharmacien;
GRANT SELECT, INSERT, UPDATE, DELETE
     ON Pharmaweb.Medicament
     TO rle_Pharmacien;
GRANT SELECT, INSERT, UPDATE, DELETE
     ON Pharmaweb.Fournisseur
     TO rle_Pharmacien;
GRANT SELECT, INSERT, UPDATE, DELETE
     ON Pharmaweb.Commande
     TO rle_Pharmacien;
GRANT SELECT, INSERT, UPDATE, DELETE
     ON Pharmaweb.Patient
     TO rle_Pharmacien;
GRANT SELECT, INSERT, UPDATE, DELETE
     ON Pharmaweb.Ordonnance
     TO rle_Pharmacien;
GRANT SELECT, INSERT, UPDATE, DELETE
     ON Pharmaweb.Centre_de_gestion
     TO rle_Pharmacien;
GRANT SELECT, INSERT, UPDATE, DELETE
     ON Pharmaweb.Etat
     TO rle_Pharmacien;
GRANT SELECT, INSERT, UPDATE, DELETE
     ON Pharmaweb.Allergene
     TO rle_Pharmacien;
GRANT SELECT, INSERT, UPDATE, DELETE
     ON Pharmaweb.Mutuel
     TO rle_Pharmacien;
GRANT SELECT, INSERT, UPDATE, DELETE
     ON Pharmaweb.Classe_pharmaceutique
     TO rle_Pharmacien;
GRANT SELECT, INSERT, UPDATE, DELETE
     ON Pharmaweb.Ligne_commande
     TO rle_Pharmacien;
GRANT SELECT, INSERT, UPDATE, DELETE
     ON Pharmaweb.Allergique
     TO rle_Pharmacien;
GRANT SELECT, INSERT, UPDATE, DELETE
     ON Pharmaweb.Fournir
     TO rle_Pharmacien;
GRANT SELECT, INSERT, UPDATE, DELETE
     ON Pharmaweb.Incompatibilite
     TO rle_Pharmacien;
GRANT SELECT, INSERT, UPDATE, DELETE
     ON Pharmaweb.Medic_sur_ordo
     TO rle_Pharmacien;

    -- creation d'un Pharmacien A de test
CREATE USER PharmacienA
     IDENTIFIED BY Admin1337
     DEFAULT TABLESPACE PHARMAWEB
     TEMPORARY TABLESPACE TEMP
     PROFILE prf_PharmaTeam;

    -- ajout de role de connexion + son role de Pharmacien
GRANT CONNECT, rle_Pharmacien
     TO PharmacienA;

    ---------------------------------------------------

    ---------------------------------------------------
    --                FOURNISSEURS                   --
    ---------------------------------------------------

    -- on drop les existants
DROP USER FournisseurA CASCADE;
DROP PROFILE prf_Fournisseur;
DROP ROLE rle_Supplier;

    -- profil pour les fournisseurs
CREATE PROFILE prf_Fournisseur
     LIMIT
         SESSIONS_PER_USER 1
         IDLE_TIME 60
         FAILED_LOGIN_ATTEMPTS 3
         PASSWORD_LIFE_TIME UNLIMITED
         ;

    -- role pour les fournisseurs
    -- @todo gestion des "je vois que moi"
CREATE ROLE rle_Supplier;
    -- ajout des droits au role
GRANT SELECT
     ON Pharmaweb.medicament
     TO rle_Supplier;
GRANT SELECT
     ON Pharmaweb.classe_pharmaceutique
     TO rle_Supplier;
GRANT SELECT
     ON Pharmaweb.Incompatibilite
     TO rle_Supplier;
GRANT SELECT, UPDATE
     ON Pharmaweb.fournir
     TO rle_Supplier;
GRANT SELECT
     ON Pharmaweb.fournisseur
     TO rle_Supplier;

    -- creation d'un fournisseur A de test
CREATE USER FournisseurA
     IDENTIFIED BY Admin1337
     DEFAULT TABLESPACE PHARMAWEB
     TEMPORARY TABLESPACE TEMP
     PROFILE prf_Fournisseur;

    -- ajout de role de connexion et de son role de supplier
GRANT CONNECT, rle_Supplier
     TO FournisseurA;

    ---------------------------------------------------

    ---------------------------------------------------
    --                 UTILISATEURS                  --
    ---------------------------------------------------

    -- on drop les existants
DROP USER ClientA CASCADE;
DROP PROFILE prf_User;
DROP ROLE rle_User;

    -- profil pour les utilisateurs
CREATE PROFILE prf_User
     LIMIT
         SESSIONS_PER_USER 1
         IDLE_TIME 60
         FAILED_LOGIN_ATTEMPTS 3
         PASSWORD_LIFE_TIME UNLIMITED
         ;
         -- @todo : on fait quoi pour les exlude?

    -- role pour les utilisateurs
CREATE ROLE rle_User;

    -- ajout des droits au role
GRANT SELECT
     ON Pharmaweb.Medicament
     TO rle_User;
GRANT SELECT, INSERT
     ON Pharmaweb.Medecin
     TO rle_User;
GRANT SELECT, INSERT, UPDATE, DELETE
     ON Pharmaweb.Commande
     TO rle_User;
GRANT SELECT, INSERT
     ON Pharmaweb.Allergique
     TO rle_User;
GRANT SELECT
     ON Pharmaweb.Allergene
     TO rle_User;
GRANT SELECT, INSERT, UPDATE
     ON Pharmaweb.Patient
     TO rle_User;
GRANT SELECT
     ON Pharmaweb.Etat
     TO rle_User;
GRANT SELECT
     ON Pharmaweb.Centre_de_gestion
     TO rle_User;
GRANT SELECT, INSERT, UPDATE
     ON Pharmaweb.Ordonnance
     TO rle_User;
GRANT SELECT
     ON Pharmaweb.Mutuel
     TO rle_User;
GRANT SELECT
     ON Pharmaweb.Classe_pharmaceutique
     TO rle_User;
GRANT SELECT, INSERT, UPDATE, DELETE
     ON Pharmaweb.Ligne_commande
     TO rle_User;
GRANT SELECT
     ON Pharmaweb.Incompatibilite
     TO rle_User;
GRANT SELECT
     ON Pharmaweb.Facture
     TO rle_User;
GRANT SELECT, INSERT
     ON Pharmaweb.Medic_sur_ordo
     TO rle_User;

    -- creation d'un Client A de test
CREATE USER ClientA
     IDENTIFIED BY Admin1337
     DEFAULT TABLESPACE PHARMAWEB
     TEMPORARY TABLESPACE TEMP
     PROFILE prf_User;

    -- ajout de role de connexion et de son role de user
GRANT CONNECT, rle_User
     TO ClientA;
