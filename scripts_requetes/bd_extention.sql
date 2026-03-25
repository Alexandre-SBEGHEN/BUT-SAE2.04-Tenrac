/*                                                
                 ,---,       ,----..        ,---, 
       ,---.  ,`--.' |      /   /   \    ,`--.' | 
      /__./| /    /  :     /   .     :  /    /  : 
 ,---.;  ; |:    |.' '    .   /   ;.  \:    |.' ' 
/___/ \  | |`----':  |   .   ;   /  ` ;`----':  | 
\   ;  \ ' |   '   ' ;   ;   |  ; \ ; |   '   ' ; 
 \   \  \: |   |   | |   |   :  | ; | '   |   | | 
  ;   \  ' .   '   : ;   .   |  ' ' ' :   '   : ; 
   \   \   '   |   | '   '   ;  \; /  |   |   | ' 
    \   `  ;   '   : | ___\   \  ',  /__  '   : | 
     :   \ |   ;   |.'/  .\;   :    /  .\ ;   |.' 
      '---'    '---'  \  ; |\   \ .'\  ; |'---'   
                       `--'  `---`   `--'         
                                                  
*/
SET DEFINE OFF;

PROMPT "Creation de l extension de la base de donnees";

-- 1) Membres et hiérarchie --
-- Ajout des grades
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (1, 'AFFILIE');
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (2, 'SYMPATHISANT');
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (3, 'ADHERENT');
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (4, 'CHEVALIER/DAME');
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (5, 'GRAND CHEVALIER/HAUTE DAME');
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (6, 'COMMANDEUR');
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (7, 'GRAND CROIX');
-- Ajout des rangs
INSERT INTO Tenrac_Rang (rang_id, rang_nom) VALUES (1, 'NOVICE');
INSERT INTO Tenrac_Rang (rang_id, rang_nom) VALUES (2, 'COMPAGNON');
-- Ajout des titres
INSERT INTO Tenrac_Titre (titre_id, titre_nom) VALUES (1, 'PHILANTROPE');
INSERT INTO Tenrac_Titre (titre_id, titre_nom) VALUES (2, 'PROTECTEUR');
INSERT INTO Tenrac_Titre (titre_id, titre_nom) VALUES (3, 'HONORABLE');
-- Ajout des dignités
INSERT INTO Tenrac_Dignite (dignite_id, dignite_nom) VALUES (1, 'MAITRE');
INSERT INTO Tenrac_Dignite (dignite_id, dignite_nom) VALUES (2, 'GRAND CHANCELIER');
INSERT INTO Tenrac_Dignite (dignite_id, dignite_nom) VALUES (3, 'GRAND MAITRE');
-- Ajout des genres
INSERT INTO Tenrac_Genre (genre_id, genre_nom) VALUES (1, 'MASCULIN');
INSERT INTO Tenrac_Genre (genre_id, genre_nom) VALUES (2, 'FEMININ');
INSERT INTO Tenrac_Genre (genre_id, genre_nom) VALUES (3, 'NON RENSEIGNE');
INSERT INTO Tenrac_Genre (genre_id, genre_nom) VALUES (4, 'AUTRE');
INSERT INTO Tenrac_Genre (genre_id, genre_nom) VALUES (5, 'NON-BINAIRE');
INSERT INTO Tenrac_Genre (genre_id, genre_nom) VALUES (6, 'QUANTIQUE');
INSERT INTO Tenrac_Genre (genre_id, genre_nom) VALUES (7, 'AVION DE CHASSE');
INSERT INTO Tenrac_Genre (genre_id, genre_nom) VALUES (8, 'MICKAEL MARTIN NEVOT');
.....................................
-- Ajout des Tenracs
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (1, 'SBEGHEN', 'ALEXANDRE', 'ALEXANDRE@SBEGHEN.FR', '0766117611', '44 AVENUE MAURICE THOREZ', 'RESIDENCE L''ARPEGE', '13110', 'PORT-DE-BOUC', ..., 1, 1, 1, NULL);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (2, 'SOUBIALE', 'ELIAS', 'ELIAS.SOUBIALE2007@GMAIL.COM', '0745746718', '44 AVENUE PAUL LOMBARDI', NULL, '13620', 'CARRY-LE-ROUET', ..., 1, 1, NULL, NULL);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (3, 'DUJARDIN', 'TRISTAN', 'T.DUJARDIN@GMAIL.COM', '0639340147', '14 RUE DES LILAS', NULL, '75012', 'PARIS', ..., 2, NULL, NULL, NULL);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (4, 'CARPENTIER', 'AYMERIC', 'AYMERIC.CARPENTIER@OUTLOOK.FR', '0727075379', '8 AVENUE VICTOR HUGO', 'RESIDENCE LA RESIDENCE', '69003', 'LYON', ..., 1, 1, 2, NULL);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (5, 'DIEUDONNE', 'SEBASTIEN', 'SEB.DIEUDO@YAHOO.FR', '0635708653', '22 BOULEVARD SAINT-MICHEL', NULL, '33000', 'BORDEAUX', ..., 1, NULL, NULL, NULL);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (6, 'ALLARD', 'SEBASTIEN', 'ALLARDS01@HOTMAIL.COM', '0640275210', '47 RUE DE LA RÉPUBLIQUE', 'RESIDENCE DU PAFF', '13001', 'MARSEILLE', ..., 2, NULL, 1, NULL);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (7, 'GERIN', 'LAURA', 'LAURA.GERIN1994@WANADOO.FR', '0656765327', '3 RUE DU MOULIN', NULL, '59000', 'LILLE', ..., 5, 2, NULL, 3);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (8, 'COURVOISIER', 'NICOLETTE', 'NICOLETTE.COURVOISIER@GMAIL.COM', '0789896543', '19 CHEMIN DES OLIVIERS', 'LA PETITE MAISON DANS LA PRAIRIE', '31000', 'TOULOUSE', ..., 1, 1, NULL, NULL);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (9, 'AUGER', 'ELODIE', 'ELODIIIE@GMAIL.COM', '0642424242', '11 AVENUE DES FLEURS', 'MAISON DU PRE FLEURI', '06000', 'NICE', ..., 3, 1, 2, NULL);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (10, 'GAVREAY', 'YVETTE', 'GAVREAY.Y@GMAIL.COM', '0644450918', '6 RUE DES PEUPLIERS', 'RESIDENCE DU PEUPLE', '44000', 'NANTES', ..., 5, NULL, NULL, 2);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (11, 'VERDUN', 'ANGELINA', 'ANGEVERDUN@OUTLOOK.FR', '0607586955', '41 ALLEE LOUIS DAQUIN', 'LA CAGE D''ESCALIER', '13500', 'MARTIGUES', ..., 1, 1, NULL, 2);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (12, 'HANOTIN', 'FIONA', 'FIONA.HANNOTIN@ETU.UNIV-AMU.FR', '0761896236', '9 IMPASSE DE BANCAU', NULL, '13500', 'MARTIGUES', ..., 6, 2, 2, 3);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (13, 'PETIT', 'NOE', 'NOE.PETIT@LAMACHE.ORG', '0777991797', '14 RUE DU PAFF', NULL, '69100', 'LYON', ..., 1, 1, NULL, NULL);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (14, 'OROFIAMMA', 'EMMA', 'EMMA.OROFIAMMA@ETU.UNIV-AMU.FR', '0781024046', '4 RESIDENCE LES OLIVELLES', NULL, '13960', 'SAUSSET-LES-PINS', ..., 3, 1, 2, NULL);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (15, 'BON', 'JEAN', 'JEANBON2014@MSN.COM', '0654321234', '25 RUE PASTEUR', NULL, '38000', 'GRENOBLE', ..., 1, NULL, 1, 1);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (16, 'LAMBERT', 'JULIEN', '0762842057', 'JUJUDU21@CLUB-INTERNET.FR', '12 RUE DE LA LIBERTE', 'RESIDENCE LA MOUTARDE', '21000', 'DIJON', ..., 1, NULL, NULL, 2);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (17, 'FRANCOIS', 'MAXIME', 'MAXIME.FRANCOIS49@GMAIL.COM', '0606060606', '8 AVENUE JEAN JAURES', 'LA MAISON DU PAPE', '49000', 'ANGERS', ..., 4, 1, 2, 2);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (18, 'KEVIN', 'JEAN', 'JEANKEVIN@GMAIL.COM', '0707070707', '1 RUE DE L''ANONYMITE', NULL, '00000', 'VILLE', ..., 2, 1, NULL, NULL);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (19, 'BEN-KHELIL', 'INES', 'INES.BEN-KHELIL@ETU.UNIV-AMU.FR', '45 RUE DU QUADRICEPS', '', '', '', '', ..., 7, 2, 3, 3);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (20, 'PEYRON', 'MAELAN', 'MAELAN.PEYRON@ETU.UNIV-AMU.FR', '0767676767', '76 BOULEVARD DU SIX SEVEN', '', '67000', 'STRASBOURG', ..., 4, 2, NULL, 1);
----------------------------------------------------------------------



