 SupSimulation - Base de données géopolitique

Description
Ce projet consiste à manipuler et concevoir une base de données pour un jeu de simulation géopolitique nommé **SupSimulation**.

Le projet est basé sur la base de données **World (MySQL)** et comprend :
- Des modifications de données simulant un état du monde après une heure de jeu
- La conception d’un nouveau modèle de données adapté aux besoins du jeu


 Objectifs
- Manipuler une base de données relationnelle (MySQL)
- Garantir la cohérence des données après modifications complexes
- Concevoir une base de données évolutive
- Appliquer la méthode **Merise (MCD / MLD / MPD)**

 Partie 1 : Modification des données
Création de scripts SQL permettant de simuler un nouvel état du monde.

 Amérique
- Annexion de plusieurs États américains par le Canada
- Création d’un nouvel État (Québec + Ontario)
- Expansion des États-Unis
- Fusion des pays hispanophones en un seul État

 Europe
- Création de nouveaux États en France
- Indépendance de certaines villes (cités-États)
- Expansion du Liechtenstein

 Asie
- Fusion des deux Corées
- Création de "La Grande Corée"
- Conquête de la Chine et du Japon


 Partie 2 : Modélisation
 Analyse
Identification des limites de la base **World** :
- Manque de gestion des conflits (guerres)
- Absence d’alliances entre pays
- Pas de gestion des armées ou ressources militaires

 Nouvelle modélisation
Création d’une nouvelle base **NewWorld** avec :
- Nouvelles entités :
  - Pays
  - Armée
  - Alliance
  - Guerre
  - Région
- Relations entre entités (Merise)

Livrables
- MCD / MLD / MPD
- Dictionnaire de données
- Script SQL de création

Technologies utilisées
- MySQL
- SQL
- Méthode Merise



Projet réalisé dans le cadre d’un projet académique en bases de données.
