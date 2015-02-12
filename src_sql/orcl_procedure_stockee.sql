		----Creation des type nécessaire pour le renvoie de la liste de médicament-----
	--créer un type medicament qui récupére toutes les  variable 
create or replace TYPE MEDOC IS object (
	nom_medoc VARCHAR2(38),
	num_lot_medoc CHAR(12),
	ID_CPH_Medoc number(4),
	Date_expir_medoc DATE,
	notice_medoc Varchar(255),
	remboursable_medoc number(1),
	prix_base_medoc number(5,2),
	fabric_nom_medoc varchar2(38)
	);	
/

	--Créer un type de tableau de Medoc
create or replace TyPe List_Medoc is table of MEDOC;  
/

	-- function qui donne la liste des médicament
Create or replace  function F_Drug_list(    
	categmedic in NUMBER, -- numéro categorie du médicament
	refundable in NUMBER -- boolean 
	) return List_Medoc
	is
		l_emp_medoc List_Medoc := List_Medoc();
		n integer :=0;
	BEGIN
		for r in (select * from pharmaweb.medicament where MED_REMBOURSABLE = refundable and CPH_ID=categmedic)
		loop
			l_emp_medoc.extend;
			n := n+1;
			l_emp_medoc(n) := MEDOC(
				r.MED_NOM,
				r.MED_NUM_LOT,
				r.CPH_ID,
				r.MED_DATE_EXPIRATION,
				r.MED_NOTICE,
				r.MED_REMBOURSABLE,
				r.MED_PRIX_BASE,
				r.MED_FABRIC_NOM
				);
		end loop;
		return l_emp_medoc;
	end;
/
-- select * from table(F_Drug_list(1,1));

		----- Procédure de création d'un client -----

Create or replace Procedure PS_SUBMIT_CUSTOMER(
	PAT_NUM NUMBER ,
	MED_ID NUMBER ,
	CDG_ID NUMBER ,
	PAT_NOM VARCHAR2 ,
	PAT_PRENOM VARCHAR2 ,
	PAT_NAISSANCE DATE ,
	PAT_ADRESSE1 VARCHAR2 ,
	PAT_ADRESSE2 VARCHAR2 ,
	PAT_ADRESSE3 VARCHAR2 ,
	PAT_CP CHAR ,
	PAT_VILLE CHAR ,
	PAT_NUM_SECU_SOCIAL CHAR ,
	PAT_TEL CHAR ,
	PAT_NUM_ADHE_MUTUEL CHAR ,
	PAT_MODE_REMBOURSEMENT VARCHAR2 ,
	PAT_COTISSATION_MUT NUMBER ,
	PAT_AUTRE_INDIQUATION VARCHAR2
)
as
BEGIN
Insert into pharmaweb.Patient values(
	PAT_NUM,
	MED_ID,
	CDG_ID,
	PAT_NOM,
	PAT_PRENOM,
	PAT_NAISSANCE,
	PAT_ADRESSE1,
	PAT_ADRESSE2,
	PAT_ADRESSE3,
	PAT_CP,
	PAT_VILLE,
	PAT_NUM_SECU_SOCIAL,
	PAT_TEL,
	PAT_NUM_ADHE_MUTUEL,
	PAT_MODE_REMBOURSEMENT,
	PAT_COTISSATION_MUT,
	PAT_AUTRE_INDIQUATION
);
end;
/

		----Function qui resort la liste des catégorie de médicament (classe pharmaceutique)----

	-- créer un type Categorie de médicament qui récupére toutes les  variable 
CREATE or replace TYPE Categ_medoc is object(
	CPH_ID NUMBER(4),
	CPH_NOM VARCHAR2(255),
	CPH_POURC_REMBOURSSEMENT NUMBER(4),
	CPH_RESUME VARCHAR2(255)
	);
/
	-- créer un type de liste de Categorie de medicament
Create or replace Type List_Categ is table of Categ_medoc;
/

	--Fontion qui retourne la liste 
