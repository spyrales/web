---
title: "Une initiation à R en cinq demi-journées"
date: 2020-03-25T18:11:08+01:00
author: Martin Chevalier
image : "images/blog/renata-adrienn-ebvCsRypmxM-unsplash.jpg"
bg_image: "images/featue-bg.jpg"
categories: ["Autoformation"]
tags: ["R"]
description: 'Se former à R en 5 demi-journées'
draft: false
type: "post"
---

Ce post très court propose, à celles et ceux qui souhaiteraient profiter du contexte actuel (et de l'accès parfois limité en télé-travail aux ressources de nos organisations respectives), de s'autoformer à R à partir des **supports d'une formation que j'ai conçue et donnée à l'Insee de 2016 à 2018**. L'ensemble est librement accessible à l'adresse : [r.slmc.fr](https://teaching.slmc.fr/r/). 

Ce support, initialement utilisé pour des formations en présentiel de deux jours, a en fait été pensé pour **servir aussi en auto-formation** (et a déjà été utilisé ainsi par de nombreux collègues) : l'ensemble du contenu est séquencé en **parties relativement courtes** avec des **exercices corrigés au fur et à mesure**. Il s'adresse à des **statisticien·ne·s raisonnablement à l'aise avec un autre logiciel statistique** (par exemple SAS) et s'appuie pour l'essentiel sur des **données Insee** (un peu datées maintenant) : code officiel géographique, recensement de la population, enquête Emploi en continu, etc.

Plus précisément, la formation est organisée en **trois modules** : 

- le [**module 1**](https://teaching.slmc.fr/r/module1.html) (une demi-journée) vise à faire un premier **tour rapide des fonctionnalités de R** : environnement de travail (RStudio), manipulations statistiques élémentaires, import de données (SAS en particulier). L'objectif de ce premier module est de **retrouver des points de repère** une fois la nouvelle interface maîtrisée.

- le [**module 2**](https://teaching.slmc.fr/r/module2.html) (deux demi-journées) vise à vous familiariser avec les **objets fondamentaux de R**, notamment les vecteurs et les listes, qui sont **sous-jacent à la plupart des opérations sur des données** que vous serez amenées à mener au quotidien. C'est un détour coûteux, mais nécessaire pour aller plus loin.

    > D'expérience, ce deuxième module est assez difficile pour les stagiaires dans la mesure où il est dense et semble assez éloigné de l'application concrète sur des données ; **accrochez-vous** néanmoins, car ce qui est vu dans ce module constitue les véritables **fondations** de votre futur travail avec R.

    
- le [**module 3**](https://teaching.slmc.fr/r/module3.html) (deux demi-journées) vise à **capitaliser sur les apprentissages du module 2** pour revenir aux données statistiques "classiques" (des tables), en introduisant le type `data.frame` et l'**ensemble des manipulations utiles au quotidien** : recodage de variables, tri, concaténation, fusion, opérations sur plusieurs variables, etc. (en gros, l'étape DATA de SAS).

    > Ce module propose également un **panorama sur le calcul de statistiques descriptives** (non-pondérées et pondérées) à partir de données de l'enquête Emploi en continu, avec en conclusion une **application pratique (avec correction) sur l'enquête Pisa 2012**.
    

**À noter que les durées indiquées après chaque module sont totalement indicatives** : l'essentiel est d'**aller à son rythme, de ne pas lâcher et si possible de continuer à pratiquer après** (sur un nouveau projet par exemple). 

J'ai mis à jour la page d'accueil de la formation le 19/03 pour mieux détailler tout ce qui relève de la **préparation du poste de travail** (installation de R, de RStudio, téléchargement des données), afin de **faciliter le suivi de la formation hors sphère Insee**. 

---

**Remarque pour les faux débutants et les inités** Cette formation est totalement conçue autour de base R : elle ne s'appuie en particulier pas sur le [*package* dplyr](https://dplyr.tidyverse.org/) ni plus généralement sur le [tidyverse](https://www.tidyverse.org/) en tant que tel (même si bien sûr je parle de `haven` pour importer les fichiers SAS). Je fais une présentation très rapide de `dplyr` (ainsi que de [data.table](https://cran.r-project.org/package=data.table)) dans ma [formation perfectionnement](https://teaching.slmc.fr/perf/index.html). Des initiations à R construites autour de `dplyr` sont partagées par leurs auteurs dans le cadre de spyrales (voir le [billet de Julien Barnier]( {{< ref "20200321-introduction-r-tidyverse" >}}) et [celui de Joseph Larmarange]({{< ref "20200323-blog-introduction-analyse-R" >}})).

---

Le **code source de cette formation est accessible sur [github](https://github.com/martinchevalier/r_init)** et est **librement réutilisable sous &copy; 2016-2020 Martin Chevalier [CC BY-NC-SA 3.0](https://creativecommons.org/licenses/by-nc-sa/3.0/fr)**.

