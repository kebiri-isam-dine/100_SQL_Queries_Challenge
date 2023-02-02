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

- ##### SELECT

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

- ##### Fonctions calculs : COUNT, SUM, AVG

6. Récupérer le nombre d'armes existantes
``` sql
SELECT count(*) as "Nombre d'armes"
FROM arme;
```

7. 
``` sql
select *
from ;
```

8. 
``` sql
select *
from ;
```

9. 
``` sql
select *
from ;
```
10. 
``` sql
select *
from ;
```

11. 
``` sql
select *
from ;
```

12. 
``` sql
select *
from ;
```

13. 
``` sql
select *
from ;
```

14. 
``` sql
select *
from ;
```

15. 
``` sql
select *
from ;
```

16. 
``` sql
select *
from ;
```

17. 
``` sql
select *
from ;
```

18. 
``` sql
select *
from ;
```

19. 
``` sql
select *
from ;
```

20. 
``` sql
select *
from ;
```

21. 
``` sql
select *
from ;
```

22. 
``` sql
select *
from ;
```

23. 
``` sql
select *
from ;
```

24. 
``` sql
select *
from ;
```

25. 
``` sql
select *
from ;
```

26. 
``` sql
select *
from ;
```

27. 
``` sql
select *
from ;
```

28. 
``` sql
select *
from ;
```

29. 
``` sql
select *
from ;
```

30. 
``` sql
select *
from ;
```

31. 
``` sql
select *
from ;
```

32. 
``` sql
select *
from ;
```

33. 
``` sql
select *
from ;
```

34. 
``` sql
select *
from ;
```

35. 
``` sql
select *
from ;
```

36. 
``` sql
select *
from ;
```

37. 
``` sql
select *
from ;
```

38. 
``` sql
select *
from ;
```

39. 
``` sql
select *
from ;
```

40. 
``` sql
select *
from ;
```

41. 
``` sql
select *
from ;
```

42. 
``` sql
select *
from ;
```

43. 
``` sql
select *
from ;
```

44. 
``` sql
select *
from ;
```

45. 
``` sql
select *
from ;
```

46. 
``` sql
select *
from ;
```

47. 
``` sql
select *
from ;
```

48. 
``` sql
select *
from ;
```

49. 
``` sql
select *
from ;
```

50. 
``` sql
select *
from ;
```

51. 
``` sql
select *
from ;
```

52. 
``` sql
select *
from ;
```

53. 
``` sql
select *
from ;
```

54. 
``` sql
select *
from ;
```

55. 
``` sql
select *
from ;
```

56. 
``` sql
select *
from ;
```

57. 
``` sql
select *
from ;
```

58. 
``` sql
select *
from ;
```

59. 
``` sql
select *
from ;
```

60. 
``` sql
select *
from ;
```

61. 
``` sql
select *
from ;
```

62. 
``` sql
select *
from ;
```

63. 
``` sql
select *
from ;
```

64. 
``` sql
select *
from ;
```

65. 
``` sql
select *
from ;
```

66. 
``` sql
select *
from ;
```

67. 
``` sql
select *
from ;
```

68. 
``` sql
select *
from ;
```

69. 
``` sql
select *
from ;
```

70. 
``` sql
select *
from ;
```

71. 
``` sql
select *
from ;
```

72. 
``` sql
select *
from ;
```

73. 
``` sql
select *
from ;
```

74. 
``` sql
select *
from ;
```

75. 
``` sql
select *
from ;
```

76. 
``` sql
select *
from ;
```

77. 
``` sql
select *
from ;
```

78. 
``` sql
select *
from ;
```

79. 
``` sql
select *
from ;
```

80. 
``` sql
select *
from ;
```

81. 
``` sql
select *
from ;
```

82. 
``` sql
select *
from ;
```

83. 
``` sql
select *
from ;
```

84. 
``` sql
select *
from ;
```

85. 
``` sql
select *
from ;
```

86. 
``` sql
select *
from ;
```

87. 
``` sql
select *
from ;
```

88. 
``` sql
select *
from ;
```

89. 
``` sql
select *
from ;
```

90. 
``` sql
select *
from ;
```

91. 
``` sql
select *
from ;
```

92. 
``` sql
select *
from ;
```

93. 
``` sql
select *
from ;
```

94. 
``` sql
select *
from ;
```

95. 
``` sql
select *
from ;
```

96. 
``` sql
select *
from ;
```

97. 
``` sql
select *
from ;
```

98. 
``` sql
select *
from ;
```

99. 
``` sql
select *
from ;
```

100. 
``` sql
select *
from ;
```




## License

[GPL-3.0](https://choosealicense.com/licenses/gpl-3.0/)


## Contact

📫 How to reach me: kebiri.isam.dine@gmail.com

🌐 My Portfolio: <https://kebiri-isam-dine.github.io/>

🔗 Project Link: <https://github.com/kebiri-isam-dine/100_SQL_Queries>
