Pour regrouper les intitulés dupliqués dans une table à l'aide d'un script SQL, vous pouvez utiliser la clause "GROUP BY" de SQL en combinaison avec la fonction "COUNT" pour compter le nombre d'occurrences de chaque intitulé. Voici un exemple de script SQL :

```sql
SELECT intitule, COUNT(*) AS nb_occurrences
FROM ma_table
GROUP BY intitule
HAVING COUNT(*) > 1;
```

Dans cet exemple, nous sélectionnons la colonne "intitule" et utilisons la fonction `COUNT` pour compter le nombre de lignes ayant chaque valeur d'intitulé. La clause `GROUP BY` est utilisée pour regrouper les lignes ayant la même valeur d'intitulé.

La clause `HAVING` est utilisée pour filtrer les résultats en ne retournant que les intitulés ayant plus d'une occurrence. Si vous souhaitez inclure tous les intitulés, y compris ceux qui n'ont qu'une seule occurrence, vous pouvez supprimer la clause "HAVING" de la requête.

Cet exemple de script SQL vous permettra de regrouper les intitulés dupliqués dans votre table et de compter le nombre d'occurrences de chaque intitulé.