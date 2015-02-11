CREATE or replace function F_nom_medoc
  return varchar2
  as
    nom_medoc varchar2(250);
BEGIN
  select MED_nom into nom_medoc from medicament where MED_NOM='Paracéthamol';
  return nom_medoc;
END;
/