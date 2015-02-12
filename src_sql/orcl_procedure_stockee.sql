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

	-- Procédure de création d'un client --

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
Insert into Patient values(
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
Create or replace fucntion F_Pharmaceutical_Class_List
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

