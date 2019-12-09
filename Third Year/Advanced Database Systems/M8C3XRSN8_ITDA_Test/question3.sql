use sydneytwigg_champs_gym;
delete from gym_members where membership_no="10001";
delete from gym_members where membership_no="10002";
INSERT INTO `sydneytwigg_champs_gym`.`gym_members`
(`Name`,`Surname`,`Membership_No`)
VALUES('Skipper', 'Hopper', '10001');
INSERT INTO `sydneytwigg_champs_gym`.`gym_members`
(`Name`,`Surname`,`Membership_No`)
VALUES('Jane', 'Beste', '10002');