-- Clubs et Ordre --
INSERT INTO Club (club_id, club_nom, registre_id) VALUES (1, 'SUPER RACLETTE', 2);;
INSERT INTO Club (club_id, club_nom, registre_id) VALUES (2, 'TENDERS DORES', 3);;
INSERT INTO Club (club_id, club_nom, registre_id) VALUES (3, 'POULETT FONDANT', 4);;
INSERT INTO Club (club_id, club_nom, registre_id) VALUES (4, 'POULET CROUSTY', 5);;
INSERT INTO Club (club_id, club_nom, registre_id) VALUES (5, 'CROQUANT FONDANT', 6);;
INSERT INTO Club (club_id, club_nom, registre_id) VALUES (7, 'CLUB RACC', 7);;

INSERT INTO Ordre (ordre_id, ordre_nom, registre_id) VALUES (1, 'ORDRE CENTRAL DES TENRACS', 1);;

INSERT INTO Registre (registre_id) VALUES (1);;
INSERT INTO Registre (registre_id) VALUES (2);;
INSERT INTO Registre (registre_id) VALUES (3);;
INSERT INTO Registre (registre_id) VALUES (4);;
INSERT INTO Registre (registre_id) VALUES (5);;
INSERT INTO Registre (registre_id) VALUES (6);;
INSERT INTO Registre (registre_id) VALUES (7);;


