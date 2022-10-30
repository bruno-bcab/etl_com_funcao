pacman::p_load(data.table, dplyr, tidyverse, validate)

general_data <- fread("https://covid.ourworldindata.org/data/owid-covid-data.csv") # carrega dados de covid19 no mundo

latin_america_countries <-c("Argentina", "Brazil", "Bolivia", "Chile", "Colombia", "Costa Rica", "Cuba", "Dominican Republic", "Ecuador", "El Salvador", "Guatemala", "Haiti", "Honduras", "Mexico", "Nicaragua", "Panama", "Paraguay", "Peru", "Uruguay", "Venezuela") # vetor que identifica países latino americanos

latin_america <- general_data %>% filter(location %in% latin_america_countries) # filtra casos apenas no vetor

latin_america <- latin_america %>% select(location, new_cases, new_deaths)

regras_latin_america <- validator(new_cases >= 0, new_deaths >= 0)

validacao_latin_america <- confront(latin_america, regras_latin_america)

summary(validacao_latin_america)

plot(validacao_latin_america)

view(latin_america)

plot(latin_america)

glimpse(latin_america)


##EXERCÍCIO VALIDADAÇÃO DE BASE DE DADOS

DATA_RSU <- fread("https://docs.google.com/spreadsheets/d/e/2PACX-1vQQwvOQcnNwiIEumeatgMnilm5gd9KcHc_TtsE42Png8wMOxbn9egkxzJPjvXqvChwcv7Noz_LhS7Q9/pub?output=csv") # dados RSU

glimpse(DATA_RSU)

summary(DATA_RSU)

DATA_RSU_VARIÁVEIS <-c("Municipio, Iegm, Influencia_grupos_interesse, Partidos, Destinacao_final, Distancia_aterro, Populacao, Potencial_adocao") # vetor que identifica variáveis

DATA_RSU_MUNICIPIO <- DATA_RSU %>% filter("Iegm" %in% DATA_RSU_GERAL) # filtra OS DADOS DE MUNICÍPIOS

DATA_RSU_GERAL<- DATA_RSU_MUNICIPIO %>% select(Iegm, Populacao, Potencial_adocao)

regras_DATA_RSU_GERAL <- validator(Iegm >= 1, Partidos >= 2)

validacao_DATA_RSU_GERAL <- confront(DATA_RSU_GERAL, regras_DATA_RSU_GERAL)

summary(validacao_DATA_RSU_GERAL)

plot(DATA_RSU)
