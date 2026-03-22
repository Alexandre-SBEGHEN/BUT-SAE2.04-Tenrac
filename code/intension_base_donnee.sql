-- ////////////////////////////////////////////////////////////////////
/*                                                                                                                                          
                 ,---,        ,---,            ,----,   
       ,---.  ,`--.' |     ,`--.' |          .'   .' \  
      /__./| /    /  :    /    /  :        ,----,'    | 
 ,---.;  ; |:    |.' '   :    |.' '        |    :  .  ; 
/___/ \  | |`----':  |   `----':  |        ;    |.'  /  
\   ;  \ ' |   '   ' ;      '   ' ;        `----'/  ;   
 \   \  \: |   |   | |      |   | |          /  ;  /    
  ;   \  ' .   '   : ;      '   : ;         ;  /  /-,   
   \   \   '   |   | '      |   | '        /  /  /.`|   
    \   `  ;   '   : | ___  '   : | ___  ./__;      :   
     :   \ |   ;   |.'/  .\ ;   |.'/  .\ |   :    .'    
      '---"    '---'  \  ; |'---'  \  ; |;   | .'       
                       `--"         `--" `---'          
                                                            
*/
-- ////////////////////////////////////////////////////////////////////

/* 

--- LEGENDE DU CODE ---

/// VERSION ///

*** PARTIES (TENRAC / NOURRITURE / MACHINES) ***

=== SOUS-PARTIE DE CHAQUE PARTIE ===

-----------------------

*/


PROMPT "Création de l'intension de la base de données des Tenracs"

-- *****************************************************************

PROMPT "Définition des données"

-- *****************************************************************

-- ==================================================================

-- SUPPRESSION AUTOMATIQUE DES TABLES AVANT DE LES CREER POUR EVITER PROBLEMES

DROP TABLE IF EXISTS Tenrac CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Adresse CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Tenrac_Grade CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Tenrac_Rang CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Tenrac_Titre CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Dignite CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Carte_Membre CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Ordre CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Club CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Organisme CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Allergie CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Croyance CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Conviction CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Machine CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Entretient CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Certificat_Entretient CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Machine_Modele CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Plat CASCADE CONSTRAINT PURGE;

-- **********************************************************************

-- TENRAC

-- ==================================================================

-- TENRAC

CREATE TABLE Tenrac {
    tenrac_id INT,
    tenrac_nom VARCHAR2(50) NOT NULL,
    tenrac_prenom VARCHAR2(50) NOT NULL,
    tenrac_courriel VARCHAR2(320) NOT NULL,
    tenrac_telephone VARCHAR2(20) NOT NULL,
    tenrac_adresse_principale VARCHAR2(38) NOT NULL,
    tenrac_adresse_complement VARCHAR2(38),
    tenrac_adresse_code_postal VARCHAR2(10) NOT NULL,
    tenrac_adresse_ville VARCHAR2(38) NOT NULL,
    PRIMARY KEY(tenrac_id),
    FOREIGN KEY(organisme_siret),
    FOREIGN KEY(grade_id),
    FOREIGN KEY(rang_id),
    FOREIGN KEY(titre_id),
    FOREIGN KEY(dignite_id)
}

CREATE TABLE Adresse {
    adresse_id BINARY(2),
    adresse_principale VARCHAR2(38) NOT NULL,
    adresse_complement VARCHAR2(38),
    adresse_code_postal VARCHAR2(10) NOT NULL,
    adresse_ville VARCHAR2(38) NOT NULL,
    PRIMARY KEY(adresse_id),
    FOREIGN KEY(ordre_id)
}

CREATE TABLE Carte_Membre {
    tenrac_code INT,
    carte_active BOOLEAN NOT NULL,
    carte_expiration DATE NOT NULL,
    PRIMARY KEY(tenrac_code),
    FOREIGN KEY(club_id),
    FOREIGN KEY(tenrac_id)
}

-- ==================================================================

-- GRADE / TITRE / RANG / DIGNITE

CREATE TABLE Tenrac_Grade {
    grade_id BINARY(1),
    grade_nom VARCHAR2(32) NOT NULL,
    PRIMARY KEY(grade_id)
}

CREATE TABLE Tenrac_Rang {
    rang_id BINARY(1),
    rang_nom VARCHAR2(32) NOT NULL,
    PRIMARY KEY(rang_id)
}

CREATE TABLE Tenrac_Titre {
    titre_id BINARY(1),
    titre_nom VARCHAR2(32) NOT NULL,
    PRIMARY KEY(titre_id)
}

CREATE TABLE Dignite {
    dignite_id BINARY(1),
    dignite_nom VARCHAR2(32) NOT NULL,
    PRIMARY KEY(dignite_id)
}

-- ==================================================================

-- SENSIBILITE TENRAC => ALLERGIE / CROYANCE / CONVICTION

