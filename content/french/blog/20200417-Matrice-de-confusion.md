---
title: "Matrice de confusion, courbe ROC et AUC"
date: 2020-04-17T21:30:00+01:00
author: ["Jean-Michel Bernabotto"]
image : "images/blog/matrice_confusion.png"
bg_image: "images/featue-bg.jpg"
categories: ["Outil"]
tags: ["python","débutant","expert","formation", "ML"]
description: "La matrice de confusion pour les nuls !"
draft: false
type: "post"
---

Vous êtes-vous déjà retrouvé dans une situation où vous vous attendiez à ce que votre modèle d'apprentissage machine soit très performant, mais où il s'est avéré peu précis ? Vous avez fait tout le travail nécessaire - alors où le modèle de classification s'est-il trompé ? Comment pouvez-vous corriger cela ?

Il existe de nombreuses façons (les fameuses métriques) d'évaluer les performances de votre modèle de classification, mais aucune n'a résisté à l'épreuve du temps comme la matrice de confusion. Elle nous aide à évaluer les performances de notre modèle, à déterminer où il a mal fonctionné et nous offre des conseils pour corriger notre modèle ou ses hyperparamaètres.

Dans cet article, nous allons voir comment une matrice de confusion donne une vue globale des performances d'un modèle. Et contrairement à son nom, vous réaliserez qu'une matrice de confusion est un concept assez simple mais puissant. Alors, dévoilons le mystère qui entoure la matrice de confusion !

Retrouvez le notebook :

- en version non interactive [sur mon GitHub](https://github.com/jmbernabotto/MachineLearning/blob/master/matrice_de_confusion_ROC_AUC.ipynb)
- en version interactive sur [mybinder.org](https://mybinder.org/v2/gh/jmbernabotto/MachineLearning/master?filepath=matrice_de_confusion_ROC_AUC.ipynb) (le lancement du notebook prend quelques dizaines de secondes)

Bonne (re)découverte et n'hésitez pas à me solliciter pour corriger les fautes qui se seront fortuitement glissées ici et là !

