use sydneytwigg_champs_gym;

ALTER TABLE `sydneytwigg_champs_gym`.`gym_members` 
ADD PRIMARY KEY (`Membership_No`);
ALTER TABLE `sydneytwigg_champs_gym`.`gym_members` 
ADD CONSTRAINT UNIQUE(`Membership_No`);

ALTER TABLE `sydneytwigg_champs_gym`.`gym_trainers` 
ADD PRIMARY KEY (`Trainer_No`);
ALTER TABLE `sydneytwigg_champs_gym`.`gym_trainers` 
ADD CONSTRAINT UNIQUE(`Trainer_No`);

ALTER TABLE `sydneytwigg_champs_gym`.`gym_classes` 
ADD PRIMARY KEY (`className`);
ALTER TABLE `sydneytwigg_champs_gym`.`gym_classes` 
ADD CONSTRAINT UNIQUE(`className`);
