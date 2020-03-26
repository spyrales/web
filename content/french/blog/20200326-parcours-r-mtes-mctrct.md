---
title: "Parcours de formation à R du MTES - MCTRCT"
date: 2020-03-26T10:15:08+01:00
author: Maël Theulière
image : "images/parcours-r.png"
bg_image: "images/featue-bg.jpg"
categories: ["Autoformation"]
tags: ["R"]
description: 'Présentation du parcours de formation du pôle ministériel du Ministère de la Transition écologique et solidaire et du Ministère de la Cohésion des territoires et des Relations avec les collectivités territoriales'
draft: false
type: "post"
---


Le pôle ministériel du Ministère de la Transition écologique et solidaire et du Ministère de la Cohésion des territoires et des Relations avec les collectivités territoriales a mis en place depuis 2016 un groupe de référents R. L'objectif de ce collectif est d'accompagner la transition des agents du ministère vers R, afin de répondre aux besoins croissants de traitements et d'analyses de la donnée. Cela a pris la forme, notamment, d'un parcours modulaire de formation à R, dispensé via les centres de formation du pôle ministériel, mais dont les supports sont disponibles librement sur Internet.


### Public visé

L'idée étant que chacun ayant dans ses métiers des besoins spécifiques auxquels R peut répondre, le choix a été fait de rendre cette formation fortement modulaire.

Ces documents sont donc destinés à deux publics potentiels :

- les **débutants en R**, qui pourront rentrer dans le language via les deux modules appelés "socle" ;
- les **personnes connaissant déjà R**, mais souhaitant se familiariser sur des parties spécifiques : statistiques, datavisualisation, analyse spatiale, Shiny...


### Contenu de la formation

Le parcours, toujours en construction, permet de balayer différents usages de R. L'approche de la formation est d'être axée sur le tidyverse.

Les deux modules "socle" : 

- un module introductif permettant une prise en main de l'interface de RStudio, de découvrir les grands principes du langage R, les bonnes pratiques d'un projet en R, son potentiel, et apprendre à réaliser des premiers traitements et graphiques ;
- un module sur la préparation des données permettant de se familiariser plus en profondeur sur la lecture et le traitement des données à travers notamment les packages {dplyr} et {tidyr}.

Des modules à la carte : 

- un module sur les statistiques descriptives intégrant des rappels théoriques sur les méthodes usuelles et leur mise en oeuvre avec R ;
- un module sur l'analyse des données multi-dimensionnelles intégrant des rappels théoriques sur les méthodes usuelles et leur mise en oeuvre via {factoMineR} et ses extensions ;
- un module sur la datavisualisation pour savoir produire des graphiques, des cartes et des tableaux avec R, essentiellement avec le package {gpplot2} ;
- un module sur l'analyse spatiale permettant d'introduire ces notions à travers R et le package {sf}.

Un module sur les publications reproductibles avec Rmarkdown est en cours de développement, et nous prévoyons également un module sur Shiny et le travail collaboratif.

Chaque module est prévu pour être dispensé en présentiel sur 2 jours mais peut s'utiliser en autoapprentissage. Dans le contexte du confinement, nous travaillons à exernaliser les différents exercices de ces modules dans un package à part afin de rendre les stagiaires autonome sur la mise en pratique. 

Toute idée est la bienvenue ! Pour proposer des aménagements, merci d'ouvrir des issues sur le [repo github du parcours](https://github.com/MTES-MCT/parcours-r)

Ces documents sont diffusés sous [licence ouverte](https://www.etalab.gouv.fr/wp-content/uploads/2017/04/ETALAB-Licence-Ouverte-v2.0.pdf) et librement accessibles en HTML, PDF et EPUB à l'adresse suivante :

https://mtes-mct.github.io/parcours-r/
