---
title: "Introduction à l'économétrie en grande dimension et à la sélection de variables"
date: 2020-10-22T10:15:10+01:00
author: ["Jérémy L'Hour"]
image: "images/blog/books-img.jpg"
bg_image: "images/featue-bg.jpg"
categories: ["Autoformation"]
tags: ["MachineLearning","Ressources","Econométrie"]
description: "Références pour faire de l'économétrie en grande dimension et de la sélection de variables"
draft: false
type: "post"
---

Vous voulez en savoir plus sur l'économétrie en grande dimension et la sélection de variable? Ce billet est fait pour vous.

Les situations de "grande dimension", c'est-à-dire lorsque l'on souhaite estimer un grand nombre de paramètres relativement à la taille de l'échantillon disponible et où les méthodes économétriques traditionnelles sont mises en défaut, apparaissent dans une large variété de domaines:

* L'analyse des déterminants de la croissance économique. Par exemple, Sala-I-Martin (1997) cherche à sélectionner de façon robuste les facteurs de la croissance économique en estimant les 30,856 régressions à sept variables avec toutes les combinaisons possibles de trois variables parmi 58, soit 30 856, quatre étant fixées a priori.
    
* La prédiction à partir d'un grand nombre de variables ou bien de transformations polynomiales des régresseurs. C'est rapidement le cas dès que l'on parle de données macroéconomiques d'autant plus que le nombre d'observations se trouve souvent limité. Par exemple, Ferrara et Simoni (2019) utilisent la régression Ridge pour estimer une équation de prévision du taux de croissance du PIB avec un grand nombre de variables provenant à la fois de sources de comptabilité nationale, de sondages d'opinion et de données mesurant les recherches Google.
    
* L'estimation d'effets de traitement pour une multitude de traitements ou sur un grand nombrede sous-groupes -- ou tout simplement, l'estimation de l'effet d'un grand nombre de variables explicatives. Par exemple, Abrams et Mullainathan (2012) cherchent à estimer l'effet de l'origine ethnique de l'accusé sur la sentence donnée par le juge, et ce pour un grand nombre de juges; Chetty et Hendren (2018 étudient l'impact de la localisation géographique sur la mobilité sociale aux États-Unis, pour un grand nombre de localisations.
    
* L'analyse textuelle et en particulier la classification de documents. Cette analyse se base généralement sur la constitution d'un dictionnaire établi à partir des mots retrouvés dans les documents inclus dans la base de données. Ce dictionnaire permet alors de construire la matrice (généralement de très grande dimension) terme-document qui compte, par document, le nombre de fois où un mot du dictionnaire est utilisé. Cette matrice est ensuite utilisée directement ou indirectement pour construire des variables explicatives puisque l'utilisation d'un terme plutôt que d'un autre reflète un document de nature particulière. Il y a donc autant de variables que de mots dans le dictionnaire.

Ces exemples requièrent ou, dans tous les cas, peuvent tirer parti d'une approche qui pénalise la complexité du modèle ou séléctionne les variables à considérer. C'est ce que l'on va voir, pas à pas, dans ce [document de travail Insee](https://www.insee.fr/fr/statistiques/4923129) ainsi que dans [les notebooks R qui l'accompagnent](https://github.com/InseeFrLab/grandedim).

Ce document de travail passe d'abord en revue les différentes méthodes qui résolvent les principaux problèmes qui se présentent en grande dimension dans un cadre linéaire simple, i.e. lorsque les moindres carrés sont mis en défaut. On verra en particulier le Lasso qui, par nature, permet de faire de la sélection de variables de façon automatique. Cette première partie évoque également les extensions possibles et présente des méthodes telles que la validation croisée pour choisir les paramètres de régularisation.

Malgré l'attrait du Lasso pour sélectionner les variables à inclure dans un modèle, on verra les dangers de faire de l'inférence dans le modèle choisi "comme si" ce modèle était le bon, sans prendre en compte l'incertitude qui entache toute procédure de sélection de variable. En effet, lorsqu'une étape de sélection de variable précéde l'estimation d'un modèle, l'estimateur qui en résulte n'aura généralement pas une distribution asymptotiquement gaussienne, ce qui peut fausser le niveau des intervalles de confiance ou des tests que l'on souhaite mettre en œuvre de façon standard. Pour corriger de ces biais, il existe une procédure d'immunisation, qui prend, dans certains cas simples, la forme d'une procédure de double sélection. La mise en œuvre de cette procédure est détaillée dans un exemple où l'on cherche à quantifier l'impact du niveau de diplôme sur le salaire grâce aux données de l'Enquête Emploi.

Enfin, la dernière partie montre comment on peut utiliser le Machine Learning (ML) pour la détection d'effets hétérogènes, c'est-à-dire de la modulation de l'intensité d'un lien causal par des facteurs confondants. Cette tâche répond à plusieurs objectifs: d'une part, on peut souhaiter évaluer l'efficacité d'un traitement ou d'une politique pour des sous-populations distinctes afin de décider quels individus traiter, d'autre part, cela permet d'établir la validité externe des résultats en évaluant l'impact d'une politique sur une autre population, différente de celle ayant servie à l'expérimentation. Cette tâche est également de grande dimension dans la mesure où on peut vouloir considérer des sous-populations générées par un croisement de multiples caractéristiques. Le danger est alors de faire des découvertes fallacieuses concernant les dimensions selon lesquelles l'effet du traitement varie, en se lançant dans de la recherche de spécification (ou pêche aux p-values). Une solution peut être alors d'utiliser des algorithmes de ML afin d'étudier de façon automatique l'hétérogénéité d'un traitement.

Au menu: de la théorie pour bien comprendre les différents phénomènes à l'œuvre, du code R pour la mise en application des méthodes grâce aux packages existants, des exemples empiriques reproductibles, des simulations pour illustrer les différents problèmes qui peuvent survenir etc.

A noter que la première partie peut également servir d'introduction douce au machine learning pour un public débutant.

## Liens utiles

[Document de travail Insee](https://www.insee.fr/fr/statistiques/4923129)

[Répertoire GitHub correspondant](https://github.com/InseeFrLab/grandedim)

Pour aller plus loin: [polycopié du cours de l'ENSAE Paris -- "Machine Learning for Econometrics"](https://drive.google.com/file/d/1L_iervUBKj3RsXHLEGOtAFlyHEHpmyT4/view)
