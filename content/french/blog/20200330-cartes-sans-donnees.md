---
title: "Dessiner une caRte sans données, un puits sans fond ?"
date: 2020-03-30T17:30:00+01:00
author: ["Kim Antunez"]
image : "images/blog/20200330-cartes-sans-donnees/unnamed-chunk-16-1.png"
bg_image: "images/featue-bg.jpg"
categories: ["Autoformation"]
tags: ["r","débutant"]
description: "Il n’est pas nécessaire de travailler dans un institut public ou de recherche pour réaliser des cartes intéressantes et éclairantes avec R."
draft: false
type: "post"
---


Cet article est un aperçu d’une présentation que je réfléchis à faire
depuis quelques semaines… Le temps étant au confinement, je me lance
donc dans ce petit billet de blog en attendant le retour de jours
meilleurs.

Je pense que la réponse à la question posée dans le titre de cet article
est **« NON ! »**… Ce que je veux vous montrer dans ce billet, c’est
qu’il n’est pas nécessaire de travailler dans un institut public ou de
recherche pour réaliser des cartes intéressantes et éclairantes. TOUT LE
MONDE peut réaliser une carte, en solo, et de A à Z depuis R
(récupération de données, des fonds de carte et réalisation de la carte,
tout ceci depuis sa console R).

Lançons-nous ensemble !

### Etape 1 : récupération des données sur le COVID-19

Pour cette étape de récupération de données, j’ai choisi de vous
présenter le package `BARIS`[1] qui est relié à l’API du portail
officiel français des données ouvertes : <https://www.data.gouv.fr/>.

    #devtools::install_github("feddelegrand7/BARIS")
    library(BARIS)

L’actualité étant telle qu’elle est, j’ai choisi d’explorer des données
statistiques sur les cas de COVID-19. L’instruction suivante permet de
rechercher par mot clef des données sur le portail data.gouv.

    ressources_covid <- BARIS_search(query = "covid", n_pages = 10)
    ressources_covid

    ## # A tibble: 10 x 11
    ##    id    title organization page  views frequency created_at last_modified
    ##    <chr> <chr> <chr>        <chr> <chr> <chr>     <chr>      <chr>        
    ##  1 5e6a~ "Chi~ OpenCOVID19~ http~ 7     daily     2020-03-1~ 2020-03-22T0~
    ##  2 5e7c~ "Lie~ Ça reste ou~ http~ 0     hourly    2020-03-2~ 2020-03-27T1~
    ##  3 5e77~ "Ens~ Ça reste ou~ http~ 0     punctual  2020-03-2~ 2020-03-22T1~
    ##  4 5e74~ "Don~ Santé publi~ http~ 18    unknown   2020-03-2~ 2020-03-30T1~
    ##  5 5e7e~ "Don~ Santé publi~ http~ 16    daily     2020-03-2~ 2020-03-30T1~
    ##  6 5e79~ "Cen~ Toulouse mé~ http~ 0     unknown   2020-03-2~ 2020-03-24T0~
    ##  7 5e7e~ "Off~ Île-de-Fran~ http~ 0     unknown   2020-03-2~ 2020-03-28T0~
    ##  8 5e7d~ "Les~ Ville d'Iss~ http~ 0     unknown   2020-03-2~ 2020-03-27T0~
    ##  9 5e75~ "Evo~ Collectivit~ http~ 0     unknown   2020-03-2~ 2020-03-21T0~
    ## 10 5e82~ "Don~ Collectivit~ http~ 0     unknown   2020-03-3~ 2020-03-31T0~
    ## # ... with 3 more variables: last_update <chr>, archived <chr>, deleted <chr>

Je choisis ensuite d’explorer le premier répertoire proposé, celui
appelé “Open-Covid”. Je peux alors avoir quelques informations sur le
contenu de ce répertoire.

    code_ressource <- ressources_covid[1,1]
    BARIS_explain(code_ressource) 

    ## [1] "L'information officielle sur la progression de l'épidémie en France est assez fragmentée, et n'est presque jamais structurée sous forme de données.  L'objectif de ce jeu de données est de consolider l'information officielle, et de la rendre disponible dans des formats ouverts et aisément réutilisables (JSON, CSV…).  ### Granularité  Les données sont proposées selon plusieurs granularités : monde, pays (France), région et département. Les données à la maille du département sont actuellement très fragmentaires.  ### Sources utilisées  - Santé publique France - Préfectures - Agences Régionales de Santé - Ministère des Solidarités et de la Santé  ### Code source et issues Lien vers le projet de collecte de données. Signalez les problèmes et erreurs de données en créant des issues à l'adresse suivante :  https://github.com/opencovid19-fr/data"

