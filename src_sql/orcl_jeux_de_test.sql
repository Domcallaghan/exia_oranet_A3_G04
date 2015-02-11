Insert into Fournisseur(FOU_NOM ,FOU_ADRESSE1 ,FOU_CP ,FOU_VILLE ) values('Fournisseur1','adresse1','76000','Rouen');
Insert into Fournisseur(FOU_NOM ,FOU_ADRESSE1 ,FOU_CP ,FOU_VILLE ) values('Fournisseur2','adresse2','76001','ALcatross');

Insert Into Medecin(MED_NOM,MED_Adresse1,MED_cp,MEd_ville,med_num_agrement,MED_SPECIALITE) values('medecin1','adresse1','76000','nicolas','125465671523','generalisation');
Insert Into Medecin(MED_NOM,MED_Adresse1,MED_cp,MEd_ville,med_num_agrement,MED_SPECIALITE) values('medecin2','adresse2','95320','noel','125465674823','rhumathologue');
Insert Into Medecin(MED_NOM,MED_Adresse1,MED_cp,MEd_ville,med_num_agrement,MED_SPECIALITE) values('medecin2','adresse2','95320','noel','125465674823','rhumathologue');

Insert into MUTUEL values (1,'smeno');
Insert into MUTUEL values (1,'LMDE');
Insert into MUTUEL values (1,'PascherPascher');

INSERT INTO Centre_de_gestion VALUES(1,1, '15 rue Poliveau', '', '', '75000', 'Paris');
INSERT INTO Centre_de_gestion VALUES(1,2, '326 avenue Foch', '', '', '76000', 'Rouen');
INSERT INTO Centre_de_gestion VALUES(1,1, '2 Place Clichy', 'Batiment 3', '', '59000', 'Lille');
INSERT INTO Centre_de_gestion VALUES(1,3, 'Galerie marchande', '', '', '75000', 'Paris');

INSERT INTO Patient VALUES (1,1,1 ,'Durand','Annabelle','28-03-1994','3 rue de l église','','','75000', 'Paris', '245178963548156', '0645847915', '159753123654789', 'tierspayant', 25);
INSERT INTO Patient VALUES (1,1,2 ,'Dupond','Martin','14-12-1985','12 rue des ciboulettes','Appartement 1','','85000', 'Juissieux', '147852369874563', '0232547896', '151515151515151', 'tierspayant', 75);
INSERT INTO Patient VALUES (1,1,1 ,'Schejkowski','Anton','01-01-1999','20 boulevard des Parisiens','Appartement 6','','78000', 'Poissy', '123547896587452', '0232658975', '151515151515151', 'tierspayant',85);

Insert into allergie values(1,'Foin');
Insert into allergie values(1,'Poil de chat');
Insert into allergie values(1,'Arachide');
Insert into allergie values(1,'Acarien');

Insert into Etat values(1,'En attente');
Insert into Etat values(2,'Accepté');
Insert into Etat values(2,'Refusé');

Insert into Classe_Pharmaceutique values (1,'Analgésiques et Anti-inflammatoires',99,'aeeygsdfksfjkgsbksruigljkqremohurzeqhofzeqoqrsmioqgriojqgro');
Insert into Classe_Pharmaceutique values (1,'Antimycosiques',15,'ljfgnseuoedzlbefjkzsbfjskbkjehzjbjkezbk');
insert into Classe_Pharmaceutique values (5,'Gastro-entérologie et hépatologie',56,'hfseiuhfeiuhseuihefsiheiheh');

Insert into Ordonnance values (1,1,2,'https://azedsdqz','04/09/2013');
Insert into Ordonnance values (1,2,3,'https://ohfsdkwhfes','20/02/2001');
Insert into Ordonnance values (1,2,2,'https://ohfsdkwhf45','01/04/2014');

Insert into Medicament values ('Paracéthamol','563541258965',1,'02/01/2014','azqdssqdzqesdzsdffeser',1,15,'biofarma');
Insert into Medicament values ('Doliprane','155311541521',3,'02/01/2014','otipmodbshjbd',0,30,'servier');
----------------------------------------------------------------------
Insert into Commande values (1,1,1,1256,1000,256,0);
Insert into Commande values (1,3,2,2566,1400,166,1000);

Insert into ligne_commande values ('Paracéthamol','563541258965',1,25,20);
Insert into ligne_commande values ('Doliprane','155311541521',2,65,5);

Insert into Fournir values(1,'Paracéthamol','563541258965',1000);
Insert into Fournir values(2,'Paracéthamol','563541258965',200);

Insert into INCOMPATIBILITE values(2,1);
Insert into INCOMPATIBILITE values(1,3);

Insert into RATTACHER values(1,4);
Insert into RATTACHER values(2,2);

