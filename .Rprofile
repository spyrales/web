if (file.exists('~/.Rprofile')) sys.source('~/.Rprofile', envir = environment())
if (! "blogdown" %in% .packages(TRUE)) {
  message(
    "Le package `blogdown` n'est pas installé. Vous pouvez l'installer en exécutant :\n",
    'install.packages("blogdown")\n'
  )
}

if ((! "blogdown" %in% .packages(TRUE)) || !identical(blogdown::hugo_version(), numeric_version("0.67.0"))) {
  message(
    "Ce site requiert Hugo extended 0.67.0. Vous pouvez l'installer en exécutant :\n",
    'blogdown::install_hugo("0.67.0")'
  )
}

if (length(list.files("./themes/airspace")) == 0) {
  if (nzchar(Sys.which("git"))) {
    message("\nTéléchargement du thème airspace...")
    system2("git", c("submodule", "update", "--init", "--recursive"))
    message("...téléchargement terminé.")
  } else {
    message(
      "Vous devez télécharger le thème en exécutant dans le terminal :\n",
      "git submodule update --init --recursive"
    )
  }
}
