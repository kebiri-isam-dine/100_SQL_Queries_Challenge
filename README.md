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
CHALLENGE : 100 requêtes SQL sur un Dataset de jeu, on utilisera ``XAMPP v3.3.0`` serveur Web, une distribution Apache open source contenant ``MySQL`` et ``PHP``







## Dataset
Base de données d'un jeu rpg qui contient des personnages et des armes, lancer le script [Data.sql](/Data.sql) pour importer les tables dans ``phpMyAdmin``    


Le MDP (Modèle Physique de Données) : 
<img src="/Captures/MDP.png">

## Queries

#### SELECT

1. Récupérer tous les personnages

``` sql
SELECT * 
FROM personnage;
```

2. Afficher seulement le nom et les "levelMin" de toutes les armes

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
SELECT nom as Pseudo, level as Niveau
FROM personnage;
```

5. Afficher le types des armes en renommant le type en "Types d'armes de jeu"

``` sql
SELECT libelle as "Types d'armes de jeu"
FROM typearme;
```

#### Fonctions calculs : COUNT, SUM, AVG, MIN, MAX

6. Récupérer le nombre d'armes existantes
``` sql
SELECT count(*) as "Nombre d'armes"
FROM arme;
```

7. Afficher le nombre de personnages du jeu
``` sql
SELECT count(*) as "Nombre de personnages"
FROM personnage;
```

8. Récupérer la moyenne des niveaux des personnages du jeu
``` sql
SELECT AVG(LEVEL) as "Moyenne des niveaux des personnages"
FROM personnage;
```

9. Récupérer la somme des points de force, d'agilité et d'intelligence de toutes les classes

``` sql
SELECT SUM(baseAgi) as "Moyenne d'agilité", SUM(baseIntel) as "Moyenne d'intelligence", SUM(baseForce) as "Moyenne de force"
FROM classe;
```
10. Récupérer le level min et max des armes de jeu
``` sql
SELECT MIN(levelMin) as "level min", MAX(levelMin) as "level max"
FROM arme;
```

11. Additionner le nombre de points de caractéristique de toutes les classes
``` sql
SELECT nom, baseForce + baseIntel + baseAgi as "nombre de points de caractéristique"
FROM classe;
```

#### String : CONCAT, SUBSTRING, LEFT

12. Afficher le nom et le surnom des personnages dans une seule colonne (concaténation)
``` sql
SELECT CONCAT(nom, " ",surnom) as "Personnage"
FROM personnage;
```

13. Afficher les noms des classes avec les points de caractéristique dans une seule colonne
``` sql
SELECT CONCAT(nom, ": ","A = ",baseAgi,", I = ",baseIntel,", F = ",baseForce) as "Classe"
FROM classe;
```

14. Afficher les 6 premières lettres des noms des personnages
``` sql
SELECT SUBSTRING(nom,1,6) 
FROM personnage;
```

15. Afficher les 5 premières lettres des classes concaténées au 20 premières lettres de la description
``` sql
SELECT CONCAT(SUBSTRING(nom,1,5)," : ", SUBSTRING(description,1,20)) as "Description des classe"
FROM classe;
```

#### WHERE

16. 
``` sql
SELECT * 
FROM arme 
WHERE levelMin >5
```

17. Récupérer toutes les armes ayant un nombre de dégats < à 25
``` sql
SELECT * 
FROM arme 
WHERE degat <25
```

18. Récupérer toutes les personnages ayant le level 10 et n'afficher que leur nom et leur surnom

``` sql
SELECT nom, surnom
FROM personnage
WHERE level =10
```

19. Récupérer tous les armes à distance
``` sql
SELECT *
FROM typearme
WHERE estDistance = true
```

#### Les Opérateurs : AND, OR, BETWEEN

20. Récupérer tous les armes ayant un level min compris entre 4 et 8 inclus
``` sql
SELECT *
FROM arme
WHERE levelMin BETWEEN 4 and 8
-- BETWEEN is inclusive by default
```

21. Récupérer tous les personnages ayant un identifiant <= à 3 et un level = à 10
``` sql
SELECT *
FROM personnage
WHERE idPersonnage <=3 and level =10
```

#### JOIN

22. Récupérer tous les personnages et leur classe
``` sql
SELECT * 
FROM personnage
INNER JOIN classe ON personnage.idClasse = classe.idClasse;
```

23. Récupérer toutes les armes et leurs type, et afficher que le nom, levelMin, libelle et estDistance
``` sql
SELECT nom, levelMin, libelle, estDistance 
FROM arme
INNER JOIN typearme ON arme.idTypeArme = typearme.idTypeArme;
```

24. Récupérer le nom des personnages et le nom de leur classe
``` sql
SELECT personnage.nom as "Nom personnage", classe.nom as "Nom classe"
FROM personnage
INNER JOIN classe ON personnage.idClasse = classe.idClasse;
```

25. Récupérer l'arme qui est utilisée par chaque personnage
``` sql
SELECT personnage.nom as "Nom personnage", arme.nom as "Nom arme"
FROM personnage
INNER JOIN arme ON personnage.idArmeUtilise = arme.idArme;
```

26. Récupérer l'arme qui est utilisée par chaque personnage et le type d'arme

``` sql
SELECT personnage.nom as "Nom personnage", arme.nom as "Nom arme", typearme.libelle as "Type d'arme"
FROM personnage
INNER JOIN arme ON personnage.idArmeUtilise = arme.idArme
INNER JOIN typearme ON arme.idTypeArme = typearme.idTypeArme;
```

27. Récupérer toutes les armes de tous les personnages
``` sql
SELECT personnage.nom as "Nom personnage", arme.nom as "Nom arme"
from personnage
INNER JOIN dispose ON personnage.idPersonnage = dispose.idPersonnage
INNER JOIN arme ON arme.idArme = dispose.idArme;


