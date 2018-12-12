/*Pour voir si c'est bon  	show databases; 
Pour voir les tableaux 		show tables;
Pour voir une colonne		describe languages;
Pour changer de base de données   USE nom_de_la_base;*/

/*PARTIE 1*/
/*exercice 1   		Créer une base de données languages.*/CREATE DATABASE `languages`;
/*exercice 2 		Créer une base de données webDevelopment avec l’encodage UTF-8.*/CREATE DATABASE `webDevelopment` CHARACTER SET 'utf8';
/*exercice 3 		Créer une base de données frameworks avec l’encodage UTF-8 si elle n’existe pas.*/CREATE DATABASE IF NOT EXISTS `frameworks`
    -> CHARACTER SET 'utf8';
/*exercice 4 		Créer une base de données languages avec l’encodage UTF-8 si elle n’existe pas.*/CREATE DATABASE IF NOT EXISTS `languages` 
	-> CHARACTER SET 'utf8';
/*exercice 5 		Supprimer la base de données languages.*/DROP DATABASE `languages`;
/*exercice 6 		Supprimer la base de données frameworks si elle existe.*/DROP DATABASE IF EXISTS `frameworks`;
/*exercice 7 		Supprimer la base de données languages si elle existe.*/DROP DATABASE IF EXISTS `languages`;




/*Partie 2 : Création de tables*/


/*exercice1 Dans la base de données webDevelopment, créer la table languages avec les colonnes :
id (type INT, auto-incrémenté, clé primaire)
language (type VARCHAR)*/ CREATE TABLE `languages` ( `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, `language` VARCHAR(50) );


/*exercice2 Dans la base de données webDevelopment, créer la table tools avec les colonnes suivantes :
id (type INT, auto-incrémenté, clé primaire) tool (type VARCHAR)*/ CREATE TABLE `tools` ( `id` INT AUTO_INCREMENT PRIMARY KEY, `tool` VARCHAR(50) );

/*exercice3 Dans la base de données webDevelopment, créer la table frameworks avec les colonnes suivantes :
id (type INT, auto-incrémenté, clé primaire)
name (type VARCHAR)*/CREATE TABLE `frameworks` ( `id` INT AUTO_INCREMENT PRIMARY KEY, `name` VARCHAR(50) );

/*exercice4 Dans la base de données webDevelopment, créer la table librairies avec les colonnes suivantes :
id (type INT, auto-incrémenté, clé primaire)
librairy (type VARCHAR)*/CREATE TABLE `librairies` ( `id` INT AUTO_INCREMENT PRIMARY KEY, `librairy` VARCHAR(50) );

/*exercice5 Dans la base de données webDevelopment, créer la table ide avec les colonnes suivantes :
id (type INT, auto-incrémenté, clé primaire)
ideName (type VARCHAR)*/CREATE TABLE `ide` ( `id` INT AUTO_INCREMENT PRIMARY KEY, `ideName` VARCHAR(50) );

/*exercice6 Dans la base de données webDevelopment, créer, si elle n'existe pas, la table frameworks avec les colonnes suivantes :
id (type INT, auto-incrémenté, clé primaire)
name (type VARCHAR)*/CREATE TABLE IF NOT EXISTS `frameworks` ( `id` INT AUTO_INCREMENT PRIMARY KEY, `name` VARCHAR(50) );

/*exercice7 Supprimer la table tools si elle existe.*/DROP TABLE IF EXISTS `tools`;

/*exercice8 Supprimer la table librairies*/DROP TABLE IF EXISTS `librairies`;

/*exercice9 Supprimer la table ide*/DROP TABLE IF EXISTS `ide`;

/*TP Créer la base codex. Y créer une table clients qui aura comme colonnes :

Colonnes			Type			Attributs
id					INT				Auto-incrémenté,clé primaire
lastName			VARCHAR	
firstName			VARCHAR	
birthDate			DATE 	
address				VARCHAR	
firstPhoneNumber	INT	
secondPhoneNumber	INT	
mail				VARCHAR	*/
CREATE DATABASE `codex` CHARACTER SET `utf8` COLLATE `utf8_unicode_ci`;
USE `codex`;
CREATE TABLE `clients` ( `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, `lastName` VARCHAR(50), `firstName` VARCHAR(50), `birthDate` DATE, `address` VARCHAR(50), `firstPhoneNumber` INT, `secondPhoneNumber` INT, `mail` VARCHAR(50));