Create or replace function F_Pharmaceutical_Class_List
	return List_Categ
	is
		l_catg_medoc List_Categ := List_Categ();
		n integer :=0;
	BEGIN
		for r in (select * from pharmaweb.CLASSE_PHARMACEUTIQUE)
		loop
			l_catg_medoc.extend;
			n := n+1;
			l_catg_medoc(n) := Categ_medoc(
				r.CPH_ID,
				r.CPH_NOM,
				r.CPH_POURC_REMBOURSSEMENT,
				r.CPH_RESUME
				);
		end loop;
		return l_catg_medoc;
	end;

--  select * from table(F_Pharmaceutical_Class_List);

 --Connexion

 -- Insert commande 

		------- liste des commande du client(id) ------
CREATE or replace TYPE Command_customer is object(
    COM_ID NUMBER(2)  ,
    ETAT_ID NUMBER(4)  ,
    PAT_NUM NUMBER(2)  ,
    COM_MTN_TOTALE NUMBER(5,2)  ,
    COM_MTN_PATIENT NUMBER(5,2)  ,
    COM_MTN_SECU NUMBER(5,2)  ,
    COM_MTN_MUTUEL NUMBER(5,2)  ,
    COM_QUESTION NUMBER(1)  
	);
/
	-- créer un type de liste de Commande de medicament
Create or replace Type List_command_customer is table of Command_customer;
/

	-- Function qui retourne la liste des client
Create or replace function F_Command_Customer_List
(
	Num_Pat in NUMBER
)
	return List_command_customer
	is
		l_command_customer List_command_customer := List_command_customer();
		n integer :=0;
	BEGIN
		for r in (select * from pharmaweb.Commande where PAT_NUM = Num_Pat)
		loop
			l_command_customer.extend;
			n := n+1;
			l_command_customer(n) := Command_customer(
				r.COM_ID,
				r.ETAT_ID,
				r.PAT_NUM,
				r.COM_MTN_TOTALE,
				r.COM_MTN_PATIENT,
				r.COM_MTN_SECU,
				r.COM_MTN_MUTUEL,
				r.COM_QUESTION
				);
		end loop;
		return l_command_customer;
	end;
	/
 		----- toutes les commandes -----
Create or replace function F_All_Command_Customer_List
	return List_command_customer
	is
		l_command_customer List_command_customer := List_command_customer();
		n integer :=0;
	BEGIN
		for r in (select * from pharmaweb.Commande )
		loop
			l_command_customer.extend;
			n := n+1;
			l_command_customer(n) := Command_customer(
				r.COM_ID,
				r.ETAT_ID,
				r.PAT_NUM,
				r.COM_MTN_TOTALE,
				r.COM_MTN_PATIENT,
				r.COM_MTN_SECU,
				r.COM_MTN_MUTUEL,
				r.COM_QUESTION
				);
		end loop;
		return l_command_customer; 
	end;
	/	
 		---- détail commande ----
create or replace TYPE Command_detail is object(
    MED_NOM VARCHAR2(38),
    MED_NUM_LOT CHAR(12),
    MED_DATE_EXPIRATION DATE,
    MED_FARIC_NOM VARCHAR2(38),
    MED_REMBOURSABLE NUMBER(1),
    QTE NUMBER(4),
    PRIX_ACTUEL NUMBER(7,2)
	);
/

CREATE or replace TYPE Command_detail_list is table of Command_detail;
/

Create or replace Function F_Command_Detail
(
	Num_Command in NUMBER
	)
	return Command_detail_list
is
	l_mediament_com Command_detail_list := Command_detail_list();
	n integer :=0;