J’y apprends que son objectif est de consolider les informations
officielles concernant l’épidémie en mettant à disposition des données
aisément réutilisables. Réutilisons-les donc ici et creusons le contenu
du répertoire.

    BARIS_resources(code_ressource)

    ## # A tibble: 2 x 6
    ##   id            title     format published     url                   description
    ##   <chr>         <chr>     <chr>  <chr>         <chr>                 <lgl>      
    ## 1 0b66ca39-162~ chiffres~ csv    2020-03-12T1~ https://github.com/o~ NA         
    ## 2 58aee810-ddd~ chiffres~ json   2020-03-12T1~ https://github.com/o~ NA

On choisit, par exemple, la base CSV.

    code_base <- BARIS_resources(code_ressource)[1,1]
    bdd <- BARIS_extract(resourceId = code_base, format = "csv")
    head(bdd)

    ## # A tibble: 6 x 14
    ##   date  granularite maille_code maille_nom cas_confirmes deces reanimation
    ##   <chr> <chr>       <chr>       <chr>              <int> <int>       <int>
    ## 1 2020~ departement DEP-16      Charente               0    NA          NA
    ## 2 2020~ departement DEP-17      Charente-~             0    NA          NA
    ## 3 2020~ departement DEP-19      Corrèze                0    NA          NA
    ## 4 2020~ departement DEP-23      Creuse                 0    NA          NA
    ## 5 2020~ departement DEP-24      Dordogne               0    NA          NA
    ## 6 2020~ departement DEP-33      Gironde                1    NA          NA
    ## # ... with 7 more variables: hospitalises <int>, gueris <int>, depistes <int>,
    ## #   source_nom <chr>, source_url <chr>, source_archive <chr>, source_type <chr>

Nous verrons plus tard comment mettre en forme cette base de données
afin de réaliser une carte.

### Etape 2 : récupération des données de population

Afin de pouvoir comparer les statistiques concernant le COVID-19
(personnes hospitalisées, guéries…) entre les différents territoires, il
peut être intéressant de les rapporter à la population du territoire.

Les données de population sont notamment disponibles dans le package
`COGugaison`[2], que je connais bien puisque j’en suis l’auteure. Ce
package R a pour objectif global de manipuler des données communales
produites à différents millésimes et de les agréger à différents niveaux
supra-communaux.

    #devtools::install_github("antuki/COGugaison")
    library(COGugaison)

Les données de population sont disponibles dans les bases contenues dans
le package comme ici :

    bdd_pop <- COG2020
    head(bdd_pop)

    ##   CODGEO                  LIBGEO   POP
    ## 1  01001 L'Abergement-Clémenciat   776
    ## 2  01002   L'Abergement-de-Varey   248
    ## 3  01004       Ambérieu-en-Bugey 14035
    ## 4  01005     Ambérieux-en-Dombes  1689
    ## 5  01006                 Ambléon   111
    ## 6  01007                Ambronay  2726

La fonction `nivsupra` permet d’agréger les tables de données communales
à de nombreux échelons supra-communaux administratifs, par exemple au
niveau départemental.

    bdd_pop_dep <- nivsupra(bdd_pop,nivsupra="DEP")
    head(bdd_pop_dep)

    ##   DEP                  LIBGEO     POP
    ## 1  01                     Ain  643350
    ## 2  02                   Aisne  534490
    ## 3  03                  Allier  337988
    ## 4  04 Alpes-de-Haute-Provence  163915
    ## 5  05            Hautes-Alpes  141284
    ## 6  06         Alpes-Maritimes 1083310

### Etape 3 : récupération du fond de carte

Pour cette étape de récupération de fond de carte, j’ai choisi de vous
présenter le package `CARTElette`[3], que je connais bien aussi puisque
j’en suis aussi l’auteure. Il permet de récupérer des couches
cartographiques (communales et supra-communales) correspondant à la
situation du découpage des territoires français (communes et niveaux
supra-communaux, France et Outre-mer) au premier janvier de chaque
année.

Le package `sf`[4], quant à lui, est un des packages qui permet la
manipulation de couches cartographiques dans R.

    #devtools::install_github("antuki/CARTElette/CARTElette@RPackage")
    library(CARTElette)
    #install.packages("sf")
    library(sf)

Je charge donc ici la carte des départements en 2019 (dernière donnée
mise à disposition par l’IGN) avec l’objectif de représenter différentes
statistiques sur le COVID au niveau départemental.

    par(mar=c(0,0,0,0)) # enlever les marges
    plot(st_geometry(DEP)) # afficher le fond

![](/images/blog/20200330-cartes-sans-donnees/unnamed-chunk-11-1.png)

### Etape 4 : Mise en forme de la base de données

