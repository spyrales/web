---
title: "Premiers pas avec Onyxia la plateforme datascience de l'Insee"
date: 2020-04-08T15:30:00+01:00
author: ["Stéphane Trainel"]
image : "images/blog/onyxia-accueil.png"
bg_image: "images/featue-bg.jpg"
categories: ["Actualités"]
tags: ["débutant","formation"]
description: "Pour bien démarrer et éviter de se tordre la cheville"
draft: false
type: "post"
---

Ce billet propose de découvrir en quelques lignes la plateforme Onyxia proposée par l'Insee.
Elle met à disposition des services pour s'autoformer à R et Python dans un cadre *Etat*.

Il est rappelé que la plateforme est temporaire et n'a pas de niveau de service.
Les informations qui y sont stockées (programmes ou fichiers de données) doivent donc
être sauvegardées ailleurs pour ne pas risquer de les perdre.

Une fois ce petit rappel, faisons quelques pas !


## Accèder à la plateforme

Tout d'abord, la plateforme est accessible [ici](https://spyrales.sspcloud.fr/).

Pour s'y connecter, il faut un compte. Les adresses en *.insee.fr* ou en *.gouv.fr* peuvent créer un compte.
Pour les membres de la communauté spyrales qui sont sans adresse gouvernementale (ou non accessible actuellement),
vous pouvez tout de même tester Onyxia en demandant un compte via le salon Tchap de spyrales.


## Services disponibles (en date du 8 avril 2020)

Et qu'y trouve-ton sur Onyxia ? Pas moins de 11 services. Ils sont immédiatement utilisables (à deux ou trois clics maximum)

* Gitlab : un gestionnaire de version (comme GitHub)
* Minio : une zone de stockage
* Keycloack : un gestionnaire d'identité
* Neo4J : pour construire des bases de données par graphe
* Openrefine : un outil assez puissant pour restructurer des données
* Jupyter : un outil *notebook* accessible dans son navigateur pour coder en Python, R ou Julia
* RStudio : un outil également accessible dans son navigateur pour coder en R et python
* Ubuntu : un environnement Linux 
* VScode : un outil de développement multi-langage (paramétré ici plutôt pour Python)
* Postgresql : une base de données 
* PgAdmin : un outil pour administrer une base de données Postgresql


## Créer un service Rstudio

Besoin d'un environnement R pour traiter des données en opendata ? C'es possible.

Voici comment.

1. Cliquer sur **catalogue**

2. Les services construits à la demande sont rassemblés dans **Datascience**. Cliquer sur le petit icone *repertoire* en dessous du descriptif.

![](/images/blog/onyxia-datascience.png)

3. Les différents services sont affichés. Chercher **Rstudio** et cliquer sur l'icone (+).

![](/images/blog/onyxia-build-rstudio.png)

4. Pour construire votre environnement, Onyxia a besoin de connaître quelques paramètres. Pour un premier test, mieux vaut laisser les paramètres par défaut. Cliquer sur le bouton *créer votre service*.

![](/images/blog/onyxia-paramR.png)

5. Au bout de quelques secondes (de 1 à 20), votre service Rstudio est construit. Cliquer sur l'icone *mon labo*.


6. Pour accéder à votre service, cliquer sur l'icone qui représente un petit carré et une flèche sortante. Une nouvelle fenêtre apparait avec l'invitation de connexion de Rstudio.

![](/images/blog/onyxia-monlabo.png)

7. La connexion à Rstudio nécessite un login et un mot de passe. Le login par défaut est *rstudio*. Le mot de passe est accessible dans les paramètres de votre compte Onyxia. Revenir à Onyxia. Cliquer sur *mon compte* (en haut à droite). En bas de la page, au niveau du *profil Onyxia*, le mot de passe est indiqué. Cliquer sur le dernier icone (en forme de document) pour le copier dans le presse-papier.

![](/images/blog/onyxia-password.png)

8. Revenir à l'interface Rstudio. Coller le mot de passe et voilà connecté ! 

![](/images/blog/onyxia-rstudio.png)
