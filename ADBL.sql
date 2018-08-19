/*

For more information write to Richard Alexander Castro Mamani rcastro AT hinant.in 

cd /cygdrive/c/Users/rcastro/Documents/Navicat/MySQL/Servers/hinantin/HNTMedia
cd /cygdrive/c/Users/rcastro/Documents/Navicat/MySQL/Servers/192.168.43.79/ADBL
cp *.sql /cygdrive/c/Users/rcastro/Documents/RCastroq/CloudStorage/DropBox00001/Dropbox/05_Ashaninca/10_Base_de_Datos_Lexica

CREATE USER 'rcastro'@'localhost' IDENTIFIED BY '#rcastro?';
GRANT ALL ON *.* TO 'rcastro'@'%' IDENTIFIED BY '#rcastro?';
FLUSH PRIVILEGES;

*/

DROP DATABASE IF EXISTS `ADBL`;

CREATE DATABASE `ADBL` CHARACTER SET utf8 COLLATE utf8_general_ci;

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
`Id_Spelling` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
`Word` TEXT NOT NULL, 
`Spelling_System`  VARCHAR(100) NOT NULL, 
`Source` TEXT NOT NULL, 
`Definition_EN` TEXT NOT NULL, 
`Gloss_EN` TEXT NOT NULL, 
`Definition_ES` TEXT, 
`Gloss_ES` TEXT, 
`Definition_PT` TEXT, 
`Gloss_PT` TEXT, 
`Morphological_Values` TEXT, 
`Example` TEXT, 
`Frequency` INT, 
PRIMARY KEY (`Id_Spelling`)
);

INSERT INTO `ADBL`.`Spelling` (`Id_Spelling`, `Word`, `Spelling_System`, `Source`, `Definition_EN`, `Gloss_EN`, `Definition_ES`, `Gloss_ES`, `Definition_PT`, `Gloss_PT`, `Morphological_Values`, `Example`, `Frequency`) VALUES ('1', 'eeee', '', '', 'sound.of.fear/anguish', '', 'sonido.de.miedo/angustia', NULL, NULL, NULL, '+whistle.lang.', NULL, NULL);
INSERT INTO `ADBL`.`Spelling` (`Id_Spelling`, `Word`, `Spelling_System`, `Source`, `Definition_EN`, `Gloss_EN`, `Definition_ES`, `Gloss_ES`, `Definition_PT`, `Gloss_PT`, `Morphological_Values`, `Example`, `Frequency`) VALUES ('2', 'eee', '', '\\cite[pag. 84]{anderson:cuentos:85}', 'sound.of.fear/anguish', '', 'sonido.de.miedo/angustia', '', '', '', '+whistle.lang.', NULL, NULL);
INSERT INTO `ADBL`.`Spelling` (`Id_Spelling`, `Word`, `Spelling_System`, `Source`, `Definition_EN`, `Gloss_EN`, `Definition_ES`, `Gloss_ES`, `Definition_PT`, `Gloss_PT`, `Morphological_Values`, `Example`, `Frequency`) VALUES ('3', 'shikerek', '', '\\cite[pag. 96]{anderson:cuentos:85}', 'animal.cry.made.by.a.bear/maini', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DROP TABLE IF EXISTS `Paradigm`;

CREATE TABLE `Paradigm`
(
`Id_Paradigm` INT NOT NULL AUTO_INCREMENT, 
`Source` VARCHAR(1000) NOT NULL, 
PRIMARY KEY (`Id_Paradigm`)
);

INSERT INTO `ADBL`.`Paradigm` (`Id_Paradigm`, `Source`) VALUES ('1', '\\cite[pag. 84]{anderson:cuentos:85}');

DROP TABLE IF EXISTS `Spelling_Paradigm`;

CREATE TABLE `Spelling_Paradigm`
(
`Id_Paradigm` INT NOT NULL, 
`Id_Spelling` INT UNSIGNED NOT NULL UNIQUE, 
`Source` VARCHAR(1000) NOT NULL, 
FOREIGN KEY (`Id_Paradigm`) REFERENCES `Paradigm`(`Id_Paradigm`),
FOREIGN KEY (`Id_Spelling`) REFERENCES `Spelling`(`Id_Spelling`)
);

INSERT INTO `ADBL`.`Spelling_Paradigm` (`Id_Paradigm`, `Id_Spelling`, `Source`) VALUES ('1', '1', '');
INSERT INTO `ADBL`.`Spelling_Paradigm` (`Id_Paradigm`, `Id_Spelling`, `Source`) VALUES ('1', '2', '');

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