BEGIN
	for r in (Select unique LC.MED_NOM, LC.MED_NUM_LOT,MED_DATE_EXPIRATION,MED_FABRIC_NOM,MED_REMBOURSABLE,QTE,PRIC_ACTUEL
				from Ligne_COMMANDE LC
				inner join pharmaweb.medicament M
  					on LC.MED_NOM = M.MED_NOM and LC.MED_NUM_LOT = M.MED_NUM_LOT
				inner join pharmaweb.CLASSE_PHARMACEUTIQUE CP
  					on CP.CPH_ID = M.CPH_ID
				where COM_ID = Num_Command 
			)
		loop
			l_mediament_com.extend;
			n := n+1;
			l_mediament_com(n) := Command_detail(
				r.MED_NOM,
				r.MED_NUM_LOT,
        r.MED_DATE_EXPIRATION,
				r.MED_FABRIC_NOM,
				r.MED_REMBOURSABLE,
				r.QTE,
				r.PRIC_ACTUEL
				);
				end loop;
		return l_mediament_com; 
	end;
	/




CREATE or replace TYPE Drug_detail is object(
    MED_NOM VARCHAR2(38),
    MED_NUM_LOT CHAR(12),
    MED_DATE_EXPIRATION DATE, 
    MED_NOTICE VARCHAR2(255),  
    MED_REMBOURSABLE NUMBER(1),
    MED_PRIX_BASE NUMBER(5,2),
    MED_FABRIC_NOM VARCHAR2(38),
    CPH_NOM VARCHAR2(38)
 );
/
Create or replace type list_drug_detail is table of Drug_detail;
/
CREATE OR REPLACE FUNCTION F_drug_details
	(
	 numlot char,
	 nom VARCHAR2
	)
	return list_drug_detail
	IS
    	MED_NOM VARCHAR2(38);
   	 	MED_NUM_LOT CHAR(12);
    	MED_DATE_EXPIRATION DATE; 
    	MED_NOTICE VARCHAR2(255);
    	MED_REMBOURSABLE NUMBER(1);
    	MED_PRIX_BASE NUMBER(7,2);
    	MED_FABRIC_NOM VARCHAR2(38);
    	CPH_NOM VARCHAR2(38);
      l_detail list_drug_detail := list_drug_detail();
      n integer:=1;
	BEGIN
		l_detail.extend;
		SELECT MED_NOM, MED_NUM_LOT, med_date_expiration, med_notice, med_remboursable, med_prix_base, med_fabric_nom, 
		cph_nom 
		INTO MED_NOM,MED_NUM_LOT,MED_DATE_EXPIRATION,MED_NOTICE,MED_REMBOURSABLE,MED_PRIX_BASE,MED_FABRIC_NOM,CPH_NOM 
		FROM pharmaweb.MEDICAMENT M, pharmaweb.CLASSE_PHARMACEUTIQUE CP 
		WHERE M.cph_id = CP.cph_id AND MED_NOM = nom AND MED_NUM_LOT = numlot;
    l_detail(n) := Drug_detail(MED_NOM,MED_NUM_LOT,MED_DATE_EXPIRATION,MED_NOTICE,MED_REMBOURSABLE,MED_PRIX_BASE,MED_FABRIC_NOM,CPH_NOM);
	RETURN l_detail; 
END;
/
--select * from table(F_drug_details('563541258965','Paracéthamol'))

--Function pour les contre indication
Create or replace type List_Contre_indication is table of Varchar2(200);

Create or replace function F_Contre_indication
(
	ID_CPH in number
	)
return List_Contre_indication
as
  L_Contre_Indication List_Contre_indication := List_Contre_indication();
  req varchar(200);
  n integer :=0;
	BEGIN
     for r in (select CPH_NOM into req
       from pharmaweb.INCOMPATIBILITE I 
       inner join pharmaweb.CLASSE_PHARMACEUTIQUE CP 
       on I.CPH_ID = CP.CPH_ID 
       where CPH_ID_1 = ID_CPH)
     		loop
		       L_Contre_Indication.extend;
		       n:=n+1;
		       L_Contre_Indication(n) := r.CPH_NOM;
     		end loop;
     	return L_Contre_Indication;
    end;
--  select * from table( F_Contre_indication(1));

 -- supprimer commande 

