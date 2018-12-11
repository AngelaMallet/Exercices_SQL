/*Pour voir si c'est bon  	show databases; 
Pour voir les tableaux 		show tables;
Pour voir une colonne		describe languages;
Pour changer de base de données   USE nom_de_la_base;*/

/*PARTIE 1*/
/*exercice 1   		Créer une base de données languages.*/CREATE DATABASE languages;
/*exercice 2 		Créer une base de données webDevelopment avec l’encodage UTF-8.*/CREATE DATABASE webDevelopment CHARACTER SET utf8;
/*exercice 3 		Créer une base de données frameworks avec l’encodage UTF-8 si elle n’existe pas.*/CREATE DATABASE IF NOT EXISTS frameworks
    -> CHARACTER SET utf8;
/*exercice 4 		Créer une base de données languages avec l’encodage UTF-8 si elle n’existe pas.*/CREATE DATABASE IF NOT EXISTS languages 
	-> CHARACTER SET utf8;
/*exercice 5 		Supprimer la base de données languages.*/DROP DATABASE languages;
/*exercice 6 		Supprimer la base de données frameworks si elle existe.*/DROP DATABASE IF EXISTS frameworks;
/*exercice 7 		Supprimer la base de données languages si elle existe.*/DROP DATABASE IF EXISTS languages;




/*Partie 2 : Création de tables*/


/*exercice1 Dans la base de données webDevelopment, créer la table languages avec les colonnes :
id (type INT, auto-incrémenté, clé primaire)
language (type VARCHAR)*/ CREATE TABLE languages ( id INT AUTO_INCREMENT PRIMARY KEY, language VARCHAR(50) );


/*exercice2 Dans la base de données webDevelopment, créer la table tools avec les colonnes suivantes :
id (type INT, auto-incrémenté, clé primaire) tool (type VARCHAR)*/ CREATE TABLE tools ( id INT AUTO_INCREMENT PRIMARY KEY, tool VARCHAR(50) );

/*exercice3 Dans la base de données webDevelopment, créer la table frameworks avec les colonnes suivantes :
id (type INT, auto-incrémenté, clé primaire)
name (type VARCHAR)*/CREATE TABLE frameworks ( id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(50) );

/*exercice4 Dans la base de données webDevelopment, créer la table librairies avec les colonnes suivantes :
id (type INT, auto-incrémenté, clé primaire)
librairy (type VARCHAR)*/CREATE TABLE librairies ( id INT AUTO_INCREMENT PRIMARY KEY, librairy VARCHAR(50) );

/*exercice5 Dans la base de données webDevelopment, créer la table ide avec les colonnes suivantes :
id (type INT, auto-incrémenté, clé primaire)
ideName (type VARCHAR)*/CREATE TABLE ide ( id INT AUTO_INCREMENT PRIMARY KEY, ideName VARCHAR(50) );

/*exercice6 Dans la base de données webDevelopment, créer, si elle n'existe pas, la table frameworks avec les colonnes suivantes :
id (type INT, auto-incrémenté, clé primaire)
name (type VARCHAR)*/CREATE TABLE IF NOT EXISTS frameworks ( id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(50) );

/*exercice7 Supprimer la table tools si elle existe.*/DROP TABLE IF EXISTS tools;

/*exercice8 Supprimer la table librairies*/DROP TABLE IF EXISTS librairies;

/*exercice9 Supprimer la table ide*/DROP TABLE IF EXISTS ide;

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
CREATE DATABASE codex;
USE codex;
CREATE TABLE clients ( id INT AUTO_INCREMENT PRIMARY KEY, lastName VARCHAR(50), firstName VARCHAR(50), birthDate DATE, address VARCHAR(50), firstPhoneNumber INT, secondPhoneNumber INT, mail VARCHAR(50));



/*Partie 3*/



/*exercice 1 Dans la base de données webDevelopment, ajouter à la table languages une colonne versions (VARCHAR).*/
USE webDevelopment;
ALTER TABLE languages ADD COLUMN versions VARCHAR(50);
/*exercice 2 Dans la base de données webDevelopment, ajouter à la table frameworks une colonne versions (INT).*/
ALTER TABLE frameworks ADD COLUMN versions INT;
/*exercice 3 Dans la base de données webDevelopment, dans la table languages renommer la colonne versions en version.*/
ALTER TABLE languages CHANGE versions version VARCHAR(50) NOT NULL;
/*exercice 4 Dans la base de données webDevelopment, dans la table frameworks, renommer la colonne name en framework.*/
ALTER TABLE frameworks CHANGE name framework VARCHAR(50) NOT NULL;
/*exercice 5 Dans la base de données webDevelopment, dans la table frameworks changer le type de la colonne version en VARCHAR de taille 10.*/
ALTER TABLE frameworks CHANGE versions version VARCHAR(10) NOT NULL;
/*exercice TP
Dans la base codex, dans la table clients :
supprimer la colonne secondPhoneNumber
renommer la colonne firstPhoneNumber en phoneNumber
changer le type de la colonne phoneNumber en VARCHAR
ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR)
*/
USE codex;
ALTER TABLE clients DROP COLUMN secondPhoneNumber;
ALTER TABLE clients CHANGE firstPhoneNumber phoneNumber INT(11) NOT NULL; 
ALTER TABLE clients CHANGE phoneNumber phoneNumber VARCHAR(50) NOT NULL;
ALTER TABLE clients ADD COLUMN zipCode VARCHAR(50);
ALTER TABLE clients ADD COLUMN city VARCHAR(50);







/**/
/**/
/**/
/**/
/**/













































