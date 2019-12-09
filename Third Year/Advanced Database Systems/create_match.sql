USE `techdatingdb`;
DROP PROCEDURE IF EXISTS `create_match`;

DELIMITER //
CREATE PROCEDURE `create_match`
(
		/*The input parameters for this procedure are the matched 
        member IDs.*/
		IN `memberID_1` INTEGER,
        IN `memberID_2` INTEGER
)
BEGIN
	/*Two users will be automatically matched together using 
    an algorithm in the Java code. This procedure is then called 
    using their ID's as parameters to place those users into the 
    match table.*/
    INSERT INTO `techdatingdb`.`match`(`memberID_1`, `memberID_2`)
    VALUES (`memberID_1`, `memberID_2`);
END //


DELIMITER;



