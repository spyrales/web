# Guide : mettre à jour le thème **airspace**

## Faire une mise à jour du thème

Le thème vit sa propre vie sur le dépôt `airspace`. Il convient de suivre les améliorations qui sont proposées. Il faut créer une branche `uptheme` sur un clone ou un fork, puis faire une pull request.

* Récupérer la dernière version du thème

```
git submodule update --recursive --remote --merge
```

* Appliquer le nouveau thème

```
git add themes/airspace
git commit -m 'upgrade theme'
git push --set-upstream origin uptheme
```

