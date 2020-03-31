---
title: "Quelques suggestions d'IDE pour programmer en Python"
date: 2020-03-29T17:30:00+01:00
author: ["Jean-Michel Bernabotto"]
image : "images/blog/docpython.png"
bg_image: "images/featue-bg.jpg"
categories: ["Outil"]
tags: ["python","débutant","expert","formation"]
description: "Quelques idées d'IDE !"
draft: false
type: "post"
---

La difficulté dans l’apprentissage du langage python n’est pas dans sa syntaxe pour qui a déjà programmé (ou pas !) dans un autre langage. Le langage est structuré classiquement et on s’y retrouve facilement. 
Attention cependant pour les débutants, il existe encore deux versions de ce langage, une 2.7 et une 3.8. Je conseille vivement de commencer directement par la 3.8 car la 2.7 est un canal historique que l’on peut encore trouver ici et là mais de plus en plus rarement.
 
Pour qui veut butiner dans la documentation claire et complète, je conseille vivement le site officiel https://python.org que l’on peut retrouver en français ici : https://docs.python.org/fr/3/
Les outils possibles ?
Il existe un très bon (et très copieux) environnement de travail pour programmer en Python (on peut d’ailleurs l’utiliser pour programmer en R avec RStudio): il s’agit d’Anaconda que l’on peut trouver sur le site officiel https://www.anaconda.com/distribution/

Il existe alors plusieurs interfaces pour programmer. Je conseille de même au débutant de commencer par Jupyter Notebook. L’interface est très agréable et l’auto-complétion des mots clés très très pratique !  

On retrouve dans Anaconda une autre interface qui se nomme Spyder qui ressemble à ce qui peut se faire pour R dans la façon de procéder, sans doute que les utilisateurs assidus de R y retrouveront une interface connue. Je préfère pour ma part Jupyter Notebook, bourré de commodités quand on lui adjoint quelques extensions pratiques !

Anaconda  s’installe en local sur votre PC sous Windows, ou Linux (que je conseille !) ou sur Mac (que je conseille vivement car c’est une interface Linux). Attention pour les utilisateurs Mac, j’ai eu quelques problèmes avec l’installation sous Catalina, il faut préférer l’installation par le bash sinon Anaconda y perd son latin car l’installation ne se fait pas au bon endroit. 

Si vous ne pouvez pas installer de logiciels sur votre poste ou que cela vous fait un peu peur au début, vous pouvez programmer en ligne.

Au moins trois solutions (que j’ai testées) existent, il s’agit de Google Colab  https://colab.research.google.com/notebooks/intro.ipynb# , de DeepNote https://beta.deepnote.com/, et de Kaggle https://www.kaggle.com/. À elles seules, ces trois solutions mériteraient qu’on développe trois articles différents, je le ferai peut-être si la demande existe !  Quand on connait Jupyter Notebook (mon chouchou), on n’est vraiment pas dépaysé avec les trois solutions citées.

## Et les bibliothèques ?
Une fois votre environnement de travail choisi, prenez garde. Python a été enrichi par une quantité de bibliothèques incroyables. On s’y perd d’ailleurs au début et je peux vous le dire, je m’y suis perdu !! Certes par goût de la découverte, mais pas toujours…

Aussi, je vous conseille la lecture de l’excellent article (en anglais mais c’est assez simple) https://www.thepythoncode.com/article/top-python-libraries-for-data-scientists  qui conseille les meilleures bibliothèques pour faire de la data science puisque tel est le but. D’ailleurs le site https://www.thepythoncode.com/ est une mine pour la programmation en Python. 


Évidemment tout cela est loin d’être exhaustif et j’ai dû oublier des choses. Ce sont quelques bases pour pouvoir commencer l’esprit tranquille. Si vous vous destinez à une programmation orientée datascience, sincèrement, lorgnez en priorité sur les librairies Pandas, Matplotlib, Numpy, puis Scikit-learn (une merveille !). J’aime beaucoup aussi la bibliothèque Seaborn pour des représentations graphiques plus esthétiques et Bokeh (mais celle-ci est plus compliquée pour les débutants). Une fois qu’on a compris le principe d’installation d’une bibliothèque, on a un vaste choix. Par exemple, pour celles et ceux qui manipulent les données géocodées, il existe une bibliothèque exprès pour cela !

Si vous avez des demandes spécifiques, n’hésitez pas. La communauté est riche d’expériences diverses. 