INSERT INTO Organisme_Type (orgatype_id, type_nom) VALUES (1, 'ENTREPRISE');;
INSERT INTO Organisme_Type (orgatype_id, type_nom) VALUES (2, 'ASSOCIATION');;
INSERT INTO Organisme_Type (orgatype_id, type_nom) VALUES (3, 'EDUCATION');;



INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('49573343174126', 'RACLETTE & CO', 1);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('18972948872548', 'TENDERS FORMATION FRANCE', 3);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('81039915742549', 'INSTITUT SUPERIEURE DE LA RACLETTE', 3);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('91709245161275', 'FEDERATION CULINAIRE FROMAGERE', 2);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('34343978457843', 'TENDERS & TRADITIONS', 1);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('29267099812654', 'SOCIETE FRANCAISE DU POULET FRIT', 1);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('77784108501264', 'FROMAGERIE DES HAUTS PLATEAUX', 1);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('47824861065134', 'MAISON DU FROMAGE ET DU TENDERS', 3);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('11367072392341', 'TENRAC CAPITAL MANAGEMENT', 1);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('94514775215649', 'VOLAILLE & PERFORMANCE LOGISTICS', 1);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('70117132427816', 'COMPAGNIE GENERALE DE LA RACLETTE', 1);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('19325770722439', 'SYNDICAT NATIONAL DES AFFINEURS DE MONTAGNE', 2);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('46088520694523', 'EUROPEAN TENDERS DEVELOPPEMENT', 1);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('65141608307812', 'AGENCE NATIONALE POUR LE TENRAC', 2);




----------------------------------------------------------------------

-- 4) Repas et plats --

-- ==== REPAS ====

PROMPT "Creation de l extension de donnees pour la table 'Repas'"

