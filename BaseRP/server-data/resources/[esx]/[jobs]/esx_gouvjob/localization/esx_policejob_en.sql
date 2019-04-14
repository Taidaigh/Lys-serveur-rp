INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_gouv','Gouvernement',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
  ('society_gouv','Gouvernement',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_gouv', 'Gouvernement', 1)
;

INSERT INTO `jobs` (name, label) VALUES
  ('gouv','Gouvernement')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('gouv',0,'recrue','Stagiaire',20,{},{}),
  ('gouv',1,'chef','Secretaire',40,{},{}),
  ('gouv',2,'senateur','Sénateur',65,{},{}),
  ('gouv',3,'boss','Président',80,{},{})
;
