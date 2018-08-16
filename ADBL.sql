/*

cd /cygdrive/c/Users/rcastro/Documents/Navicat/MySQL/Servers/hinantin/HNTMedia
cp *.sql /cygdrive/c/Users/rcastro/Documents/RCastroq/CloudStorage/DropBox00001/Dropbox/05_Ashaninca/10_Base_de_Datos_Lexica

*/

DROP DATABASE IF EXISTS `ADBL`;

CREATE DATABASE `ADBL`;

USE `ADBL`;

DROP TABLE IF EXISTS `Lexical_Unit`;

CREATE TABLE `Lexical_Unit`
(
`Id_Lexical_Unit` VARCHAR(10) NOT NULL, 
`Is_Loan_Word` BIT(1), 
`Is_Dictionary_Entry` BIT(1), 
`Is_OWLU` BIT(1), 
PRIMARY KEY (`Id_Lexical_Unit`)
);

DROP TABLE IF EXISTS `Spelling`;

CREATE TABLE `Spelling`
(
`Id_Spelling` VARCHAR(10) NOT NULL, 
`Word` BIT(1), 
`Spelling_System` BIT(1), 
`Source` BIT(1), 
`Definition` BIT(1), 
`Gloss` BIT(1), 
`Definition_Sp` BIT(1), 
`Gloss_Sp` BIT(1), 
`Example` BIT(1), 
`Frequency` BIT(1), 
PRIMARY KEY (`Id_Spelling`)
);