/*Partie 3*/



/*exercice 1 Dans la base de données webDevelopment, ajouter à la table languages une colonne versions (VARCHAR).*/
USE `webDevelopment`;
ALTER TABLE `languages` ADD COLUMN `versions` VARCHAR(50);
/*exercice 2 Dans la base de données webDevelopment, ajouter à la table frameworks une colonne versions (INT).*/
ALTER TABLE `frameworks` ADD COLUMN `versions` INT;
/*exercice 3 Dans la base de données webDevelopment, dans la table languages renommer la colonne versions en version.*/
ALTER TABLE `languages` CHANGE `versions` `version` VARCHAR(50) NOT NULL;
/*exercice 4 Dans la base de données webDevelopment, dans la table frameworks, renommer la colonne name en framework.*/
ALTER TABLE `frameworks` CHANGE `name` `framework` VARCHAR(50) NOT NULL;
/*exercice 5 Dans la base de données webDevelopment, dans la table frameworks changer le type de la colonne version en VARCHAR de taille 10.*/
ALTER TABLE `frameworks` CHANGE `versions` `version` VARCHAR(10) NOT NULL;
/*exercice TP
Dans la base codex, dans la table clients :
supprimer la colonne secondPhoneNumber
renommer la colonne firstPhoneNumber en phoneNumber
changer le type de la colonne phoneNumber en VARCHAR
ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR)
*/
USE codex;
ALTER TABLE `clients` DROP COLUMN `secondPhoneNumber`;
ALTER TABLE `clients` CHANGE `firstPhoneNumber` `phoneNumber` INT(11) NOT NULL; 
ALTER TABLE `clients` CHANGE `phoneNumber` `phoneNumber` VARCHAR(50) NOT NULL;
ALTER TABLE `clients` ADD COLUMN `zipCode` VARCHAR(50);
ALTER TABLE `clients` ADD COLUMN `city` VARCHAR(50);



/*Partie 4*/

/*Exercice 1*/
/*Dans la table languages insérez les données suivantes :

JavaScript version 5
PHP version 5.2
PHP version 5.4
HTML version 5.1
JavaScript version 6
JavaScript version 7
JavaScript version 8
PHP version 7
*/
USE `webDevelopment`;
INSERT INTO `languages` (`language`,`version`) VALUES 
('Javascript',5),
/*DELETE FROM languages WHERE id=2; car j'avais inserer deux fois la 1er ligne*/
/*SELECT * from languages; pour vérifier l'intérieur de ma table.*/
 ('PHP',5.2),
('PHP',5.4),
('HTML',5.1),
('Javascript',6),
('Javascript',7),
('Javascript',8),
('PHP',7);



/*Exercice 2*/
/*Dans la table frameworks insérez les données suivantes :

Symfony version 2.8
Symfony version 3
Jquery version 1.6
Jquery version 2.10*/

DESCRIBE `frameworks`;
INSERT INTO `frameworks` (`framework`,`version`) VALUES 
('Symfony',2.8),
('Symfony',3),
('Jquery',1.6),
('Jquery',2.10);



/*Partie 5 : Sélection de données*/