INSERT INTO Repas (repas_id, repas_nom) VALUES (1, 'RACLETTE & CIE');
INSERT INTO Repas (repas_id, repas_nom) VALUES (2, 'PIZZA & CIE');
INSERT INTO Repas (repas_id, repas_nom) VALUES (3, 'VIANDARD');
INSERT INTO Repas (repas_id, repas_nom) VALUES (4, 'AU FRUITS');
INSERT INTO Repas (repas_id, repas_nom) VALUES (5, 'MER ET OCEAN');
INSERT INTO Repas (repas_id, repas_nom) VALUES (6, 'SAVEURE RICHE');
INSERT INTO Repas (repas_id, repas_nom) VALUES (7, 'GOURMET');
INSERT INTO Repas (repas_id, repas_nom) VALUES (8, 'POUR UN LONG MOMENT');
INSERT INTO Repas (repas_id, repas_nom) VALUES (9, 'UNE LEGERE PLUME');

-- ===============

-- ==== BOISSONS ====

INSERT INTO Boisson (boisson_id, boisson_nom) VALUES (1, 'EAU');
INSERT INTO Boisson (boisson_id, boisson_nom) VALUES (2, 'PEPSI');
INSERT INTO Boisson (boisson_id, boisson_nom) VALUES (3, 'FUZE-TEA');
INSERT INTO Boisson (boisson_id, boisson_nom) VALUES (4, 'ORANGINA');
INSERT INTO Boisson (boisson_id, boisson_nom) VALUES (5, 'JUS DE FRUIT');
INSERT INTO Boisson (boisson_id, boisson_nom) VALUES (6, 'SEVEN-UP');
INSERT INTO Boisson (boisson_id, boisson_nom) VALUES (7, 'COCA-COLA');
INSERT INTO Boisson (boisson_id, boisson_nom) VALUES (8, 'MATCHA');
INSERT INTO Boisson (boisson_id, boisson_nom) VALUES (9, 'BUBBLE TEA');

-- ==================

-- ==== SAUCE ====

INSERT INTO Sauce (sauce_id, sauce_nom, composition_id) VALUES (1, "KETCHUP", 1);
INSERT INTO Sauce (sauce_id, sauce_nom, composition_id) VALUES (2, "MAYONNAISE", 2);
INSERT INTO Sauce (sauce_id, sauce_nom, composition_id) VALUES (3, "", 3);

-- ===============

-- ===== PLAT ====
-- 10) Quels sont les noms des repas et les noms des plats qui les composent, par ordre alphabetique des repas ? 2 attributs, 47 tuples

PROMPT "Creation de l'extension de donnees pour la table 'Plat'"

INSERT INTO Plat (plat_id, plat_nom) VALUES (1, 'RACLETTE CLASSIQUE');
INSERT INTO Plat (plat_id, plat_nom) VALUES (2, 'TENDERS DE POULET FRITS');
INSERT INTO Plat (plat_id, plat_nom) VALUES (3, 'VIANDE A KEBAB');
INSERT INTO Plat (plat_id, plat_nom) VALUES (4, 'PIZZA');
INSERT INTO Plat (plat_id, plat_nom) VALUES (5, 'QUICHE');
INSERT INTO Plat (plat_id, plat_nom) VALUES (6, 'SAUMON');
INSERT INTO Plat (plat_id, plat_nom) VALUES (7, 'ANANAS');
INSERT INTO Plat (plat_id, plat_nom) VALUES (8, 'BEURRE');
INSERT INTO Plat (plat_id, plat_nom) VALUES (9, 'POULET');
INSERT INTO Plat (plat_id, plat_nom) VALUES (10,'THON');
INSERT INTO Plat (plat_id, plat_nom) VALUES (11,'POMME');
INSERT INTO Plat (plat_id, plat_nom) VALUES (12,'POIRE');
INSERT INTO Plat (plat_id, plat_nom) VALUES (13,'CRABE');
INSERT INTO Plat (plat_id, plat_nom) VALUES (14,'TENDERS DE POULET');
INSERT INTO Plat (plat_id, plat_nom) VALUES (15,'TENDERS AUX LEGUMES');
INSERT INTO Plat (plat_id, plat_nom) VALUES (16,'RACLETTE ULTIME');
INSERT INTO Plat (plat_id, plat_nom) VALUES (17,'BOEUF');
INSERT INTO Plat (plat_id, plat_nom) VALUES (18,'PIZZA AUX TENDERS');
INSERT INTO Plat (plat_id, plat_nom) VALUES (19,'SALAMANDRE');
INSERT INTO Plat (plat_id, plat_nom) VALUES (20,'RACLETTE ANANAS');
INSERT INTO Plat (plat_id, plat_nom) VALUES (21,'RACLETTE-PIZZA-XXL');
INSERT INTO Plat (plat_id, plat_nom) VALUES (22,'PORC A L ''ANANAS');
INSERT INTO Plat (plat_id, plat_nom) VALUES (23,'RACLETTE AU THON');
INSERT INTO Plat (plat_id, plat_nom) VALUES (24,'RACLETTE POUR LA FAMILLE');
INSERT INTO Plat (plat_id, plat_nom) VALUES (25,'MULTI-FRUITS');

