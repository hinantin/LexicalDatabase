USE `ADBL`;

-- SELECT CONCAT('| \"[=',`Word`,'', IFNULL(`Morphological_Values`,''), '][Ideo][=',`Definition_EN`,'',,']\" : {',`Word`,'}') AS `Entry` FROM `Spelling`;

DROP PROCEDURE IF EXISTS `sp_QueryEntries`;

DELIMITER //
CREATE PROCEDURE `sp_QueryEntries`
(
	IN IN_WordClass VARCHAR(30) 
)
BEGIN 
  SELECT CONCAT('| \"[=',`Word`,'', IFNULL(`Morphological_Values`,''), '][',IN_WordClass,'][=',`Definition_EN`,'',IF(ISNULL(`Definition_ES`),'',CONCAT(' (ES: ',`Definition_ES`,')')),']\" : {',`Word`,'}', IF(ISNULL(`Source`),'',CONCAT(' ! ',`Source`))) AS `Entry` FROM `Spelling`;
END //

DELIMITER ;
