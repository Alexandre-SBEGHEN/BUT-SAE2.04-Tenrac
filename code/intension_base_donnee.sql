-- ////////////////////////////////////////////////////////////////////
/*                                                                                    
                  ,---,             ,---, 
       ,---.   ,`--.' |          ,`--.' | 
      /__./|  /    /  :         /    /  : 
 ,---.;  ; | :    |.' '        :    |.' ' 
/___/ \  | | `----':  |        `----':  | 
\   ;  \ ' |    '   ' ;           '   ' ; 
 \   \  \: |    |   | |           |   | | 
  ;   \  ' .    '   : ;           '   : ; 
   \   \   '    |   | '           |   | ' 
    \   `  ;    '   : |  ___      '   : | 
     :   \ |    ;   |.' /  .\     ;   |.' 
      '---"     '---'   \  ; |    '---'   
                         `--"            
*/
-- ////////////////////////////////////////////////////////////////////

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
    PRIMARY KEY(tenrac_id)
}

CREATE TABLE Adresse {
    adresse_id BINARY(2),
    adresse_principale VARCHAR2(38) NOT NULL,
    adresse_complement VARCHAR2(38),
    adresse_code_postal VARCHAR2(10) NOT NULL,
    adresse_ville VARCHAR2(38) NOT NULL,
    PRIMARY KEY(adresse_id)
}

CREATE TABLE Carte_Membre {
    tenrac_code INT,
    carte_active BOOLEAN NOT NULL,
    carte_expiration DATE NOT NULL,
    PRIMARY KEY(tenrac_code)
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

-- ==================================================================

-- ORDRE / CLUB / ORGANISME

CREATE TABLE Ordre {
    ordre_id BINARY(1),
    ordre_nom VARCHAR2(50) NOT NULL,
    PRIMARY KEY(ordre_id)
}

CREATE TABLE Club {
    club_id BINARY(2),
    club_nom VARCHAR2(32) NOT NULL,
    PRIMARY KEY(club_id)
}

CREATE TABLE Organisme {
    organisme_siret VARCHAR2(14),
    organisme_nom VARCHAR2(64) NOT NULL,
    organisme_raison VARCHAR2(128) NOT NULL,
    PRIMARY KEY(organisme_siret)
}

-- ==================================================================









-- ==================================================================

-- NOURRITURES

-- ==================================================================
