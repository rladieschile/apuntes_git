#librerias
library(usethis)
library(devtools)
usethis::use_git_config(user.name = "Daniel795-lab", user.email = "diugalde@uc.cl")
usethis::browse_github_token()
usethis::edit_r_environ()

#Activar Git y conectar proyecto a GitHub
use_git() #activar
usethis::use_github() #y conectar el proyecto a GitHub
usethis::create_from_github("rladieschile/apuntes_git", destdir = "~/Desktop", fork = TRUE)#crea una copia del repositorio en mi propia cuenta e importa la base de datos 

usethis::pr_pull_upstream()# descargo los archivos "nuevos" del upstream para actualizar mi repositorio local
usethis::pr_init("sitio_web")#crea rama denominada "sitio_web"
devtools::build_site()#genera un .html en la carpeta docs
usethis::pr_push()#envio los cambios, se realiza un pull request a mi mismo.

#Crea README
usethis::use_readme_rmd()#solo funciona cuando se crean nuevos paquetes