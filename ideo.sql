USE `ADBL`;

SELECT CONCAT('| \"[=',`Word`,'', IFNULL(`Morphological_Values`,""), '][Ideo][=',`Definition_EN`,']\" : {',`Word`,'}') FROM `Spelling`;