SET @job_name = 'epicier';
SET @society_name = 'society_epicier';
SET @job_Name_Caps = 'Épicier';



INSERT INTO `addon_account` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1),
  ('society_epicier_fridge', 'Épicier (frigo)', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `jobs` (name, label) VALUES
  (@job_name, @job_Name_Caps)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  (@job_name, 0, 'stagiaire', 'Stagiaire', 250, '{}', '{}'),
  (@job_name, 1, 'vendeur', 'Vendeur', 300, '{}', '{}'),
  (@job_name, 2, 'chef', 'Chef d\'Équipe', 350, '{}', '{}'),
  (@job_name, 3, 'boss', 'Patron', 400, '{}', '{}')
;
