/* tables match with id 1 and id 2
member with firstname 


SELECT `member`.`memberID`, `member`.`firstname`, `match`.`memberID_1`, `match`.`memberID_2`
FROM `techdatingdb`.`member` 
JOIN `techdatingdb`.`match` ON `match`.`memberID_1` = `member`.`memberID`
JOIN `techdatingdb`.`match` ON `match`.`memberID_2` = `member`.`memberID`;



USE `techdatingdb`;

SELECT a.memberID, a.firstname,a.firstname, b1.memberID_1, b2.memberID_2
FROM member a 
JOIN `match` b1 ON  b1.memberID_1 = a.memberID
JOIN `match` b2 ON  b2.memberID_1 = a.memberID
WHERE b1.memberID_1 = '2' OR b2.memberID_2 = '2'; 


SELECT a.firstname, a.firstname
FROM member a 
JOIN `match` b1 ON  b1.memberID_1 = a.memberID
JOIN `match` b2 ON  b2.memberID_1 = a.memberID
WHERE b1.memberID_1 = '2' OR b2.memberID_2 = '2';


USE `techdatingdb`;
SELECT distinct b1.firstname, b1.firstname
from `match` a
JOIN  member b1 ON  a.memberID_1 = b1.memberID
JOIN member b2 ON  a.memberID_1 = b1.memberID;*/

USE `techdatingdb`;
SELECT a.firstname
FROM member a 
JOIN `match` b1 ON  b1.memberID_1 = a.memberID
JOIN `match` b2 ON  b2.memberID_1 = a.memberID
WHERE b1.memberID_1 = '2' OR b2.memberID_2 = '2'; 