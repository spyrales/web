---
title: "GCP, AutoML et VISION"
date: 2020-04-24T17:30:00+01:00
author: ["Jean-Michel Bernabotto"]
image : "images/blog/visionautoml.png"
bg_image: "images/featue-bg.jpg"
categories: ["Outil"]
tags: [,"débutant","expert","formation", "AutoML","GCP"]
description: "Première expérience avec le module VISION AutoML de GCP"
draft: false
type: "post"
---

# A la découverte de Google Cloud Plateform

Grâce à notre groupe Spyrales, j'ai pu découvir quelques arcanes de [Google Cloud Plateform](https://console.gloud.google.com). En effet, nous avons pu suivre quelques formations qui furent les bienvenues et je conseille à toutes celles et tous ceux qui veulent se lancer de regarder les vidéos des formations déjà effectuées, c'est simple, clair, et pour ma part cela a beaucoup débroussaillé la jungle des services offerts par la plateforme et qui me rebutait. 

Aussi, après la très instructive présentation d'Alexander Usoltsev (auv@google.com) (_comment ils arrivent à avoir des adresses pareilles avec le nombre d'employés chez Google reste pour moi un mystère !!_) de chez Google et qui s'intitulait conférence sur l'analyse d'images avec autoML de Google 
[la vidéo est visible ici :](https://minio.lab.sspcloud.fr/strainel/spyrales_conf1_google_20200423.mp4), j'ai décidé de tester le service AutoML Vision pour "m'amuser" un peu !

J'ai donc décidé d'utiliser une partie d'un jeu de données de [Kaggle](https://www.kaggle.com/ikarus777/best-artworks-of-all-time) qui est un jeu de données que j'adore : il s'agit des oeuvres majeures de 50 des plus grands peintres de notre temps. Un jeu de données conséquent car il pèse la bagatelle de 2 Go. 

Pour ne pas trop partir dans un délire (vous comprendrez vite pourquoi), j'ai décidé de ne chosir que l'artiste Amadeo Modigliani. Il y a dans ce dataset 194 tableaux de Modigliani, presque tous sont des portraits. Et je ne sais pas vous, mais parfois j'ai du mal à savoir s'il s'agit d'un homme ou d'une femme !

Aussi, j'ai choisi pour mon premier test Vision AutoML, 54 portraits. 32 de femmes et 22 d'hommes. Visiblement, Modigliani faisait plus de portraits de femmes que d'hommes !! 

J'ai importé ces portraits dans un bucket (qu'on avait appris à créer dans une formation précédente) et j'ai commencé l'étiquetage de chacun des portraits dans le module de Vision. C'est un peu long car il faut dessiner un cadre ppur chaque portrait, cadre autour des éléments qui caractérisent la féminité ou la masculinité du portrait, puis ensuite lui donner une des deux étiquettes (créées au préalable) femme ou homme. Il y a un seul tableau où il y a une femme et un homme, je l'ai également choisi ! 

Une fois cette étiquetage terminé, j'ai voulu lancer l'entrainement. Mais, j'avais une erreur, il manquait des images dans le validation set des hommes. Je n'ai pas compris pourquoi la plateforem y était arrivé toute seule pour les femmes et pas pour les hommes ! Il faut, d'après les préconisations de la plateforme une distribution 80% pour le train set, 10% pour le test set, 10% poue le validation set. 

J'ai donc exporter le fichier csv créé lors de l'étiquetage, que j'ai ouvert sous mon tableur préféré. Chaque ligne correspond à un tableau étiqueté. Il y a 11 colonnes séparées par des virgules :

1. TRAIN,gs://bucket-jmb-artistes/Amedeo_Modigliani_35-2020-04-23T17:03:02.894Z.jpg,homme,0.17892644,0.024922118,0.8250497,0.024922118,0.8250497,0.7429907,0.17892644,0.7429907
2. TRAIN,gs://bucket-jmb-artistes/Amedeo_Modigliani_50-2020-04-23T17:03:02.894Z.jpg,femme,0.23863636,0.11682243,0.7083333,0.11682243,0.7083333,0.6542056,0.23863636,0.6542056
3. TRAIN,gs://bucket-jmb-artistes/Amedeo_Modigliani_47-2020-04-23T17:03:02.894Z.jpg,homme,0.27360776,0.02647975,0.7627119,0.02647975,0.7627119,0.36448598,0.27360776,0.36448598
...

La 1ère colonne c'est pour dire à quel dataset l'image correspond, la deuxième colonne son emplacement et son nom dans mon bucket, la troisième colonne le ou les étiquettes et ensuite les positions en abscisses et en ordonnées du cadre de sélection qui a servi à l'étiquette.

J'ai donc remplacé des "TRAIN" en "VALIDATION", puis j'ai réimporté ce ficher csv dans VISION AutoML. 

J'ai pu ainsi avoir un data set respectant les desiderata de la console pour commencer l'entrainement.

femme :32
Entraînement : 26
Validation : 3
Test : 3
	
homme: 22
Entraînement : 16
Validation : 3
Test : 3

L'entrainement (on doit chosir un nombre de noeuds de calculs proportionnel à la taille de l'échantillon, j'en ai pris 4 totalement au pif ! ) a duré deux heures !  Pourtant l'échantillon est petit...bref, peut-être aurais-je dû prendre plus de noeuds mais évidemment, plus vous êtes gourmand en ressource machine, plus c'est cher ! 


J'obtiens une Exactitude de 95,8% (pas mal non !) avec une Precision de 71,43% et un Rappel de 83,33%  Ce qui est assez satisfaisant. J'ai évidement quelques faux positifs, quelques faux négatifs...(cf mon billet précédent pour de plus amples précisions).

Ensuite, j'ai pu tester sur des portraits que le modèle ne connaissait pas et ce que j'obtiens en matière de reconnaissance et plutôt pas mal. 
Voici quelques exemples.

* ![Portrait1](https://github.com/jmbernabotto/web/blob/master/static/images/blog/portrait1.png)
* ![Portrait2](https://github.com/jmbernabotto/web/blob/master/static/images/blog/portrait2.png)
* ![Portrait3](https://github.com/jmbernabotto/web/blob/master/static/images/blog/portrait3.png)
* ![Portrait4](https://github.com/jmbernabotto/web/blob/master/static/images/blog/portrait4.png)
* ![Portrait5](https://github.com/jmbernabotto/web/blob/master/static/images/blog/portrait5.png)
* ![Portrait6](https://github.com/jmbernabotto/web/blob/master/static/images/blog/portrait6.png)


Conclusion : Google arrive à nous faire faire du Deep sans rentrer dans les arcanes de tensorflow. Cela peut intéresser les personnes qui souhaitent utiliser ce genre de technos sans entrer dans le dur. Plutôt assez convaincant je l'avoue. 

PS : vous pouvez retrouver ce test dans notre [plateforme de projet commun](https://console.cloud.google.com/vision/datasets?authuser=0&project=autoformation-python)