-- ================

-- ==== COMPOSITION ====

PROMPT "Creation de l'extension de donnees pour la table 'Repas_Constitue_De'";

INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (1, 1);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (1, 16);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (1, 20);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (1, 21);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (1, 23);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (1, 24);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (2, 4);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (2, 7);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (2, 18);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (2, 19);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (2, 22);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (3, 2);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (3, 3);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (3, 9);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (3, 14);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (3, 17);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (3, 22);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (4, 7);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (4, 11);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (4, 12);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (4, 20);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (4, 21);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (4, 22);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (4, 25);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (5, 6);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (5, 10);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (5, 13);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (5, 19);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (5, 23);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (6, 5);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (6, 18);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (6, 20);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (6, 22);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (6, 25);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (7, 13);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (7, 15);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (7, 16);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (7, 17);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (7, 18);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (7, 21);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (8, 2);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (8, 14);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (8, 15);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (8, 16);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (8, 18);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (8, 21);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (8, 24);

-- ==== REPAS SERVIS AVEC UNE BOISSON ====

INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (1, 1);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (1, 2);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (1, 4);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (1, 6);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (1, 7);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (2, 1);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (2, 3);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (2, 5);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (2, 8);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (3, 1);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (3, 5);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (3, 8);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (3, 9);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (4, 1);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (4, 5);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (4, 8);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (4, 9);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (5, 1);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (5, 3);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (5, 6);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (5, 7);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (6, 1);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (7, 1);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (7, 5);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (7, 6);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (7, 9);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (8, 1);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (8, 2);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (8, 3);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (8, 4);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (8, 5);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (8, 6);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (8, 7);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (8, 8);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (8, 9);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (9, 1);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (9, 5);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (9, 6);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (9, 8);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (9, 9);

-- =======================================


--Legumes et leurs effets

INSERT INTO Legume (legume_id, legume_nom) VALUES (1, 'LAITUE');
INSERT INTO Legume (legume_id, legume_nom) VALUES (2, 'OIGNON');
INSERT INTO Legume (legume_id, legume_nom) VALUES (3, 'EPINARD');
INSERT INTO Legume (legume_id, legume_nom) VALUES (4, 'BROCOLI');
INSERT INTO Legume (legume_id, legume_nom) VALUES (5, 'CELERI');
INSERT INTO Legume (legume_id, legume_nom) VALUES (6, 'POIVRON');
INSERT INTO Legume (legume_id, legume_nom) VALUES (7, 'CAROTTE');
INSERT INTO Legume (legume_id, legume_nom) VALUES (8, 'FENOUIL');

INSERT INTO Allergie (allergie_id, allergie_nom) VALUES (1, 'POLLEN');
INSERT INTO Allergie (allergie_id, allergie_nom) VALUES (2, 'OEUF');
INSERT INTO Allergie (allergie_id, allergie_nom) VALUES (3, 'FRUIT A COQUE');
INSERT INTO Allergie (allergie_id, allergie_nom) VALUES (4, 'GLUTEN');
INSERT INTO Allergie (allergie_id, allergie_nom) VALUES (5, 'EAU');
INSERT INTO Allergie (allergie_id, allergie_nom) VALUES (6, 'SOLEIL');