```

28. Récupérer toutes les armes qui ne sont pas à distance
``` sql
SELECT arme.nom as "Nom arme", levelMin, degat, typearme.libelle as "Type"
from arme
INNER JOIN typearme ON arme.idTypeArme = typearme.idTypeArme
WHERE estDistance = False;
```

29. Récupérer l'arme utilisée par chaque guerrier
``` sql
SELECT personnage.nom as "Nom personnage", arme.nom as "Nom arme", typearme.libelle as "Type d'arme" 
from personnage
INNER JOIN arme ON arme.idArme = personnage.idArmeUtilise
INNER JOIN typearme ON typearme.idTypeArme = arme.idTypeArme
INNER JOIN classe ON personnage.idClasse = classe.idClasse
WHERE classe.nom = 'Guerrier'


```

30. 
``` sql
SELECT * FROM ;
```

31. 
``` sql
SELECT * FROM ;
```

32. 
``` sql
SELECT * FROM ;
```

33. 
``` sql
SELECT * FROM ;
```

34. 
``` sql
SELECT * FROM ;
```

35. 
``` sql
SELECT * FROM ;
```

36. 
``` sql
SELECT * FROM ;
```

37. 
``` sql
SELECT * FROM ;
```

38. 
``` sql
SELECT * FROM ;
```

39. 
``` sql
SELECT * FROM ;
```

40. 
``` sql
SELECT * FROM ;
```

41. 
``` sql
SELECT * FROM ;
```

42. 
``` sql
SELECT * FROM ;
```

43. 
``` sql
SELECT * FROM ;
```

44. 
``` sql
SELECT * FROM ;
```

45. 
``` sql
SELECT * FROM ;
```

46. 
``` sql
SELECT * FROM ;
```

47. 
``` sql
SELECT * FROM ;
```

48. 
``` sql
SELECT * FROM ;
```

49. 
``` sql
SELECT * FROM ;
```

50. 
``` sql
SELECT * FROM ;
```

51. 
``` sql
SELECT * FROM ;
```

52. 
``` sql
SELECT * FROM ;
```

53. 
``` sql
SELECT * FROM ;
```

54. 
``` sql
SELECT * FROM ;
```

55. 
``` sql
SELECT * FROM ;
```

56. 
``` sql
SELECT * FROM ;
```

57. 
``` sql
SELECT * FROM ;
```

58. 
``` sql
SELECT * FROM ;
```

59. 
``` sql
SELECT * FROM ;
```

60. 
``` sql
SELECT * FROM ;
```

61. 
``` sql
SELECT * FROM ;
```

62. 
``` sql
SELECT * FROM ;
```

63. 
``` sql
SELECT * FROM ;
```

64. 
``` sql
SELECT * FROM ;
```

65. 
``` sql
SELECT * FROM ;
```

66. 
``` sql
SELECT * FROM ;
```

67. 
``` sql
SELECT * FROM ;
```

68. 
``` sql
SELECT * FROM ;
```

69. 
``` sql
SELECT * FROM ;
```

70. 
``` sql
SELECT * FROM ;
```

71. 
``` sql
SELECT * FROM ;
```

72. 
``` sql
SELECT * FROM ;
```

73. 
``` sql
SELECT * FROM ;
```

74. 
``` sql
SELECT * FROM ;
```

75. 
``` sql
SELECT * FROM ;
```

76. 
``` sql
SELECT * FROM ;
```

77. 
``` sql
SELECT * FROM ;
```

78. 
``` sql
SELECT * FROM ;
```

79. 
``` sql
SELECT * FROM ;
```

80. 
``` sql
SELECT * FROM ;
```

81. 
``` sql
SELECT * FROM ;
```

82. 
``` sql
SELECT * FROM ;
```

83. 
``` sql
SELECT * FROM ;
```

84. 
``` sql
SELECT * FROM ;
```

85. 
``` sql
SELECT * FROM ;
```

86. 
``` sql
SELECT * FROM ;
```

87. 
``` sql
SELECT * FROM ;
```

88. 
``` sql
SELECT * FROM ;
```

89. 
``` sql
SELECT * FROM ;
```

90. 
``` sql
SELECT * FROM ;
```

91. 
``` sql
SELECT * FROM ;
```

92. 
``` sql
SELECT * FROM ;
```

93. 
``` sql
SELECT * FROM ;
```

94. 
``` sql
SELECT * FROM ;
```

95. 
``` sql
SELECT * FROM ;
```

96. 
``` sql
SELECT * FROM ;
```

97. 
``` sql
SELECT * FROM ;
```

98. 
``` sql
SELECT * FROM ;
```

99. 
``` sql
SELECT * FROM ;
```

100. 
``` sql
SELECT * FROM ;
```




## License

[GPL-3.0](https://choosealicense.com/licenses/gpl-3.0/)


## Contact

📫 How to reach me: kebiri.isam.dine@gmail.com

🌐 My Portfolio: <https://kebiri-isam-dine.github.io/>

🔗 Project Link: <https://github.com/kebiri-isam-dine/100_SQL_Queries>
