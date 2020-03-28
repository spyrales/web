if (file.exists('~/.Rprofile')) sys.source('~/.Rprofile', envir = environment())
if (! "blogdown" %in% .packages(TRUE)) {
  message(
    "Le package `blogdown` n'est pas installé. Vous pouvez l'installer en exécutant :\n",
    'install.package("blogdown")\n'
  )
}

if ((! "blogdown" %in% .packages(TRUE)) || !identical(blogdown::hugo_version(), numeric_version("0.67.0"))) {
  message(
    "Ce site requiert Hugo extended 0.67.0. Vous pouvez l'installer en exécutant :\n",
    'blogdown::install_hugo("0.67.0")'
  )
}
