CREATE DATABASE LDB_CNI;
DROP TABLE IF EXISTS TPhoneme;
CREATE TABLE TPhoneme 
(
cpIdPhoneme VARCHAR(10) NOT NULL, 
cpPhonemeIPA VARCHAR(10), 
cpPhonemeSAMPA VARCHAR(20), 
cpDescripcion VARCHAR(2000), 
PRIMARY KEY (cpIdPhoneme)
);
/*

the archiphoneme N is not included in this version

*/
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00001','i','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00002','e','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00003','a','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00004','o','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00005','p','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00006','pʲ','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00007','t','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00008','tʰ','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00009','pʲ','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00010','k','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00011','kʲ','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00012','g','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00013','s','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00014','ʃ','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00015','ʧ','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00016','tsʰ','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00017','ts','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00018','h','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00019','m','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00020','n','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00021','ɲ','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00022','ɾ','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00023','ɾʲ','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00024','w','','');
INSERT INTO TPhoneme(cpIdPhoneme,cpPhonemeIPA,cpPhonemeSAMPA,cpDescripcion) VALUES('PHONE00025','j','','');

DROP TABLE IF EXISTS TOrtography;
CREATE TABLE TOrtography (cpIdOrtography VARCHAR(10) NOT NULL, cpAuthor VARCHAR(500), cpYear VARCHAR(20), PRIMARY KEY (cpIdOrtography));
INSERT INTO TOrtography(cpIdOrtography,cpAuthor,cpYear) VALUES('ORT00001','SIL(PAYNE 1987,1989)','1987');
INSERT INTO TOrtography(cpIdOrtography,cpAuthor,cpYear) VALUES('ORT00002','CIAMB (JACINTO BERNALES 2007)','2007');
INSERT INTO TOrtography(cpIdOrtography,cpAuthor,cpYear) VALUES('ORT00003','ONLINE VERSION (ROMANO, SEBASTIÁN 2008)','2008');
INSERT INTO TOrtography(cpIdOrtography,cpAuthor,cpYear) VALUES('ORT00004','ELENA MIHAS','2010');

DROP TABLE IF EXISTS TGrapheme;
CREATE TABLE TGrapheme (cpIdGrapheme VARCHAR(10) NOT NULL, cpIdOrthography VARCHAR(10), cpIdPhoneme VARCHAR(10), cpGrapheme VARCHAR(10), PRIMARY KEY (cpIdGrapheme));
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00001','ORT00001','PHONE00001', 'i');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00002','ORT00001','PHONE00003', 'a');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00003','ORT00001','PHONE00004', 'o');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00004','ORT00001','PHONE00005', 'p');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00005','ORT00001','PHONE00006', 'py');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00006','ORT00001','PHONE00007', 't');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00007','ORT00001','PHONE00008', 'th');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00008','ORT00001','PHONE00009', 'ty');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00009','ORT00001','PHONE00010', 'c');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00010','ORT00001','PHONE00010', 'qu');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00011','ORT00001','PHONE00011', 'qy');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00012','ORT00001','PHONE00012', 'g');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00013','ORT00001','PHONE00013', 's');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00014','ORT00001','PHONE00014', 'sh');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00015','ORT00001','PHONE00015', 'ch');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00016','ORT00001','PHONE00016', 'ts');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00017','ORT00001','PHONE00017', 'tz');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00018','ORT00001','PHONE00018', 'j');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00019','ORT00001','PHONE00019', 'm');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00020','ORT00001','PHONE00020', 'n');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00021','ORT00001','PHONE00021', 'ñ');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00022','ORT00001','PHONE00022', 'r');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00023','ORT00001','PHONE00023', 'ry');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00024','ORT00001','PHONE00024', 'v');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00025','ORT00001','PHONE00025', 'y');

INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00026','ORT00002','PHONE00001', 'i');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00027','ORT00002','PHONE00002', 'e');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00028','ORT00002','PHONE00003', 'a');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00029','ORT00002','PHONE00004', 'o');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00030','ORT00002','PHONE00005', 'p');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00031','ORT00002','PHONE00006', 'pi');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00032','ORT00002','PHONE00007', 't');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00033','ORT00002','PHONE00009', 'ty');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00034','ORT00002','PHONE00010', 'k');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00035','ORT00002','PHONE00011', 'ki');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00036','ORT00002','PHONE00012', 'g');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00037','ORT00002','PHONE00013', 's');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00038','ORT00002','PHONE00014', 'sh');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00039','ORT00002','PHONE00015', 'ch');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00040','ORT00002','PHONE00016', 'ts');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00041','ORT00002','PHONE00017', 'ts');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00042','ORT00002','PHONE00017', 't');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00043','ORT00002','PHONE00018', 'j');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00044','ORT00002','PHONE00019', 'm');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00045','ORT00002','PHONE00020', 'n');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00046','ORT00002','PHONE00021', 'ñ');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00047','ORT00002','PHONE00022', 'r');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00048','ORT00002','PHONE00023', 'ri');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00049','ORT00002','PHONE00024', 'b');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00050','ORT00002','PHONE00025', 'y');

INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00051','ORT00003','PHONE00001', 'i');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00052','ORT00003','PHONE00002', 'e');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00053','ORT00003','PHONE00003', 'a');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00054','ORT00003','PHONE00004', 'o');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00055','ORT00003','PHONE00005', 'p');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00056','ORT00003','PHONE00006', 'pi');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00057','ORT00003','PHONE00007', 't');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00058','ORT00003','PHONE00009', 'ty');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00059','ORT00003','PHONE00010', 'k');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00060','ORT00003','PHONE00011', 'ki');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00061','ORT00003','PHONE00013', 's');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00062','ORT00003','PHONE00014', 'sh');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00063','ORT00003','PHONE00015', 'ch');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00064','ORT00003','PHONE00016', 'ts');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00065','ORT00003','PHONE00017', 'ts');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00066','ORT00003','PHONE00017', 't');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00067','ORT00003','PHONE00018', 'j');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00068','ORT00003','PHONE00019', 'm');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00069','ORT00003','PHONE00020', 'n');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00070','ORT00003','PHONE00021', 'ñ');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00071','ORT00003','PHONE00022', 'r');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00072','ORT00003','PHONE00023', 'ri');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00073','ORT00003','PHONE00024', 'b');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00074','ORT00003','PHONE00025', 'y');

INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00075','ORT00004','PHONE00001', 'i');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00076','ORT00004','PHONE00002', 'e');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00077','ORT00004','PHONE00003', 'a');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00078','ORT00004','PHONE00004', 'o');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00079','ORT00004','PHONE00005', 'p');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00080','ORT00004','PHONE00006', 'py');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00081','ORT00004','PHONE00007', 't');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00082','ORT00004','PHONE00009', 'ty');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00083','ORT00004','PHONE00010', 'k');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00084','ORT00004','PHONE00011', 'ky');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00085','ORT00004','PHONE00013', 's');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00086','ORT00004','PHONE00014', 'sh');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00087','ORT00004','PHONE00015', 'ch');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00088','ORT00004','PHONE00016', 'ts');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00089','ORT00004','PHONE00017', 'tz');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00090','ORT00004','PHONE00018', 'h');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00091','ORT00004','PHONE00019', 'm');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00092','ORT00004','PHONE00020', 'n');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00093','ORT00004','PHONE00021', 'ny');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00094','ORT00004','PHONE00022', 'r');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00095','ORT00004','PHONE00023', 'ry');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00096','ORT00004','PHONE00024', 'v');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00097','ORT00004','PHONE00024', 'w');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00098','ORT00004','PHONE00025', 'y');
INSERT INTO TGrapheme(cpIdGrapheme,cpIdOrthography,cpIdPhoneme,cpGrapheme) VALUES('GRAPH00099','ORT00004','PHONE00020', 'N');

