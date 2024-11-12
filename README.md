# Projet : Création d’une base de données sur les Voitures

#Objectif

## L’objectif de ce projet était de concevoir et de mettre en place une base de données pour gérer des informations sur des modèles de voitures, leurs marques, les fondateurs de ces marques, et les types de moteurs disponibles. Cette base de données permet de stocker et d’interroger efficacement des informations sur les véhicules, leurs spécifications techniques, et les marques automobiles, tout en illustrant les relations entre ces différentes entités.

## 1- Création de la Base de Données et des Tables
#### J'ai créé la Base de Données sur Always Data qui se nomme 'benji_projet2'.
#### Une fois la BDD créée, j'ai pu définir la structure, c'est-à-dire les Tables, sur le logiciel 'MySQL Workbench'.
#### Voici les Tables créées :
##### TypesMoteurs : pour stocker les différents types de moteurs et leurs descriptions.
##### MarquesFondateurs : pour stocker les marques de voitures et le nom de leurs fondateurs, ainsi que des informations supplémentaires comme l’année de création et le pays d’origine.
##### ModelesVoitures : pour stocker les modèles de voitures et leurs spécifications, comme la puissance, le prix.

### 2- Création des Relations entre les Tables
##### Pour permettre l’interaction entre les tables, j'ai défini des relations :
##### ModelesVoitures est reliée à TypesMoteurs via une clé étrangère ID_Type_Moteur, afin d’indiquer le type de moteur de chaque modèle.
##### ModelesVoitures est également reliée à MarquesFondateurs via une clé étrangère ID_Fondateur, pour montrer à quelle marque et fondateur chaque modèle appartient.
##### Ces relations permettent de relier chaque modèle de voiture à son type de moteur et à sa marque, rendant possible des requêtes qui combinent ces informations.
### 3- Insertion des Données
##### Une fois la structure mise en place, j'ai inséré des données d’exemple dans chaque table pour pouvoir tester et interroger la base de données. J'ai ajouté quelques types de moteurs (essence, diesel, hybride, électrique), des marques populaires (Peugeot, Volkswagen, Audi, Mercedes, BMW) avec leurs fondateurs, et des modèles de voitures pour chaque marque.

### 4- Écriture de Requêtes pour Extraire les Données
##### J'ai écrit plusieurs requêtes SQL pour interroger et manipuler les données :
##### Des requêtes simples pour afficher les informations des modèles de voitures.
##### Des requêtes avec des jointures pour afficher des données combinées, comme les modèles de voitures avec leurs types de moteurs ou les marques avec leurs fondateurs.
##### Des requêtes plus avancées pour calculer des valeurs agrégées, comme la puissance moyenne des voitures pour chaque type de moteur, ou pour filtrer des résultats en fonction de critères spécifiques (par exemple, trouver les voitures ayant un prix inférieur à une certaine valeur).

### 5- Modifications de Données
##### Pour compléter le projet, j'ai également implémenté des requêtes de mise à jour pour modifier des données existantes, comme :
##### Mettre à jour le prix d’un modèle de voiture.
##### Corriger le nom d’un fondateur.
##### Modifier le type de moteur d’un modèle existant.