CREATE TABLE Allergie {
    allergie_id INT,
    allergie_nom VARCHAR2(64) NOT NULL,
    PRIMARY KEY(allergie_id)
}

CREATE TABLE Croyance {
    croyance_id INT,
    croyance_nom VARCHAR2(64) NOT NULL,
    PRIMARY KEY(croyance_id)
}

CREATE TABLE Conviction {
    conviction_id INT,
    conviction_nom VARCHAR2(50) NOT NULL,
    PRIMARY KEY(conviction_id)
}

-- ==================================================================


-- ==================================================================

-- ORDRE / CLUB / ORGANISME / REUNION

CREATE TABLE Ordre {
    ordre_id BINARY(1),
    ordre_nom VARCHAR2(50) NOT NULL,
    PRIMARY KEY(ordre_id),
    FOREIGN KEY(registre_id)
}

CREATE TABLE Club {
    club_id BINARY(2),
    club_nom VARCHAR2(32) NOT NULL,
    PRIMARY KEY(club_id),
    FOREIGN KEY(ordre_id),
    FOREIGN KEY(registre_id)
}

CREATE TABLE Organisme {
    organisme_siret VARCHAR2(14),
    organisme_nom VARCHAR2(64) NOT NULL,
    organisme_raison VARCHAR2(128) NOT NULL,
    PRIMARY KEY(organisme_siret)
}

CREATE TABLE Reunion {
    reunion_id BINARY(8),
    reunion_date DATETIME NOT NULL,
    PRIMARY KEY(reunion_id),
    FOREIGN KEY(adresse_id)
}

-- ==================================================================

-- REGISTRE /!\ EN LIEN AVEC L'ORDRE ET LE CLUB
CREATE TABLE Registre {
    registre_id BINARY(2),
    PRIMARY KEY(registre_id)
}

-- ==================================================================


-- **********************************************************************



-- **********************************************************************

-- NOURRITURES


-- ==================================================================

-- PLAT AVEC NOURRITURE ET CI

CREATE TABLE Plat {
    plat_id BINARY(2),
    plat_nom VARCHAR2(64) NOT NULL,
    PRIMARY KEY(plat_id),
    FOREIGN KEY(legume_id),
    FOREIGN KEY(raclette_id),
    FOREIGN KEY(composition_id)
}

CREATE TABLE Raclette {
    raclette_id BINARY(1),
    raclette_nom VARCHAR2(64) NOT NULL,
    PRIMARY KEY(raclette_id)
}

CREATE TABLE Repas {
    repas_id INT,
    repas_nom VARCHAR2(64) NOT NULL,
    PRIMARY KEY(repas_id)
}

CREATE TABLE Boisson {
    boisson_id BINARY(2),
    boisson_nom VARCHAR2(32) NOT NULL,
    PRIMARY KEY(boisson_id)
}

CREATE TABLE Sauce {
    sauce_id BINARY(2),
    sauce_nom VARCHAR2(64) NOT NULL,
    PRIMARY KEY(sauce_id),
    FOREIGN KEY(composition_id)
}

CREATE TABLE Composition {
    composition_id INT,
    PRIMARY KEY(composition_id)
}

CREATE TABLE Ingredient {
    ingredient_id BINARY(2),
    ingredient_nom VARCHAR2(64) NOT NULL,
    PRIMARY KEY(ingredient_id)
}

CREATE TABLE Degustation {
    FOREIGN KEY(repas_id),
    FOREIGN KEY(tenrac_id),
    FOREIGN KEY(reunion_id)
}

-- ==================================================================


-- **********************************************************************



-- **********************************************************************

-- MACHINES

-- ==================================================================

-- ENTRETIENT 

CREATE TABLE Entretient {
    entretient_id INT,
    entretient_type VARCHAR2(64) NOT NULL,
    entretient_periodicite BINARY(2) NOT NULL,
    PRIMARY KEY(entretient_id)
}

CREATE TABLE Machine_Modele {
    modele_id BINARY(2),
    modele_nom VARCHAR2(32) NOT NULL,
    PRIMARY KEY(modele_id)
}

CREATE TABLE Certificat_Entretient {
    certificat_id INT,
    entretient_date DATETIME NOT NULL,
    PRIMARY KEY(certificat_id),
    FOREIGN KEY(tenrac_id),
    FOREIGN KEY(machine_id)
}

-- ==================================================================

-- ==================================================================

-- MACHINE

CREATE TABLE Machine {
    machine_id BINARY(2),
    machine_nom VARCHAR2(16),
    PRIMARY KEY(machine_id),
    FOREIGN KEY(modele_id)
}

-- ==================================================================

-- **********************************************************************



-- ==================================================================

-- ENTITES ASSOCIATIVES

-- ==================================================================
