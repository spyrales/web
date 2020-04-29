[![Build Status](https://travis-ci.org/spyrales/web.svg?branch=master)](https://travis-ci.org/spyrales/web)
[![Netlify Status](https://api.netlify.com/api/v1/badges/af05d56e-7f43-4837-aead-437c6cd0e70c/deploy-status)](https://app.netlify.com/sites/spyrales/deploys)

# Site web de la communauté spyrales

## Propulsion du site

Ce repo permet de publier toutes les informations nécessaires - événements, formations, webinaires - que des agents de l'Etat proposent pendant la période de confinement (et pourquoi, pas au-delà).

Il est propulsé par **Hugo**.

Jusqu'au 28 mars 2020, ce repo utilisait **Travis-ci** pour compiler le site 
à chaque commit et publier les fichiers statiques sur la branche `gh-pages`.
Or, des problèmes de *blank pages* ont été détectés et n'ont pas trouvé de 
solutions satisfaisantes.
La solution **Netlify** - bien qu'imparfaite également - a été jugée moins bugguée.

Depuis le 29 mars 2020, ce repo utilise **Netlify** pour créer les pages du site 
automatiquement à chaque commit sur la branche `master` et de les publier 
directement sur https://spyrales.netlify.com. Cette solution permet également
de pouvoir vérifier le rendu du site à partir d'une `pull request`. 

## Documentation

Plusieurs guides ont été produits pour aider à maintenir le site.

* [Générer localement le site](docs/generer-site-en-local.md) : pour tester ses modifications avant
de faire une `pull request`

* [Mettre à jour le thème](docs/update-theme.md) : pour avoir les dernières nouveautés proposées par
les mainteneurs du thème **airspace**


## Crédit photo (on Unsplash)

* NeONBRAND
* NordWood
* bajkorenata
* prodigeon
