use sydneytwigg_champs_gym;
select * from gym_classes;

ALTER TABLE `sydneytwigg_champs_gym`.`gym_classes` 
CHANGE COLUMN `classTime` `classTime` TIME NOT NULL ;



