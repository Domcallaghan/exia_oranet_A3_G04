    ---------------------------------------------------
    ---------------------------------------------------
    --                                               --
    -- fichier de creation des utilisateurs et roles --
    --                  By Benoit                    --
    --                                               --
    ---------------------------------------------------
    ---------------------------------------------------

    -- L'utilisateur principale Pharmaweb

CREATE USER Pharmaweb
     IDENTIFIED BY Admin1337
     DEFAULT TABLESPACE PHARMAWEB TEMPORARY TABLESPACE TEMP;
    -- ajout de role de connexion et de modification
GRANT CONNECT, RESOURCE TO Pharmaweb;
