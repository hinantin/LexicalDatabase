CREATE DATABASE ADBL;

DROP TABLE IF EXISTS `Lexical_Unit`;

CREATE TABLE `Lexical_Unit`
(
`Id_Lexical_Unit` VARCHAR(10) NOT NULL, 
`Is_Loan_Word` VARCHAR(10), 
`Is_Dictionary_Entry` VARCHAR(10), 
`Is_OWLU` VARCHAR(20), 
PRIMARY KEY (`Id_Lexical_Unit`)
);