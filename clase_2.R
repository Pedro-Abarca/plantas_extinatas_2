# instalar los paquetes que hacen falta.
install.packages("knitr")
install.packages("kableExtra") # no esta cargandose en version Ubuntu 20.10

# Cargar los paquetes a utilizar
library(tidyverse)
library(knitr)
library(kableExtra)

# Cargo las base de datos con las que se trabajara.
# Estas se debe leer de un origen externo a R, mediante read.csv()
plants <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-08-18/plants.csv')
actions <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-08-18/actions.csv')
threats <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-08-18/threats.csv')

# Ejemplo de como ver y seleccionar datos de la base cargada.
View(plants) # muestras los datos
colnames(plants) # muestra los nombres de las variables
plants$country %>% # elije la variable "country"
  unique() # muestra valores sin repetirlos
x3 <- plants %>% 
  select(binomial_name, country, group, continent, year_last_seen, red_list_category) %>% 
  filter(country == "Chile")
view(x3)
