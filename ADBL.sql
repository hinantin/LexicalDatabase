/*

cd /cygdrive/c/Users/rcastro/Documents/Navicat/MySQL/Servers/hinantin/HNTMedia
cd /cygdrive/c/Users/rcastro/Documents/Navicat/MySQL/Servers/192.168.43.79/ADBL
cp *.sql /cygdrive/c/Users/rcastro/Documents/RCastroq/CloudStorage/DropBox00001/Dropbox/05_Ashaninca/10_Base_de_Datos_Lexica

CREATE USER 'rcastro'@'localhost' IDENTIFIED BY '#rcastro?';
GRANT ALL ON *.* TO 'rcastro'@'%' IDENTIFIED BY '#rcastro?';
FLUSH PRIVILEGES;


*/

DROP DATABASE IF EXISTS `ADBL`;

CREATE DATABASE `ADBL`;

USE `ADBL`;

DROP TABLE IF EXISTS `Lexical_Unit`;

CREATE TABLE `Lexical_Unit`
(
`Id_Lexical_Unit` INT NOT NULL AUTO_INCREMENT, 
`Is_Loan_Word` BIT(1) NOT NULL, 
`Is_Dictionary_Entry` BIT(1) NOT NULL, 
`Is_OWLU` BIT(1) NOT NULL, 
PRIMARY KEY (`Id_Lexical_Unit`)
);

DROP TABLE IF EXISTS `Spelling`;

CREATE TABLE `Spelling`
(
`Id_Spelling` INT NOT NULL AUTO_INCREMENT, 
`Word` VARCHAR(1000) NOT NULL, 
`Spelling_System`  VARCHAR(100) NOT NULL, 
`Source` VARCHAR(1000) NOT NULL, 
`Definition` VARCHAR(5000) NOT NULL, 
`Gloss` VARCHAR(1000) NOT NULL, 
`Definition_ES` VARCHAR(5000), 
`Gloss_ES` VARCHAR(5000), 
`Definition_PT` VARCHAR(5000), 
`Gloss_PT` VARCHAR(5000), 
`Example` VARCHAR(5000), 
`Frequency` INT, 
PRIMARY KEY (`Id_Spelling`)
);

DROP TABLE IF EXISTS `Dialect`;

CREATE TABLE `Dialect`
(
`Id_Dialect` INT NOT NULL AUTO_INCREMENT, 
`Dialect_Name` VARCHAR(100) NOT NULL, 
`Short_Dialect_Name` VARCHAR(10) NOT NULL, 
`Source` VARCHAR(1000) NOT NULL, 
PRIMARY KEY (`Id_Dialect`)
);

INSERT INTO `ADBL`.`Dialect` (`Dialect_Name`, `Short_Dialect_Name`, `Source`) VALUES ('Spanish Loan Words/Préstamos lingüísticos del español', 'ES', 'NONE');
INSERT INTO `ADBL`.`Dialect` (`Dialect_Name`, `Short_Dialect_Name`, `Source`) VALUES ('Ashéninka Perené', 'PRQ', 'NONE');
INSERT INTO `ADBL`.`Dialect` (`Dialect_Name`, `Short_Dialect_Name`, `Source`) VALUES ('Ajyíninka Apurucayali', 'CPC', 'NONE');
INSERT INTO `ADBL`.`Dialect` (`Dialect_Name`, `Short_Dialect_Name`, `Source`) VALUES ('Asháninka', 'CNI', 'NONE');
INSERT INTO `ADBL`.`Dialect` (`Dialect_Name`, `Short_Dialect_Name`, `Source`) VALUES ('Ashéninka Pajonal', 'CJO', 'NONE');
INSERT INTO `ADBL`.`Dialect` (`Dialect_Name`, `Short_Dialect_Name`, `Source`) VALUES ('Ashéninka Pichis', 'CPU', 'NONE');
INSERT INTO `ADBL`.`Dialect` (`Dialect_Name`, `Short_Dialect_Name`, `Source`) VALUES ('Ashéninka Sur de Ucayali', 'CPY', 'NONE');
INSERT INTO `ADBL`.`Dialect` (`Dialect_Name`, `Short_Dialect_Name`, `Source`) VALUES ('Ashéninka Ucayali-Yurúa', 'CPB', 'NONE');
INSERT INTO `ADBL`.`Dialect` (`Dialect_Name`, `Short_Dialect_Name`, `Source`) VALUES ('Inglés/English', 'EN', 'NONE');
INSERT INTO `ADBL`.`Dialect` (`Dialect_Name`, `Short_Dialect_Name`, `Source`) VALUES ('Quechua', 'QU', 'NONE');

