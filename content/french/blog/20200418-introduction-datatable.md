---
title: "Introduction à datatable pour les utilisateurs de R"
date: 2020-04-18T18:13:08+01:00
author: ["Lino Galiana", "Olivier Meslin"]
image : "https://linogaliana.netlify.com/img/headers/datatable.png"
bg_image: "images/featue-bg.jpg"
categories: ["R","Autoformation"]
tags: ["R","datatable"]
description: "Présentation d'une introduction à l'approche data.table en R"
draft: false
type: "post"
---

Ce post vise à présenter une introduction à `data.table`, écrite à 6 mains, disponible
sur <https://linogaliana.netlify.com/post/datatable/datatable-intro/>.


`data.table` est un package `R` offrant un écosystème complet pour traiter de manière
efficace des données en `R`.

Il s'agit, en premier lieu, d'un *package* proposant
une version améliorée du data.frame de base: le... `data.table`.
Avec ce `data.frame` évolué, la plupart des opérations sont effectuées dans 
les crochets (`[...]`). Dans un `data.frame` de base, les crochets
`df[...]` servent uniquement à
sélectionner des lignes ou des colonnes. Dans un `data.table`,
les crochets `dt[...]` permettent de faire beaucoup plus de choses
(quasiment tout, en pratique). En fait, les
instructions à l’intérieur
des crochets peuvent être envisagées
comme des requêtes SQL mises en forme différemment.

La forme générale de l’opérateur `[...]` est la suivante: `DT[i, j, by]`.
Si on fait un parallèle avec `SQL`, i correspond au WHERE,
j au SELECT et by au GROUP BY.
Cette manipulation peut se lire comme ceci:
*"on part du data.table `DT`, on sélectionne certaines lignes
avec `i`, puis on calcule `j` pour chaque groupe défini par `by`"*

La syntaxe de `data.table` est très concise, ce qui est
appréciable dans de gros projets informatiques. De plus,
si vous êtes amenés à rédiger des fonctions
génériques utilisant des noms
de variables en argument, il est également recommandé d'utiliser
`data.table` plutôt que `dplyr`.
  
Néanmoins, l'argument principal en faveur de `data.table` reste **l'efficacité**.
`data.table` est la solution la plus adaptée pour traiter des données
volumineuses sans base de données ou en l'absence d'une infrastructure
*big data* de type `Spark`. Les opérations sur un `data.table`
demanderont beaucoup moins de RAM que sur d'autres types de 
`data.frames`. Si vous n'êtes toujours pas convaincu des performances de `data.table`,
vous avez plusieurs comparatifs de 
langages [ici](https://h2oai.github.io/db-benchmark/).


La suite est disponible à l'adresse
<https://linogaliana.netlify.com/post/datatable/datatable-intro/>.