INSERT INTO Croyance (croyance_id, croyance_nom) VALUES (1, 'SEPT EPICES');
INSERT INTO Croyance (croyance_id, croyance_nom) VALUES (2, 'HUILE DORE');
INSERT INTO Croyance (croyance_id, croyance_nom) VALUES (3, 'FONTE ETERNELLE');
INSERT INTO Croyance (croyance_id, croyance_nom) VALUES (4, 'FRATERNITE TENRAC');
INSERT INTO Croyance (croyance_id, croyance_nom) VALUES (5, 'CROUSTILLANCE');

INSERT INTO Conviction (conviction_id, conviction_nom) VALUES (1, 'REFUS DES LEGUMES');
INSERT INTO Conviction (conviction_id, conviction_nom) VALUES (2, 'REFUS DU MELANGE SUCRE-SALE');
INSERT INTO Conviction (conviction_id, conviction_nom) VALUES (3, 'CONVICTION CARNIVORE STRICTE');
INSERT INTO Conviction (conviction_id, conviction_nom) VALUES (4, 'CONVICTION ANTI-ANANAS');
INSERT INTO Conviction (conviction_id, conviction_nom) VALUES (5, 'OPPOSITION AUX RECETTES ETRANGERES');


INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (1, 5);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (3, 2);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (4, 6);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (4, 5);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (6, 2);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (7, 4);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (9, 1);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (12, 2);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (13, 3);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (14, 3);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (20, 1);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (20, 2);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (20, 4);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (20, 5);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (20, 6);

INSERT INTO Tenrac_Croit (tenrac_ id, croyance_id) VALUES (3, 2);
INSERT INTO Tenrac_Croit (tenrac_ id, croyance_id) VALUES (6, 4);
INSERT INTO Tenrac_Croit (tenrac_ id, croyance_id) VALUES (7, 5);
INSERT INTO Tenrac_Croit (tenrac_ id, croyance_id) VALUES (9, 4);
INSERT INTO Tenrac_Croit (tenrac_ id, croyance_id) VALUES (12, 1);
INSERT INTO Tenrac_Croit (tenrac_ id, croyance_id) VALUES (15, 1);
INSERT INTO Tenrac_Croit (tenrac_ id, croyance_id) VALUES (16, 3);
INSERT INTO Tenrac_Croit (tenrac_ id, croyance_id) VALUES (17, 3);

INSERT INTO Tenrac_A_Pour_Conviction (tenrac_id, conviction_id) VALUES (1, 2);
INSERT INTO Tenrac_A_Pour_Conviction (tenrac_id, conviction_id) VALUES (2, 3);
INSERT INTO Tenrac_A_Pour_Conviction (tenrac_id, conviction_id) VALUES (5, 4);
INSERT INTO Tenrac_A_Pour_Conviction (tenrac_id, conviction_id) VALUES (8, 3);
INSERT INTO Tenrac_A_Pour_Conviction (tenrac_id, conviction_id) VALUES (11, 1);
INSERT INTO Tenrac_A_Pour_Conviction (tenrac_id, conviction_id) VALUES (14, 3);
INSERT INTO Tenrac_A_Pour_Conviction (tenrac_id, conviction_id) VALUES (18, 4);
INSERT INTO Tenrac_A_Pour_Conviction (tenrac_id, conviction_id) VALUES (19, 3);
INSERT INTO Tenrac_A_Pour_Conviction (tenrac_id, conviction_id) VALUES (20, 5);


-- =====================
--16)

