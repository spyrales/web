---
title: "Introduction à datatable pour les utilisateurs de R"
date: 2020-04-04T18:13:08+01:00
author: ["Lino Galiana"]
image : "https://linogaliana.netlify.com/img/headers/datatable.png"
categories: ["Autoformation","R"]
tags: ["R","datatable"]
description: 'Présentation d'une introduction à l'approche `data.table` en `R`'
draft: true
type: "post"
---


Ce post vise à présenter une introduction à `data.table`, écrite à 6 mains, disponible
[en suivant ce lien](https://linogaliana.netlify.com/post/datatable/datatable-intro/).
`data.table` est un package `R` offrant un écosystème complet pour traiter de manière
efficace des données en `R`. Il s'agit, en premier lieu, d'un *package* proposant
une version améliorée du data.frame de base: le... `data.table`.
Avec ce `data.frame` évolué, la plupart des opérations sont effectuées dans 
les crochets (`[...]`)

<!------
La fonction fondamentale de `data.table` est l’opérateur `[...]` (crochets).
Dans un `data.frame` de base, les crochets `df[...]` servent uniquement à
sélectionner des lignes ou des colonnes. Dans un `data.table`,
les crochets `dt[...]` permettent de faire beaucoup plus de choses
(quasiment tout, en pratique). En fait, les
instructions à l’intérieur
des crochets peuvent être envisagées
comme des requêtes SQL mises en forme différemment.

La forme générale de l’opérateur `[...]` est la suivante: `DT[i, j, by]`.
Si on fait un parallèle avec `SQL`, i correspond au WHERE, j au SELECT et by au GROUP BY. Cette manipulation peut se lire comme ceci: "on part du data.table DT, on sélectionne certaines lignes avec i, puis on calcule j pour chaque groupe défini par by.
------>


`data.table` est devenu une solution incontournable en 


[Introduction à R et au tidyverse](https://juba.github.io/tidyverse/) est un
document de formation en ligne à destination de personnes débutant avec le
langage R.

Il a été conçu il y a une dizaine d'années comme un support de formation pour
une introduction à R auprès de chercheur.es en sociologie. Il a depuis évolué
pour devenir un document autonome. Il conserve une approche "SHS" (Sciences
Humaines et Sociales), mais les notions abordées sont a priori utiles pour
tous les usages.


### Public visé

Ce document est destiné à deux publics potentiels :

- les **débutants en R**, qui pourront lire l'ensemble en commençant par la partie
  *Introduction à R* : celle-ci ne demande aucun prérequis en informatique et
  se veut la plus accessible possible.
- les **personnes connaissant déjà R**, mais souhaitant se familiariser avec les
  extensions dites du *tidyverse* : celles-ci pourront se contenter de la
  deuxième partie *Introduction au tidyverse*.


### Contenu de la formation

L'ouvrage est une introduction assez complète aux différents outils et notions
nécessaires pour débuter en R. Vous y trouverez notamment :

- une prise en main de l'interface de RStudio et des grands principes du
  langage R
- comment charger des données, appliquer des analyses univariées ou bivariées
  simples
- l'importation et exportation de données depuis ou vers différents formats
- la réalisation de graphiques avec l'extension `ggplot2`
- le recodage de variables qualitatives
- la manipulation des données avec `dplyr` et `tidyr`
- la création de documents et l'export de résultats avec `rmarkdown`
  
Chaque partie comprend des exercices corrigés et une annexe liste
différentes ressources d'apprentissage et d'entraide.


### Ce que vous ne trouverez pas

En revanche, vous ne trouverez pas dans cet ouvrage :
  
- une introduction aux méthodes quantitatives d'analyse de données (ça n'est
  pas l'objet)
- un guide de référence complet de R : si vous développez déjà dans un autre
  langage, d'autres documents seront peut-être plus concis et plus efficaces.
	
Le document est diffusé sous licence libre et il est librement accessible en
HTML, PDF et EPUB à l'adresse suivante :

https://juba.github.io/tidyverse/

Et je suis évidemment toujours preneur de retours, critiques ou suggestions !
