---
title: "Brève présentation de Pycharm CE"
date: 2020-04-20T15:30:00+01:00
author: ["Raphaele Adjerad"]
image : "images/blog/pythonlogo.svg"
bg_image: "images/featue-bg.jpg"
categories: ["Python"]
tags: ["python","ide", "pycharm"]
description: "Un environnement de développement pour atteindre le Zen de Python"
draft: false
type: "post"
---

# Le [Zen de Python](https://www.python.org/dev/peps/pep-0020/) avec [Pycharm CE](https://www.jetbrains.com/help/pycharm/installation-guide.html)

<div style="text-align: justify"> 

`Pycharm` est un **environnement de développement** de [JetBrains](https://www.jetbrains.com/).
Il existe plusieurs éditions de cet IDE, dont `Pycharm Community Edition`, qui est gratuite et *open source*.
Cet IDE présente des fonctionnalités que je trouve très pratiques pour la programmation 
en Python. Sa prise en main est moins immédiate que celle de `Jupyter Lab` mais 
`Pycharm` est, selon moi, plus agréable pour coder au quotidien.
Je n'aborderai que certains points qui facilitent quotidiennement mon travail.
J'utilise personnellement Python 3.7 avec `Pycharm CE`, associé à [Anaconda](https://anaconda.org/anaconda/python) 
et [Git Bash](https://gitforwindows.org/). 

</div>

## Un code diagnostiqué instantanément 

<div style="text-align: justify"> 

Le script écrit dans `Pycharm` est diagnostiqué au moment où on l'écrit. 
Il existe tout un ensemble de codes couleur pour signaler les erreurs et les *warnings*.
Lorsque l'on survole une erreur, `Pycharm` **nous explique l'erreur et nous propose une solution**.
En haut à droite du script on peut voir le **diagnostic complet** (*Analysis completed*) qui montre 
le nombre total de problèmes rencontrés
et on peut naviguer facilement entre ceux-ci grâce à leur mise en valeur dans la barre de défilement.
On peut ainsi tranquillement reprendre son code dans le but d'avoir une petite flèche verte indiquant
un code valide.


Plusieurs types de *warnings*/*errors* existent, voici quelques exemples seulement:
- les *warnings* concernant le **style du code**, en soulignant tout ce qui ne respecte pas la 
norme [PEP 8](https://www.python.org/dev/peps/pep-0008/). Cela permet de produire rapidement un
code **propre** et **lisible**.
- les *warnings*/*errors* concernant les **packages Python**. Si nous importons un module dont nous
ne disposons pas dans notre environnement, une erreur apparaît; si nous importons une fonction d'un
module et que cette dernière n'existe pas, une erreur apparaît; si un module est importé au 
milieu du script au lieu d'être en en-tête, un warning apparaît, etc.
Pycharm mettra également en valeur les modules qui ne sont finalement pas utilisés dans le script
et qui sont importés sans raison, cela permet de *"faire le ménage"* dans son script rapidement.
- les *warnings*/*errors* concernant les variables/fonctions/classes/etc. : Pycharm nous aide à coder 
de manière **plus
claire** en soulignant les éléments du script qui ne servent pas ou les problèmes de nommage de variables.
Par exemple, si une variable à l'intérieur d'une fonction a le même nom qu'une variable utilisée à 
l'extérieur de cette fonction (*variable shadowing*), un *warning* apparaitra. 

**L'auto-complétion de commandes** est très efficace, ce qui permet un gain de temps, et on peut accéder 
à la **documentation** tout en restant dans le script. 

Comme il existe beaucoup de fonctionnalités, il est possible de se perdre un peu, mais
à chaque ouverture de Pycharm un nouveau *Tips* nous est proposé pour nous faire découvrir une
fonctionnalité que l'on ne connaissait peut-être pas.

</div>


## Un suivi de version facilité 

<div style="text-align: justify"> 

Lorsque le projet sur lequel on travaille dans Pycharm a un contrôle de version,
un onglet *Version control* (sous Windows)/*Git* (sous Ubuntu) apparaît. Celui-ci dispose
de fonctionnalités qui nous permettent de suivre les versions tout en profitant de Git en 
ligne de commande *via* le terminal intégré de Pycharm[^1]. Les commandes Git sont aussi
accessibles via l'interface graphique de Pycharm (comme pour `R Studio`).

[^1]: Sous Windows, le terminal intégré de Pycharm peut être 
[redéfini selon nos souhaits](https://www.jetbrains.com/help/pycharm/terminal-emulator.html). Par exemple,
j'ai aussi `Git bash` sur mon ordinateur et j'ai fait pointer le terminal sur `bash.exe`. 

L'onglet `Version control`  (qui est plus réactif que la fenêtre de suivi de version
 de `R studio` je trouve) dispose de plusieurs fenêtres, présentées ci-dessous.
 
### Le sous onglet Local Changes
 
*Local changes* permet de voir les changements dans les fichiers qui sont pris en compte
dans le contrôle de version (`Default Changelist`) et les fichiers qui ne sont pas (encore) pris en 
compte dans le contrôle de version (`Unversioned Files`). Prenons l'exemple de ce projet, je viens 
d'ajouter cet article de blog au projet `web` (`git add`), il va donc apparaître dans le `Default changelist`. 
Comme je n'ai pas encore fait de `commit`, il apparaît en vert comme ceci: 

![git add](/images/blog/AR-gitadd.JPG)

Lorsque l'on a fait plusieurs changements et
que l'on souhaite voir les modifications d'un `commit` à l'autre, 
on peut également les visualiser dans cette fenêtre. 
Par exemple, après le premier `commit` de cet article, j'écris
cette nouvelle phrase, et elle va apparaître dans le *viewer* de la 
façon suivante:

![git add](/images/blog/AR-gitcommit.jpg)

On peut aussi définir ce que l'on souhaite ignorer comme changements, par exemple
les espaces et les sauts de lignes, s'ils ne nous intéressent pas. On peut mettre en
valeur différents éléments : les lignes où il y a eu des modifications, 
ou bien encore les mots entre lesquels on observe des modifications.
Sur gitlab.com,
pour les fichiers trop volumineux, la comparaison n'est pas toujours possible
alors que dans cet onglet, le *side-by-side viewer* est toujours disponible. 
Pour donner un exemple concret, j'ai pu ainsi voir les différences entre deux
fichiers de nomenclature en santé pour la [Documentation collaborative du 
Système National des Données de Santé](https://documentation-snds.health-data-hub.fr/)
rapidement.

`Pycharm` nous avertit systématiquement lorsque de nouveaux fichiers sont ajoutés à 
notre projet ou que l'on crée de nouveaux scripts pour les ajouter ou non au projet 
(et ils apparaitront en rouge dans l'arborescence du projet à gauche).
Par sécurité, je préfère les ajouter *via* la ligne de commande pour toujours vérifier
avant que je suis sur la bonne branche pour pouvoir ensuite faire mes `commit`.

### Le sous-onglet Log

Le deuxième sous-onglet intéressant de l'onglet `Version control` est le `Log`.
Ce dernier permet de visualiser concrètement les différentes branches, leurs 
avancées les unes par rapport aux autres et tout l'historique des `commit`. 
Prenons l'exemple de la documentation collaborative du SNDS, un projet sur lequel
il y a de nombreux contributeurs, de nombreuses MR, chacune associée à une branche différente.
Le log permet de visualiser les différentes branches sur lesquelles on travaille 
de la manière suivante:

![log](/images/blog/AR-log.JPG)

</div>

## L'avantage des environnements `conda` dans Pycharm 

<div style="text-align: justify"> 

Un projet est associé à un *Project interpreter*, qui va nous permettre
d'exécuter des scripts Python. Celui-ci peut être défini
à partir de plusieurs types d'environnements, dont les environnements 
`conda`.
Ceux-ci servent à définir un environnement d’exécution d’un script `python`, notamment les packages disponibles ou la version de Python utilisée. 

J'utilise personnellement ces environnements `conda` grâce à la connexion
 d'`Anaconda` avec `Pycharm`.
On peut en fait définir par projet ce que l'on souhaite comme version de Python 
et comme versions des packages. Toutes ces informations vont constituer l'environnement `conda` dans lequel 
on exécutera nos scripts.
Les environnements sont également [partageables](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#sharing-an-environment) ce qui permet une plus
grande **reproductibilité** du code. 

Ceci n'est pas vraiment spécifique à `Pycharm`, toutefois, je trouve que
le changement d'un environnement `conda` à l'autre et l'installation de nouveaux
packages ou la mise à jour de version sont facilités dans `Pycharm`. 
Utiliser `Pycharm` combiné à `Anaconda` permet aussi de [régulièrement mettre à jour
`conda`](https://www.anaconda.com/keeping-anaconda-date/) pour avoir les dernières
versions disponibles des différents packages. On peut mettre à jour un environnement spécifique ce qui permet de ne pas avoir 
de **conflit de versions de packages** dans un projet.

</div>



## Conclusion

Pour conclure, il existe aussi de nombreux `Plugins` supplémentaires comme le
 *viewer side by side* de `Markdown` pour suivre le rendu du texte écrit dans les fichiers
`Markdown`, ce qui permet d'améliorer le processus de **documentation**.

Enfin, il existe aussi un onglet `TODO` qui permet de référencer tous les endroits
du projet où l'on a noté un `TODO` afin de pouvoir constituer une liste de 
tâches. 