/*Exercice 1	Dans la table languages, afficher toutes les données de la table.*/
SELECT * 
FROM `languages`;
/*Exercice 2	Dans la table languages, afficher toutes les versions de PHP.*/
SELECT * 
FROM `languages` 
WHERE `language` = 'PHP'; 
/*Exercice 3	Dans la table languages, afficher toutes les versions de PHP et de JavaScript.*/
SELECT * FROM `languages` WHERE `language` = 'PHP' OR `language`='JavaScript';
/*Exercice 4	Dans la table languages, afficher toutes les lignes ayant pour id 3,5,7.*/
SELECT * FROM `languages` WHERE `id` = 3 OR `id` = 5 OR `id` = 7;
/*Exercice 5	Dans la table languages, afficher les deux première entrées de JavaScript.*/
SELECT * FROM `languages` WHERE `language` = 'Javascript' LIMIT 2 OFFSET 0;
/*Exercice 6	Dans la table languages, afficher toutes les lignes qui ne sont pas du PHP*/
SELECT * FROM `languages` WHERE `language` NOT LIKE 'PHP';
/*Exercice 7	Dans la table languages, afficher toutes les données par ordre alphabétique.*/
SELECT * FROM `language`s ORDER BY `language` ASC;


/*Partie 6 : Sélection de données - 
Élargir les possibilités de la clause WHERE*/


/*Exercice 1 Dans la table frameworks, afficher toutes les données de la table 
ayant une version 2.x (x étant un numéro quelconque).*/
SELECT * FROM `frameworks` WHERE `version` LIKE '2.%';

/*Exercice 2 Dans la table frameworks, afficher toutes les lignes ayant pour id 1 et 3.*/
SELECT * FROM `frameworks` WHERE `id` IN (1,3);

/*Exercice 3 Dans la table ide, afficher toutes les lignes ayant une date comprise entre 
le premier janvier 2010 et le 31 decembre 2011.*/
SELECT * FROM `ide` WHERE `date` BETWEEN '2010-01-01' AND '2011-12-31';


/*Partie 7 : Suppression et modification de données*/

/*Exercice 1
Dans la table languages, supprimer toutes les lignes parlant de HTML.
*/
DELETE FROM `languages` WHERE `language` = 'HTML';

/*Exercice 2
Dans la table frameworks, modifier toutes les lignes ayant le framework Symfony par Symfony2.
*/
UPDATE `frameworks` SET `framework`='Symfony2' WHERE `framework`= 'Symfony';
/*
Exercice 3
Dans la table languages, modifier la ligne du langage JavaScript version 5 par la version 5.1
*/
UPDATE `languages` SET `language`='JavaScript',`version`=5.1 WHERE `version`=5;



/*Partie 8 : Les jointures*/

/*Exercice 1
Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.
*/
SELECT `languages`.`name` AS `languages`, `frameworks`.`name` AS `Frameworks` FROM `frameworks` RIGHT JOIN `languages` ON `frameworks`.`languagesId` = `languages`.`id`;
/*ou*/
SELECT * FROM `languages` LEFT JOIN `frameworks` ON `languages`.`id` = `frameworks`.`languagesId`;
/*Exercice 2
Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.
*/
SELECT * FROM `frameworks` INNER JOIN `languages` ON `frameworks`.`languagesId` = `languages`.`id`;
/*ou*/
SELECT * FROM `languages` INNER JOIN `frameworks` ON `languages`.`id` = `frameworks`.`languagesId`;

/*
Exercice 3
Afficher le nombre de framework qu'a un language.
*/
SELECT `languages`.`name`, COUNT(`frameworks`.`name`) FROM `languages` INNER JOIN `frameworks` ON `languages`. `id` = `frameworks`.`languagesId` GROUP BY`languages`.`name`;

/*
Exercice 4
Afficher les langages ayant plus de 3 frameworks.*/
SELECT `languages`.`name`, COUNT(`frameworks`.`name`) FROM `languages` INNER JOIN `frameworks` ON `languages`. `id` = `frameworks`.`languagesId` 
GROUP BY`languages`.`name`HAVING COUNT(`languages`.`name`) > 3;

























