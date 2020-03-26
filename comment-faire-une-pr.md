# Proposer une mise à jour du site


## Quelques prérequis

Tout d'abord, il est nécessaire de créer un *fork* du site web pour avoir un copie depuis votre compte Github. Pour faire un *fork*, cliquer sur le bouton *fork* en en-têt du projet.

Une fois le *fork* créé sur votre compte, il faut créer une copie du *fork* sur votre poste. Vous pouvez lire le tuto. Une fois la copie du site réalisée, n'oubliez pas de tester la visualisation locale du site.

Avant de modifier quoi que ce soit, il est préférable de créer une nouvelle branche sur votre copie

Créer une nouvelle branche `modif` sur votre repo (ne pas jamais faire une PR sur la branche `master` de votre fork)

```
git checkout -b modif
```

Maintenant vous pouvez modifier les fichiers du site. À ce stade, seule votre copie locale est modifiée. Testez vos modifications. Une fois que vous êtes satisfait (et que le site fonctionne toujours sur votre poste), vous pouvez créer une **pull request** (une demande de modification du site).


## Faire (correctement) une PR

* Intégrer vos modifications dans votre branche

```
git add <fichiers>
git commit -m '<explication du commit>'
git push --set-upstream origin modif
```

Si, par mégarde, vous modifiez un des fichiers contenus dans le dossier `themes/airspace`, le sous-module sera à l'état `dirty`. Ne réalisez surtout pas de commit d'un sous-module à l'état `dirty`. Revenez à l'état antérieur en faisant `cd themes/airspace` pour vous placer à la racine du sous-module, puis `git checkout .` pour revenir à l'état antérieur. 

* Créer une **pull request** depuis Github, à partir de votre branche, `modif` en cliquant sur le bouton `create pull request`. Github vérifie si votre proposition est compatible avec la branche `master` du dépôt.

* Voilà c'est terminé.

* Une fois que la PR est acceptée, il vous sera possible de supprimer votre branche `modif` qui devient inutile.


## Synchroniser son fork 

Pour synchroniser votre fork à partir de la branche `master` du dépôt, il faut lui indiquer le site de référence. Cette commande n'est à faire qu'une seule fois. 

```
git remote add upstream https://github.com/spyrales/web.git
```

Pour mettre à jour votre *fork*, il faut passer les commandes suivantes :

```
git fetch upstream
git checkout master
git push upstream master
```

Votre *fork* est maintenant à jour.

