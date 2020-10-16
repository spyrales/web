---
title: "Introduction à l'économétrie en grande dimension et à la sélection de variables"
date: 2020-10-16T10:15:10+01:00
author: ["Jérémy L'Hour"]
image: "images/blog/books-img.jpg"
bg_image: "images/featue-bg.jpg"
categories: ["Autoformation"]
tags: ["MachineLearning","Ressources","Econométrie"]
description: "Références pour faire de l'économétrie en grande dimension et de la sélection de variables"
draft: false
type: "post"
---

Vous voulez en savoir plus sur l'économétrie en grande dimension et la sélection de variables? Ce billet est fait pour vous.

Les situations de "grande dimension", c'est-à-dire lorsque l'on souhaite estimer un grand nombre de paramètres relativement à la taille de l'échantillon disponible et où les méthodes économétriques traditionnelles sont mises en défaut, apparaissent dans une large variété de domaines:

* L'analyse des déterminants de la croissance économique. Par exemple, Sala-I-Martin (1997) cherche à sélectionner de façon robuste les facteurs de la croissance économique en estimant les 30,856 régressions à sept variables avec toutes les combinaisons possibles de trois variables parmi 58, soit 30 856, quatre étant fixées a priori.
    
* La prédiction à partir d'un grand nombre de variables ou bien de transformations polynomiales des régresseurs. C'est rapidement le cas dès que l'on parle de données macroéconomiques d'autant plus que le nombre d'observations se trouve souvent limité. Par exemple, Ferrara et Simoni (2019) utilisent la régression Ridge pour estimer une équation de prévision du taux de croissance du PIB avec un grand nombre de variables provenant à la fois de sources de comptabilité nationale, de sondages d'opinion et de données mesurant les recherches Google.
    
* L'estimation d'effets de traitement pour une multitude de traitements ou sur un grand nombrede sous-groupes -- ou tout simplement, l'estimation de l'effet d'un grand nombre de variables explicatives. Par exemple, Abrams et Mullainathan (2012) cherchent à estimer l'effet de l'origine ethnique de l'accusé sur la sentence donnée par le juge, et ce pour un grand nombre de juges; Chetty et Hendren (2018 étudient l'impact de la localisation géographique sur la mobilité sociale aux États-Unis, pour un grand nombre de localisations.
    
* L'analyse textuelle et en particulier la classification de documents. Cette analyse se base généralement sur la constitution d'un dictionnaire établi à partir des mots retrouvés dans les documents inclus dans la base de données. Ce dictionnaire permet alors de construire la matrice (généralement de très grande dimension) terme-document qui compte, par document, le nombre de fois où un mot du dictionnaire est utilisé. Cette matrice est ensuite utilisée directement ou indirectement pour construire des variables explicatives puisque l'utilisation d'un terme plutôt que d'un autre reflète un document de nature particulière. Il y a donc autant de variables que de mots dans le dictionnaire.

Ces exemples requièrent ou, dans tous les cas, peuvent tirer parti d'une approche qui pénalise la complexité du modèle ou séléctionne les variables à considérer. C'est ce que l'on va voir, pas à pas, dans ce [document de travail Insee]() ainsi que dans [les notebooks R qui l'accompagnent](https://github.com/InseeFrLab/grandedim).

L'idée est d'abord de présenter les méthodes qui résolvent les principaux problèmes qui se présentent en grande dimension. On verra notamment le Lasso, qui permet également de faire de la sélection de variables. On verra néanmoins les dangers de faire de la sélection de variables "comme si" le modèle sélectionné était le bon, sans prendre en compte l'incertitude qui entâche totue procédure de sélection de variables.

Au menu: de la théorie, des codes pour la mise en application des méthodes, des exemples empiriques en R, etc.

## Références

[Lien vers le document de travail]()

[Lien vers le répertoire GitHub](https://github.com/InseeFrLab/grandedim)

[Lien vers le polycopié du cours de l'ENSAE Paris -- "Machine Learning for Econometrics"](https://drive.google.com/file/d/1L_iervUBKj3RsXHLEGOtAFlyHEHpmyT4/view)