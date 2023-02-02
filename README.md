# 100 SQL Queries



![GitHub](https://img.shields.io/github/license/kebiri-isam-dine/UniversityProjects?color=g&style=for-the-badge)
![GitHub last commit](https://img.shields.io/github/last-commit/kebiri-isam-dine/UniversityProjects?color=red&style=for-the-badge)
![GitHub contributors](https://img.shields.io/github/contributors/kebiri-isam-dine/UniversityProjects?color=yellow&style=for-the-badge)


![GitHub dev_language](https://img.shields.io/badge/MySQL-brown?style=flat&logo=MySQL&logoColor=white)
![GitHub dev_language](https://img.shields.io/badge/phpMyAdmin-pink?style=flat&logo=phpMyAdmin&logoColor=white)
![GitHub dev_language](https://img.shields.io/badge/SQL-005C84?style=flat&logo=maas&logoColor=white)

![GitHub Org's stars](https://img.shields.io/github/stars/kebiri-isam-dine?style=social)
![GitHub followers](https://img.shields.io/github/followers/kebiri-isam-dine?style=social)




## About The Project
Les 100 requetes SQL les plus fréquentes durant mon parcours, on utilisera ``XAMPP v3.3.0`` serveur Web, une distribution Apache open source contenant ``MySQL`` et ``PHP``


### Keywords

SQL, XAMPP






## Dataset
Base de données d'un jeu rpg qui contient des personnages et des armes, lancer le script [Data.sql](/Data.sql) pour importer les tables dans ``phpMyAdmin``    


Le MDP (Modèle Physique de Données) : 
<img src="/Captures/MDP.png">

## Queries

##### SELECT

1. Récupérer tous les personnages

``` sql
SELECT * 
FROM personnage;
```

2. Afficher seulzmeunt le nom et les "levelMin" de toutes les armes 

``` sql
SELECT nom, levelMin 
FROM arme;
```

3. Afficher le nom, le surnom et le level de tous les personnages

``` sql
SELECT nom, surnom, level 
FROM personnage;
```

4. Afficher le nom et le level de tous les personnages en modifiant les titres des colonnes en "Pseudo" et "Niveau"

``` sql
SELECT nom as Niveau, surnom as Pseudo 
FROM personnage;
```






## License

[GPL-3.0](https://choosealicense.com/licenses/gpl-3.0/)


## Contact

📫 How to reach me: kebiri.isam.dine@gmail.com

🌐 My Portfolio: <https://kebiri-isam-dine.github.io/>

🔗 Project Link: <https://github.com/kebiri-isam-dine/100_SQL_Queries>