Revenons à notre base de données de tout à l’heure et voyons ce qu’elle
contient

    str(bdd)

    ## Classes 'tbl_df', 'tbl' and 'data.frame':    4528 obs. of  14 variables:
    ##  $ date          : chr  "2020-01-24" "2020-01-24" "2020-01-24" "2020-01-24" ...
    ##  $ granularite   : chr  "departement" "departement" "departement" "departement" ...
    ##  $ maille_code   : chr  "DEP-16" "DEP-17" "DEP-19" "DEP-23" ...
    ##  $ maille_nom    : chr  "Charente" "Charente-Maritime" "Corrèze" "Creuse" ...
    ##  $ cas_confirmes : int  0 0 0 0 0 1 1 0 0 0 ...
    ##  $ deces         : int  NA NA NA NA NA NA NA NA NA NA ...
    ##  $ reanimation   : int  NA NA NA NA NA NA NA NA NA NA ...
    ##  $ hospitalises  : int  NA NA NA NA NA NA 1 NA NA NA ...
    ##  $ gueris        : int  NA NA NA NA NA NA NA NA NA NA ...
    ##  $ depistes      : int  NA NA NA NA NA NA NA NA NA NA ...
    ##  $ source_nom    : chr  "ARS Nouvelle-Aquitaine" "ARS Nouvelle-Aquitaine" "ARS Nouvelle-Aquitaine" "ARS Nouvelle-Aquitaine" ...
    ##  $ source_url    : chr  "https://www.nouvelle-aquitaine.ars.sante.fr/communique-de-presse-coronavirus-point-de-situation-en-nouvelle-aqu"| __truncated__ "https://www.nouvelle-aquitaine.ars.sante.fr/communique-de-presse-coronavirus-point-de-situation-en-nouvelle-aqu"| __truncated__ "https://www.nouvelle-aquitaine.ars.sante.fr/communique-de-presse-coronavirus-point-de-situation-en-nouvelle-aqu"| __truncated__ "https://www.nouvelle-aquitaine.ars.sante.fr/communique-de-presse-coronavirus-point-de-situation-en-nouvelle-aqu"| __truncated__ ...
    ##  $ source_archive: chr  "" "" "" "" ...
    ##  $ source_type   : chr  "agences-regionales-sante" "agences-regionales-sante" "agences-regionales-sante" "agences-regionales-sante" ...
    ##  - attr(*, ".internal.selfref")=<externalptr>

Grâce aux données fournies par cette base nous allons calculer deux
indicateurs que nous allons cartographier par **département** à la
**dernière date disponible** :

1.  Le nombre de personnes guéries **`gueris`**
2.  Le ratio du nombre de décès pour 100 000 habitants **`ratio_deces`
    (= 100 \* `deces` / `POP`)**

Pour réaliser les différentes opérations nécessaires dans la base de
données nous allons utiliser le package `dplyr`[5]. Pour plus
d’informations concernant ce package, vous pouvez vous référer à
différents tutoriels en ligne ainsi qu’à [ce billet de
blog]({{< relref "20200321-introduction-r-tidyverse" >}}).

    #install.packages("dplyr")
    library(dplyr)

    bdd_nettoyee <- bdd %>% 
      filter(granularite == "departement") %>% #données par département
      filter(date == max(date)) %>% # dernière date disponible
      mutate(DEP=substr(maille_code,5,length(maille_code))) %>% #recodage de maille_code en enlevant le préfixe "DEP-"
      left_join(bdd_pop_dep,by="DEP") %>% # ajouter les données de population
      mutate(ratio_deces = 100000 * deces / POP) %>% # création de la nouvelle variable 
      select(DEP,gueris,ratio_deces) # sélection des colonnes à garder

    head(bdd_nettoyee)

    ## # A tibble: 6 x 3
    ##   DEP   gueris ratio_deces
    ##   <chr>  <int>       <dbl>
    ## 1 01        24       1.55 
    ## 2 02        67       8.23 
    ## 3 03        39       1.18 
    ## 4 04        28       0.610
    ## 5 05        33       0.708
    ## 6 06       117       1.85

On intègre ensuite notre base de données à la couche cartographique des
départements chargée auparavant.

    DEP <- DEP %>% 
      left_join(bdd_nettoyee,by=c("DEP"))
    head(DEP)

    ## Simple feature collection with 6 features and 4 fields
    ## geometry type:  MULTIPOLYGON
    ## dimension:      XY
    ## bbox:           xmin: 2.278638 ymin: 43.48031 xmax: 7.716108 ymax: 50.0695
    ## epsg (SRID):    4326
    ## proj4string:    +proj=longlat +datum=WGS84 +no_defs
    ##   DEP                     nom gueris ratio_deces                       geometry
    ## 1  01                     Ain     24   1.5543639 MULTIPOLYGON (((5.897203 46...
    ## 2  02                   Aisne     67   8.2321465 MULTIPOLYGON (((3.687484 49...
    ## 3  03                  Allier     39   1.1834740 MULTIPOLYGON (((2.370688 46...
    ## 4  04 Alpes-de-Haute-Provence     28   0.6100723 MULTIPOLYGON (((6.709564 43...
    ## 5  05            Hautes-Alpes     33   0.7077942 MULTIPOLYGON (((6.64167 44....
    ## 6  06         Alpes-Maritimes    117   1.8461936 MULTIPOLYGON (((7.070675 43...

