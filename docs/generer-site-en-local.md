# Guide : générer le site web sur son ordinateur

## Pré-requis

Pour générer le site web sur votre ordinateur, vous devez avoir `git` d'installé 
et savoir utiliser la ligne de commandes.

## Installation de Hugo extended 0.67.0

La génération de ce site web nécessite d'installer **Hugo extended 0.67.0**.  
Attention :

- **Hugo extended** est différent de Hugo, il comporte plus de fonctionnalités dont certaines sont indispensables à la génération de ce site web ;
- la version **0.67.0** n'est pas la dernière disponible (la dernière version disponible de Hugo comporte un bug qui empêche la génération de ce site web).

Les utilisateurs de R peuvent facilement installer **Hugo extended 0.67.0** en exécutant : 

```r
# installer blogdown s'il n'est pas installé :
install.packages("blogdown")
# installer Hugo extended 0.67.0 : 
blogdown::install_hugo("0.67.0")
```

Pour les autres, vous pouvez télécharger la version de **Hugo extended 0.67.0** correspondant à
votre système d'exploitation sur [cette page](https://github.com/gohugoio/hugo/releases/tag/v0.67.0) ou bien pour Windows, lire [la section ci-après](#installation-de-hugo-extended-0670-pour-windows).

Vous pouvez vérifier que Hugo extended a été correctement installé en lançant
la commande :

```bash
hugo version
```

Vérifiez que la réponse que vous obtenez commence par :

```
Hugo Static Site Generator v0.67.0-7F1DA3EF/extended...
```

### Installation de Hugo extended 0.67.0 pour Windows

Commencez par installer **Chocolatey**, le gestionnaire de paquets pour Windows.

Lancez le **Powershell** (`powershell.exe` est accessible via la barre de recherche Windows) et exécutez la commande :

```bash
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

Vous pouvez vérifier que Chocolatey a été correctement installé en lançant la commande :

```bash
choco
```

Vous obtenez en réponse la version installée :

```
Chocolatey v0.10.15
```

Maintenant que vous disposez d'un gestionnaire de paquets, dans le Powershell tappez la commande:

```bash
choco install hugo-extended --version=0.67.0
```

Vous pouvez vérifier que Hugo extended a été correctement installé en lançant

```bash
hugo version
```

Vérifiez que la réponse que vous obtenez commence par :

```
Hugo Static Site Generator v0.67.0-7F1DA3EF/extended...
```

## Cloner le repository `web`

Vous avez deux options :

1. cloner le repository `spyrales/web`
2. cloner votre propre fork de `spyrales/web`

Choisissez l'url correspondant au choix précédent et clonez le repository.

Les utilisateurs de RStudio pourront utiliser le menu  
`File > New Project...> Version Control > Git` et coller l'url du repository.

Pour les autres, les lignes de commandes sont les suivantes.  
En http, cela donnera :

```bash
git clone https://github.com/<namespace>/web.git
```

Ou en ssh :

```bash
git clone git@github.com:<namespace>/web.git
```

Le site utilise le thème **airspace** ; les fichiers source de ce thème doivent être également téléchargés sans quoi vous ne pourrez pas construire le site localement. Le thème étant référencé comme un sous-module `git`, pour le récupérer vous devez cloner les sous-modules en exécutant :  
`spyrales/web` :

Placez vous dans le répertoire `web` :

```bash
cd web
```

Clonez les sous-modules :

```bash
git submodule update --init --recursive
```

## Visualiser le site web

Les utilisateurs de R pourront utiliser : 

```r
blogdown::serve_site()
```

Pour les autres, il existe deux principaux modes d'utilisation de Hugo :

- la génération des fichiers du site web : la commande à utiliser est simplement `hugo` et les fichiers correspondant au site web sont alors disponibles dans le répertoire `public` (mais il vous faudra un serveur web local pour examiner le résultat) ;
- le LiveReload.

C'est très certainement la fonctionnalité de LiveReload que vous utiliserez : elle génère le site web, lance un serveur web local et enfin actualise à la volée le site web local en cas de modification des fichiers.

Pour lancer le LiveReload, il faut exécuter :

```bash
hugo server -D
```

Vous devriez obtenir une réponse de ce type :

```
                   | FR  
-------------------+-----
  Pages            | 18  
  Paginator pages  |  0  
  Non-page files   |  0  
  Static files     | 30  
  Processed images |  0  
  Aliases          |  6  
  Sitemaps         |  1  
  Cleaned          |  0  

Built in 50 ms
Watching for changes in /home/romain/Documents/spyrales/web/{archetypes,content,data,static,themes}
Watching for config changes in /home/romain/Documents/spyrales/web/config.toml
Environment: "development"
Serving pages from memory
Running in Fast Render Mode. For full rebuilds on change: hugo server --disableFastRender
Web Server is available at http://localhost:1313/web/ (bind address 127.0.0.1)
Press Ctrl+C to stop
```

Le site web est alors accessible localement à l'adresse <http://localhost:1313/web/>.

Une fois votre travail terminé, vous pouvez arrêter le serveur web local en faisant `Ctrl+C`.


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

