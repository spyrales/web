#!/bin/sh

set -e

git config --global user.email "stephane.trainel@gmail.com"
git config --global user.name "Stéphane Trainel"
git clone -b gh-pages https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git output

# Suppresion des fichiers pour maintenir un espace le plus propre possible
rm -fr ./output/*

# Copie des fichiers par module
cp -r ./public/* ./output/

# Remplacement http en https pour les fonts Google
sed -i '' 's,http://fonts.googleapis.com/,https://fonts.googleapis.com/,g' ./public/scss/style.min.css

# Publication des fichiers sur la branche "gh-pages" de GitHub
cd output
git add --all -f ./*
git commit --allow-empty -m"Update site - build by travis-ci (#${TRAVIS_BUILD_NUMBER})"
git push origin gh-pages