### Etape 5 : La carte tant attendue

Pour cette dernière étape de cartographie, j’ai choisi de vous présenter
le package `cartography`[6]. Il permet de créer et d’intégrer des cartes
dans votre workflow sur R. Les représentations cartographiques proposées
sont nombreuses (symboles proportionnels, choroplèthes, typologies,
cartes de flux ou de discontinuités).

Je n’en dirai pas davantage sur les fonctions qui suivent : d’une part
parce que vous trouverez toutes les explications nécessaires dans la
documentation du package et cette petite
[antisèche](http://riatelab.github.io/cartography/vignettes/cheatsheet/cartography_cheatsheet.pdf)
et d’autre part, je préfère aussi vous laisser emporter dans la
découverte du fabuleux monde de la statistique spatiale.

    library(cartography)

    # Marges
    par(mar=c(1.5,1.5,1.5,1.5))

    # Fond de carte
    plot(sf::st_geometry(DEP))

    # Carte choroplèthe (décès pour 100 000 habitants)
    choroLayer(x = DEP, var = "ratio_deces",
              breaks = quantile(DEP$ratio_deces,
                                seq(0, 1, 0.25),na.rm = TRUE),
               col = carto.pal("red.pal", 4),lwd = 0.4,
               border = "black",
               legend.values.rnd = 1,
               colNA = "grey",
               legend.horiz = FALSE,legend.pos = "left",
               legend.title.txt = "Nombre de décès\n pour 100 000 habitants",
               legend.nodata = "Donnée\nmanquante",
               add=TRUE
    )

    # Ronds proportionnels (guéris)
    propSymbolsLayer(x=DEP, var = "gueris",
                     col="#ADFF2F4D", #Deux dernières lettres = 30 % de transparence
                     legend.pos="topright",
                     legend.title.txt = "Nombre de\npersonnes guéries",
                     add = TRUE)

    # Légende
    layoutLayer(title = paste0("Guérisons et décès du COVID-19 le ",
                               max(bdd$date)), 
                sources = paste0("OpenCOVID19-fr, le ",max(bdd$date)),
                author = "antuki, 2020", 
                postitle = "center",
                theme = "green.pal", 
                col = "darkred", coltitle = "white", 
                tabtitle = TRUE, 
                frame = TRUE,
                scale=FALSE
                )

![](/images/blog/20200330-cartes-sans-donnees/unnamed-chunk-16-1.png)

Bonne découverte… !

#### Et ensuite ?

-   Si vous êtes motivés, je pourrai prolonger l’article en vous
    montrant comment réaliser des cartes avec `ggplot2` et même des
    cartes interactives avec `leaflet` !
-   Différentes ressources en cartographie disponibles sur [mon
    blog](https://antuki.github.io/presentations/) ou sur [mon
    github](https://github.com/antuki).

[1] Mohamed El Fodil Ihaddaden (2020). BARIS: Access and Import Data
from the French Open Data Portal. R package version 1.0.0.
<https://CRAN.R-project.org/package=BARIS>

[2] Kim Antunez (2020). COGugaison: Gestion des codes officiels
géographiques (COG). R package version 1.0.2.
<http://github.com/antuki/COGugaison>

[3] Kim Antunez (2020). CARTElette: Création de couches cartographiques
à partir du code officiel géographique (COG) et des couches IGN. R
package version 1.0.1. <http://github.com/antuki/CARTElette/CARTElette>

[4]  Pebesma, E., 2018. Simple Features for R: Standardized Support for
Spatial Vector Data. The R Journal 10 (1),
439-446,<doi:10.32614/RJ-2018-009>
<https://CRAN.R-project.org/package=sf>

[5] Hadley Wickham, Romain François, Lionel Henry and Kirill Müller
(2020). dplyr: A Grammar of Data Manipulation. R package version 0.8.5.
<https://CRAN.R-project.org/package=dplyr>

[6] Giraud, T. and Lambert, N. (2016). cartography: Create and Integrate
Maps in your R Workflow. JOSS, 1(4). <doi:10.21105/joss.00054>.
<https://CRAN.R-project.org/package=cartography>