INSERT INTO Machine_Modele (modele_id, modele_nom) VALUES (1, lampe  à  raclette  traditionnelle);
INSERT INTO Machine_Modele (modele_id, modele_nom) VALUES (2, combiné  raclette-pierrade-fondue-crêpière-friteuse-salamandre);
INSERT INTO Machine_Modele (modele_id, modele_nom) VALUES (3, appareil à raclette bon marché);
INSERT INTO Machine_Modele (modele_id, modele_nom) VALUES (4, lampe  à  raclette en T);
INSERT INTO Machine_Modele (modele_id, modele_nom) VALUES (5, appareil à raclette rond);
INSERT INTO Machine_Modele (modele_id, modele_nom) VALUES (6, appareil à raclette triple étage);

INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (1, 'TERROIR' ,1);
INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (2, 'CHIMERE' ,2);
INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (3, 'JACK-OF-ALL-TRADE' ,2);
INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (4, 'RAB-AIS' ,3);
INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (5, 'LA DOUBLETTE' ,4);
INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (6, 'RONDOUILLETTE' ,5);
INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (7, 'CHESSE TOWER' ,6);

INSERT INTO Certificat_Entretien (certificat_id , entretien_date, tenrac_id, machine_id) VALUES (1, '2026-02-04', , 1);
INSERT INTO Certificat_Entretien (certificat_id , entretien_date, tenrac_id, machine_id) VALUES (2, '2026-02-04', , 2);
INSERT INTO Certificat_Entretien (certificat_id , entretien_date, tenrac_id, machine_id) VALUES (3, '2026-02-04', , 3);
INSERT INTO Certificat_Entretien (certificat_id , entretien_date, tenrac_id, machine_id) VALUES (4, '2026-02-04', , 4);
INSERT INTO Certificat_Entretien (certificat_id , entretien_date, tenrac_id, machine_id) VALUES (5, '2026-02-04', , 7);
INSERT INTO Certificat_Entretien (certificat_id , entretien_date, tenrac_id, machine_id) VALUES (6, '2026-02-06', , 2);
INSERT INTO Certificat_Entretien (certificat_id , entretien_date, tenrac_id, machine_id) VALUES (7, '2026-02-07', , 4);
INSERT INTO Certificat_Entretien (certificat_id , entretien_date, tenrac_id, machine_id) VALUES (8, '2026-02-07', , 6);
INSERT INTO Certificat_Entretien (certificat_id , entretien_date, tenrac_id, machine_id) VALUES (9, '2026-02-08', , 1);
INSERT INTO Certificat_Entretien (certificat_id , entretien_date, tenrac_id, machine_id) VALUES (10, '2026-02-09', , 7);

--17)

--18)

INSERT INTO Entretien (entretien_id, entretien_type, entretien_periodicite) VALUES (1, 'BICARBIONATE DE SOUDE', 4);
INSERT INTO Entretien (entretien_id, entretien_type, entretien_periodicite) VALUES (2, 'DEGRAISAGE + PAS UTILISATION PENDANT 2 JOURS',2);
INSERT INTO Entretien (entretien_id, entretien_type, entretien_periodicite) VALUES (3, 'PASSAGE A LA VAISSELLE',5); 
INSERT INTO Entretien (entretien_id, entretien_type, entretien_periodicite) VALUES (4, 'PASSAGE LINGETTE DEGRAISSANTE',4);
INSERT INTO Entretien (entretien_id, entretien_type, entretien_periodicite) VALUES (5, 'UTILISATION DE DEGRAISSANT MR.PROPRE',3);
INSERT INTO Entretien (entretien_id, entretien_type, entretien_periodicite) VALUES (6, 'BROSSAGE + RASSAGE A L EAU', 5);

INSERT INTO Modele_Necessite (modele_id, entretien_id) VALUES (1, 1);
INSERT INTO Modele_Necessite (modele_id, entretien_id) VALUES (2, 2);
INSERT INTO Modele_Necessite (modele_id, entretien_id) VALUES (3, 3);
INSERT INTO Modele_Necessite (modele_id, entretien_id) VALUES (4, 4);
INSERT INTO Modele_Necessite (modele_id, entretien_id) VALUES (5, 5);
INSERT INTO Modele_Necessite (modele_id, entretien_id) VALUES (6, 6);
----------------------------------------------------------------------

PROMPT "Fin de création de l extension de la base de donnees";