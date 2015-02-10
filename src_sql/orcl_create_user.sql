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

    -- mise en place du profil avec les param de connexion
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

    -- mise en place du profil pour la team phara
CREATE PROFILE prf_PharmaTeam
     LIMIT
         SESSIONS_PER_USER 1
         IDLE_TIME 15
         CONNECT_TIME 60
         FAILED_LOGIN_ATTEMPTS 4
         PASSWORD_LIFE_TIME 45
         ;
         -- @todo : on fait quoi pour les exlude?
