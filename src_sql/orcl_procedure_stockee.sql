CREATE or replace procedure PS_Liste_Medoc(
	categmedic in NUMBER, -- numéro categorie du médicament
	remboursable in NUMBER, -- boolean 
) IS
BEGIN
select * from medicament
where MED_REMBOURSABLE = remboursable and CPH_ID=categmedic;
END;