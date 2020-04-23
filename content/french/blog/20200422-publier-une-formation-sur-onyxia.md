---
title: Référencez et déployez une formation interactive sur Onyxia
date: 2020-04-22T15:31:32+02:00
author: 
  - Romain Lesur
image : images/laith-abushaar-obcO4zhwDfU-unsplash.jpg
bg_image: images/featue-bg.jpg
categories: [ ]
tags:
  - formation
draft: false
type: post
---

La plateforme Onyxia dispose d'une toute nouvelle rubrique **Formations** (<https://spyrales.sspcloud.fr/trainings>). Cet article présente la démarche pour référencer un nouveau contenu de formation ainsi qu'une méthode de réalisation de tutoriel interactif.

Nous avons présenté sur ce blog la plateforme de datascience de l'Insee, Onyxia ([voir l'article](/blog/20200408-premierspas-onyxia/) de [Stéphane Trainel](/author/stéphane-trainel/)). Elle permet de démarrer en quelques instants un environnement de datascience tel qu'un Jupyter Lab ou un serveur RStudio afin de se former.

Afin d'aider les membres de la communauté Spyrales à partager des ressources de formation, une toute nouvelle rubrique **Formations** a été créée : <https://spyrales.sspcloud.fr/trainings>. Vous devez vous identifier pour accéder au catalogue de formations. Cette rubrique étant nouvelle, nous vous présentons comment l'enrichir.

### Référencer une nouvelle formation

Le catalogue qui se matérialise sur la page <https://spyrales.sspcloud.fr/trainings> est alimenté à partir du fichier `json` qui se trouve ici : <https://git.lab.sspcloud.fr/innovation/plateforme-onyxia/services-ressources/-/blob/master/formations.json>. Il vous suffit donc de faire une _merge request_ proposant de nouvelles rubriques et/ou de nouveaux contenus.

En pratique, il s'agit de crééer de nouvelles entrées dans ce fichier avec les méta-données sur les formations que vous souhaitez référencer. Ces méta-données sont structurées suivant le schéma <http://schema.org/Course>. Il est possible de référencer n'importe quel type de contenu (MOOC, ouvrages, tutoriels, vidéos...).

<!-- 
@fcomte : 
- quelles sont les méta-données requises par le catalogue ?
- peut-on donner un exemple minimal ?
-->

### Offrir une formation interactive grâce à Onyxia

En plus de référencer une formation, les formateurs peuvent aller encore plus loin et proposer une version interactive de leurs cours ou tutoriels grâce à des notebooks Jupyter ou
bien des tutoriels [learnr](https://rstudio.github.io/learnr/).

#### Tutoriel interactif sous forme de Notebook Jupyter

La méthode certainement la plus simple est d'héberger votre notebook Jupyter sur une plateforme `git` telle que [GitHub](https://github.com) ou [GitLab](https://gitlab.com).

Vous pouvez prendre comme exemple le dépôt de [Jean-Michel Bernabotto](/author/jean-michel-bernabotto/) suivant : <https://github.com/jmbernabotto/MachineLearning>. Dans votre dépôt, déclarez vos dépendances dans le fichier `requirements.txt` et rajoutez un script qui sera exécuté au lancement du serveur Jupyter sur la plateforme Onyxia : vous pouvez modifier le script `onyxia.sh` que vous trouverez dans ce dépôt.

Ensuite, rendez-vous dans le catalogue datascience d'Onyxia (<https://spyrales.sspcloud.fr/my-lab/catalogue/inseefrlab-datascience>), sélectionnez le service Jupyter et dans l'onglet `SCRIPT` collez l'URL vers le script de lancement.\
Soyez bien vigilants à utiliser une URL de type _raw_ vers votre script. Avec le dépôt ci-dessus, l'URL est <https://raw.githubusercontent.com/jmbernabotto/MachineLearning/master/onyxia.sh>.

{{< figure src="/images/onyxia-referencer-formation.png" alt="Référencer un script de lancement sous Onyxia" width="100%" >}}

Vous pouvez alors copier le lien direct qui se trouve en bas du cadre et le conserver pour permettre un accès direct à votre formation.

#### Tutoriel interactif `learnr`

`learnr` est un package R qui permet de concevoir facilement des tutoriels interactifs en R Markdown. Si vous ne le connaissez pas, n'hésitez pas à consulter l'aide : <https://rstudio.github.io/learnr>.

Comme précédemment, le plus simple est d'héberger votre projet RStudio comprenant votre tutoriel sur [GitHub](https://github.com) ou [GitLab](https://gitlab.com).  Vous pouvez prendre exemple sur le dépôt de démonstration suivant : <https://github.com/RLesur/learnr-onixya>. Dans votre dépôt, déclarez vos dépendances dans le fichier `DESCRIPTION` et rajoutez un script qui sera exécuté au lancement du serveur RStudio sur la plateforme Onyxia : vous pouvez modifier le script `onyxia.sh` que vous trouverez dans ce dépôt.

Ensuite, rendez-vous dans le catalogue datascience d'Onyxia (<https://spyrales.sspcloud.fr/my-lab/catalogue/inseefrlab-datascience>), sélectionnez le service RStudio et dans l'onglet `SCRIPT` collez l'URL vers le script de lancement.\
Soyez bien vigilants à utiliser une URL de type _raw_ vers votre script. Avec le dépôt précédent, l'URL est <https://raw.githubusercontent.com/RLesur/learnr-onixya/master/onyxia.sh>.

Vous pouvez alors copier le lien direct qui se trouve en bas du cadre et le conserver pour permettre un accès direct à votre formation.
