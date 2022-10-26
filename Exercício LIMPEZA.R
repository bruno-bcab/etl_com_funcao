library(data.table)
library(dplyr)
library(tidyverse)
library(funModeling) 

general_data <- fread("https://covid.ourworldindata.org/data/owid-covid-data.csv") # carrega dados de covid19 no mundo

latin_america_countries <-c("Argentina", "Brazil", "Bolivia", "Chile", "Colombia", "Costa Rica", "Cuba", "Dominican Republic", "Ecuador", "El Salvador", "Guatemala", "Haiti", "Honduras", "Mexico", "Nicaragua", "Panama", "Paraguay", "Peru", "Uruguay", "Venezuela") # vetor que identifica países latino americanos

latin_america <- general_data %>% filter(location %in% latin_america_countries) # filtra casos apenas no vetor

latin_america <- latin_america %>% select(location, new_cases, new_deaths)

status(latin_america) # estrutura dos dados (missing etc)
freq(latin_america) # frequência das variáveis fator
plot_num(latin_america) # exploração das variáveis numéricas
profiling_num(latin_america) # estatísticas das variáveis numéricas

latin_america %>% filter(new_cases < 0)

latin_america <- latin_america %>% filter(new_cases>=0)
guides(scale(freq(latin_europe)))
library(freqdist)
library(FREQ)
install.packages("funModeling")


Exercício Limpeza

latin_europe <- general_data %>% filter(location %in% latin_europe_countries) # filtra casos apenas no vetor

latin_europe <- general_data %>% filter(location %in% latin_europe_countries) # filtra casos apenas no vetor

latin_europe <- latin_europe %>% select(location, new_cases, new_deaths)

status(latin_america) # estrutura dos dados (missing etc)

library(funModeling)
freq(latin_europe)
plot_num(latin_europe) # exploração das variáveis numéricas
profiling_num(latin_europe) # estatísticas das variáveis numéricas
latin_europe %>% filter(new_cases < 0)
library(data.table)
latin_europe %>% filter(new_cases < 0)
guides(scale(freq(latin_europe)))

status(latin_europe)
latin_europe <- general_data %>% filter()

