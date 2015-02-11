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

    -- profil avec les param de connexion
CREATE PROFILE prf_Pharmaweb
     LIMIT
         SESSIONS_PER_USER 1;

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

    ---------------------------------------------------

    ---------------------------------------------------
    --                FOURNISSEURS                   --
    ---------------------------------------------------

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
GRANT
     SELECT ON Pharmaweb.medicament,

     SELECT ON Pharmaweb.classe_pharmaceutique,

     SELECT ON Pharmaweb.incompatibiliter,

     SELECT ON Pharmaweb.fournir,
     UPDATE ON Pharmaweb.fournir,

     SELECT ON Pharmaweb.fournisseur

     TO rle_Supplier;
    ---------------------------------------------------

    ---------------------------------------------------
    --                 UTILISATEURS                  --
    ---------------------------------------------------

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
GRANT
     SELECT ON Pharmaweb.medicament,

     SELECT ON Pharmaweb.medecin,
     INSERT ON Pharmaweb.medecin,

     SELECT ON Pharmaweb.commande,
     INSERT ON Pharmaweb.commande,
     UPDATE ON Pharmaweb.commande,

     SELECT ON Pharmaweb.allergie,
     INSERT ON Pharmaweb.allergie,

     SELECT ON Pharmaweb.patient,
     INSERT ON Pharmaweb.patient,
     UPDATE ON Pharmaweb.patient,

     SELECT ON Pharmaweb.etat,

     SELECT ON Pharmaweb.centre_de_gestion,
     INSERT ON Pharmaweb.centre_de_gestion,

     SELECT ON Pharmaweb.ordonnance,
     INSERT ON Pharmaweb.ordonnance,
     UPDATE ON Pharmaweb.ordonnance,

     SELECT ON Pharmaweb.mutuel,
     INSERT ON Pharmaweb.mutuel,

     SELECT ON Pharmaweb.classe_pharmaceutique,

     SELECT ON Pharmaweb.ligne_commande,
     INSERT ON Pharmaweb.ligne_commande,
     UPDATE ON Pharmaweb.ligne_commande,

     SELECT ON Pharmaweb.incompatibiliter,

     SELECT ON Pharmaweb.posseder,
     INSERT ON Pharmaweb.posseder,
     UPDATE ON Pharmaweb.posseder

     TO rle_User;
