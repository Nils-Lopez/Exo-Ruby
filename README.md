# Exo-Ruby# Toi aussi, code des applications qui déchirent !

## Introduction

Tout comme **[Felix Gaudé](https://github.com/felhix)** l'a expliqué dans son Atelier - **[Toi aussi génère un algorithme qui va créer une playlist Spotify](https://www.youtube.com/watch?v=y-HoJvKGeME&feature=youtu.be)**, nous allons te montrer par l'exemple que toi aussi, après 2 semaines de cours intensifs Ruby, tu as déjà suffisamment d'outils en main pour coder des applications concrètes.

### Un algorithme? Qu'est ce que c'est ?

Les algorithmes sont des feuilles de route pour accomplir une tâche donnée et définie. Ainsi, bien que simple, un morceau de code qui ajoute deux nombres est un algorithme!
Vous pourriez être surpris d'apprendre combien d'algorithmes complexes vous utilisez chaque jour lorsque vous vérifiez vos emails ou écoutez Spotify.

Nous allons maintenant réaliser notre propre algo. As-tu déjà remarqué que le prix des billets est différent selon le site internet ? Mais comment veux-tu trouver le billet le moins cher si tu n'es pas sûr que ton comparateur soit au meilleur prix ? Bah fais un algo et compares les comparateurs. Plutôt cool comme idée, non ? :yum:

## Réveille le Mark Zuckerberg qui est en toi! :smirk:

### Tes sources d'inspirations

Sers toi de tes centres d'interêts, de tes passions ou problèmatiques personnelles. Ta seule limite est ton imagination. Une idée qui t'amuse et qui répond à une problématique de ton quotidien, t'aideras beaucoup à rester motivé quand tu passeras des heures à débugguer ton code par la suite.

Prenons un exemple, étant un étudiant passioné de voyage, j'ai la fâcheuse tendance à passer des heures à écumer les sites de comparateurs de vols pour trouver LE vol au meilleur prix. Galère de passer des heures à trouver le meilleur prix... Et si je comparais ces comparateurs ?

### Etudie sa faisabilité

Le plus simple pour étudier la faisabilité de notre projet est de faire une recherche dans les dépôts GitHub déjà existants.

En utilisant notre exemple du comparateur, nous avons fait une recherche dans GitHub "skyscanner ruby" et bon nombre de résultats apparaissent, le premier étant "Skyscanner API for ruby". Notre projet semble donc faisable. Tu peux aussi faire une bonne vieille recherche Google.

## Structure ton idée

Comme dit plus haut, nous allons essayer de te trouver le billet au meilleur prix ! Penses-tu que c'était notre idée initiale ? Que nenni! Au départ nous voulions réaliser un algorithme qui réalise le meilleur plan de vol en fonction de 3 villes données. Mais il est important - et à fortiori pour un codeur débutant -  de simplifier la problématique au maximum. Nous avons donc réduit la complexité de notre algo jusqu'à sa forme minimale, cela va considérablement nous simplifier le travail.

Ce concept de simplification, appelé MVP pour "Minimum Viable Product", est d'ailleurs fortement utilisé dans le monde des Startup. Il consiste à produire rapidement un produit fini et à lui ajouter des fonctionnalités ensuite. Nous pourrons donc, après avoir répondu à notre première problématique, améliorer notre programme et lui ajouter des fonctionnalités.

Nous avons donc aboutie à la problématique suivante : "Comment trouver le vol au meilleur prix ?" Pour y répondre nous nous contenterons donc de comparer les comparateurs. L'idée est donc simplement d'entrer une ville de départ et de destination pour une date donnée, le programme devra nous sortir le vol le plus adapté.

## Rookie! Get Ready to code!

### Keep it Simple

Ca y est, tu as trouvé ta problématique! Avant de partir bille en tête sur la rédaction de ton code, arrête toi un instant et prends le temps de réfléchir aux actions qu'il va réaliser.

Découpe ton problème en "recette". Dans un premier temps, sers toi d'un exemple concret et note chacune des actions que tu ferais manuellement pour atteindre ton résultat.

Prenons à nouveau notre exemple utilisé précédemment, voilà comment nous l'avons décomposé :

1. Récupérer les informations de destination: Départ / Arrivée
2. Aller sur les X sites de comparaison
3. Obtenir la liste des vols et chercher le vol le moins cher
4. Obtenir la liste des vols et chercher le vol le plus rapide
5. Afficher le résultat

Dans un premier temps et dans la mesure du possible, essaye de réaliser une méthode par point, ça te permettra de réaliser un code plus lisible et structuré. Tu devras t'adapter au fur et à mesure en réalisant et sûrement en découpant certaines parties en sous-parties.

Je t'entends déjà me dire: "Hey gamin, il est un peu lége' ton algo!". Et tu as entièrement raison! Mais à nouveau, ne cherche pas à trouver la solution parfaite du premier coup. Tu n'y arriveras que très rarement et sur des problèmatiques simplistes. L'important est de travailler de façon itérative, par étapes successives. Prends de la hauteur pour commencer, tu t'attarderas à retravailler les détails plus tard.

Si on prend le temps de retravailler notre premier jet, on se rend effectivement compte qu'il y a encore beaucoup de choses à détailler.

Par exemple, comment vas-tu récupérer les informations de destination?

1. Récupérer les informations de destination: Départ / Arrivée

En réfléchissant un peu à ton contexte, tu vois qu'il va falloir demander une ville de départ et d'arrivée à l'utilisateur. Tu arrives donc assez vite à cette conclusion:

Méthode: demander une ville
```
Début de la méthode "demander_ville"
    Afficher un message à l'utilisateur pour qu'il saisisse une ville
    Enregistrer la saisie clavier
    Afficher un message confirmant que tu as bien pris en compte la saisie
    Retourner la valeur saisie
Fin de la méthode
```

Tu n'es pas encore convaincu ? Tu te dis qu'un algo c'est sans doute cool, mais pour qui a du temps à perdre, et que tu serais arrivé au même résultat en codant ta méthode directement? Pour un cas aussi simple, sans doute... mais pour des cas de traitements plus complexe, c'est une toute autre affaire!

Attardons nous cette fois sur la partie recherche et traitement de l'information

Faire le traitement sur les vols obtenus:
3. Obtenir la liste des vols et chercher le vol le moins cher
4. Obtenir la liste des vols et chercher le vol le plus rapide

On doit donc chercher le vol le moins cher et le vol le plus court... "Ah bah merci Captain Obvious, je l'aurais pas deviné tout seul!".

Attardons nous sur les détails de chaque fonction:
"Prendre la liste des vols et chercher le vol le moins cher": Là j'ai 2 actions distinctes, Obtenir et Chercher... il est donc sûrement plus judicieux de faire deux méthodes séparées! Après cette seconde lecture de notre algo, on a maintenant:

1. Récupérer les informations de destination: Départ / Arrivée
```
Début de la méthode "demander_ville"
    Afficher un message à l'utilisateur pour qu'il saisisse une ville
    Enregistrer la saisie clavier
    Afficher un message confirmant que tu as bien pris en compte la saisie
    Retourner la valeur saisie
Fin de la méthode`
```

2. Aller sur les X sites de comparaison
3. Obtenir la liste des vols
4. Chercher le vol le moins cher
5. Chercher le vol le plus rapide
6. Afficher le résultat

Ca se précise, on sent facilement à la lecture que chaque étape successive va pouvoir être executé par une méthode qui lui est propre.
Ca te permet de conclure que tu vas devoir récupérer le prix du billet ET le temps de vol!

3. Obtenir la liste des vols
```
Début de la méthode "liste_vols"
    Retourner le numéro de vol
    Retourner le prix du vol
    Retourner le temps de vol
Fin de la méthode
```

Ne vois-tu pas l'évidence? Ne peut-on pas encore simplifier les étapes de collecte d'information? Va-t-on vraiment chercher à récupérer tous les vols en une fois ? Ne serait-il pas plus simple de collecter ces vols en s'adressant à chaque site l'un après l'autre ?

- 3a. Obtenir la liste des vols pour un site
```
Début de la méthode "liste_vols_site"
    Retourner le numéro de vol
    Retourner le prix du vol
    Retourner le temps de vol
Fin de la méthode
```

- 3b. Construire une liste globale des vols
```
Début de la méthode "liste_vols_globale"
    Pour chaque liste de vol faire
        Inserer chaque valeur dans une liste globale
    Retourner la liste globale
Fin de la méthode
```

Aaah! Voila! Là ça devient plus concret! Et tu comprends vite l'intérêt de rédiger un algorithme par relectures successives! Ton raisonnement naturel te masque les actions induites. Il est tellement évident que tu vas devoir faire ta recherche site par site, que tu ne penses pas forcement à le noter. Or dans ton code, rien ne sera induit, tu vas devoir tout rédiger ! A force d'étapes plus ou moins longues en fonction de la complexité de ton projet, ton algo va devenir de plus en plus clair et lisible<sup>1</sup>:

1. Récupérer les informations de destination: Départ / Arrivée
```
Début de la méthode "demander_ville"
    Afficher un message à l'utilisateur pour qu'il saisisse une ville
    Enregistrer la saisie clavier
    Afficher un message confirmant que tu as bien pris en compte la saisie
    Retourner la valeur saisie
Fin de la méthode
```

2. Aller sur les X sites de comparaison

3. Obtenir la liste des vols
- 3a. Obtenir la liste des vols pour un site
```
Début de la méthode "liste_vols_site"
    Retourner le numéro de vol
    Retourner le prix du vol
    Retourner le temps de vol
Fin de la méthode
```

- 3b. Construire une liste globale des vols
```
Début de la méthode "liste_vols_globale"
    Pour chaque liste de vol faire
        Inserer chaque valeur dans une liste globale
    Retourner la liste globale
Fin de la méthode
```

4. Chercher le vol le moins cher
```
Début de la méthode "vol_moins_cher(hash_liste_vols_globale)"
    Chercher le prix le plus bas (i.e. la plus petite valeur dans le hash)
    Retourner le numéro de vol et le prix (i.e. clé, valeur)
Fin de la méthode
```

5. Chercher le vol le plus court
```
Début de la méthode "vol_plus_court(hash_liste_vols_globale)"
    Chercher le temps le plus court (i.e. la plus petite valeur dans le hash)
    Retourner le numéro de vol et le temps de vol (i.e. clé, valeur)
Fin de la méthode
```

6. Afficher le résultat
```
Début de la méthode "vol_plus_court(hash_liste_vols_globale)"
    Chercher le prix le plus bas (i.e. la plus petite valeur dans le hash)
    Retourner le numéro de vol et le prix (i.e. clé, valeur)
Fin de la méthode
```

Maintenant que ton algorithme est rédigé, tu peux passer au code sans souci <sup>1</sup> ! Rien qu'en le lisant, tu déduis très clairement ce que tu vas devoir coder dans chaque méthodes, et comment ses méthodes s'articulent entre elles!

### Utilise les bonnes pratiques

Quelque soit le contexte de ton projet, impose toi [les bons réflèxes](https://gist.github.com/felhix/74bbe4ef778d566c2691ca1167c48ae1).

### Passe à l'action

La réalisation de ta recette t'aideras à structurer tes idées et donc ton code, mais elle ne rendra pas les difficultés techniques simples pour autant. Tu seras régulièrement en PLS dans la réalisation, mais  c'est normal. Comme à l'accoutumé, fais appel à ton meilleur ami (aka Google) quand tu es bloqué.

### BUT *The Code isn't the thing, It’s the thing that gets us to the thing*

Au fur et à mesure que tu codes, tu risques de te perdre, de tomber sur de nouvelles problématiques, de vouloir ajouter des fonctionnalités etc. Mais ne perds pas de vue ton objectif qui est d'apporter une solution à ton problème, de mettre en réalisation ton idée.

---

<sup>[1]</sup> L'algorithme de cet article est volontairement incomplet !  Si tu te sens chaud, à toi de le compléter et de le coder! :stuck_out_tongue_winking_eye:
