CREATE DATABASE ADBL;

DROP TABLE IF EXISTS `Lexical_Unit`;

CREATE TABLE `Lexical_Unit`
(
`Id_Lexical_Unit` VARCHAR(10) NOT NULL, 
`Is_Loan_Word` BIT(1), 
`Is_Dictionary_Entry` BIT(1), 
`Is_OWLU` BIT(1), 
PRIMARY KEY (`Id_Lexical_Unit`)
);