CREATE or replace procedure PS_Liste_Medoc(
	categmedic in NUMBER, -- numéro categorie du médicament
	remboursable in NUMBER, -- boolean 
) IS
BEGIN
select * from médicament
where MED_REMBOURSABLE = remboursable and CPH_ID=categmedic

create TYPE MEDOC IS record(nom_medoc VARCHAR2(38), num_lot_medoc CHAR(12),ID_CPH_Medoc number(4),Date_expir_medoc DATE, notice_medoc Varchar(255),remobursable_medoc number(1),prix_base_medoc number(5,2),fabric_nom_medoc varchar2(38));
create TYPe List_Medoc is table of MEDOC;

create or replace  function Liste_des_medoc return List_Medoc
	is
		l_emp_medoc List_Medoc := List_Medoc();
		n integer :=0;
	BEGIN
		for r in (select * from medicament)
		loop
			l_emp_medoc.extend;
			n := n+1;
			l_emp_medoc(n) := MEDOC(r.MED_NOM,r.MED_NUM_LOT,r.CPH_ID,r.MED_DATE_EXPIRATION,r.MED_NOTICE,r.MED_REMBOURSABLE,r.MED_PRIX_BASE,r.MED_FABRIC_NOM);
		end loop;
		return l_emp_medoc;
	end;
/
select * from table(Liste_des_medoc);