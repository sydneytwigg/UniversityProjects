USE `techdatingdb`;
DROP PROCEDURE IF EXISTS `get_profile`;

DELIMITER //
CREATE PROCEDURE `get_profile`
(
		/*The input parameter for this procedure is the 
        logged in member IDs.*/
		IN `memberID` INTEGER
)
BEGIN
	/*When the member logs in, their profile details 
    will be fetched from the database in the member 
    table - this makes use of inner joins to fetch the name
    of the gender, orientation and relationship interest from 
    their ID's.*/
    SELECT member.firstname, member.age, member.location, gender.genderName, 
    orientation.orientationName, relationshipinterest.interestedin_relationship
	FROM (((member
	INNER JOIN gender ON member.gender=gender.genderID)
	INNER JOIN orientation on member.orientation=orientation.orientationID)
	INNER JOIN relationshipInterest on 
    member.relationshipinterest=relationshipinterest.relationshipinterestID);
END //


DELIMITER;
