#### CARREGANDO PACOTES ####
pacman::p_load(dplyr, tidyverse)
library(dplyr)
library(tidyverse)


#### LENDO AS BASES PARA O R ####
# opção para quem baixou a base

baseCodMun <- read.table('bases_originais/base_codigos_mun.txt', sep = ',', header = T, encoding = 'UTF-8')

campusIES <- read.csv2('bases_originais/ies_georref.csv')

# opção para pegar as bases diretamente do github
baseCodMun <- read.table('https://raw.githubusercontent.com/hugoavmedeiros/cp_com_r/master/bases_originais/base_codigos_mun.txt', sep = ',', header = T, encoding = 'UTF-8')

campusIES <- read.csv2('https://raw.githubusercontent.com/hugoavmedeiros/cp_com_r/master/bases_originais/ies_georref.csv')

campusIES <- left_join(campusIES, baseCodMun, by = c('CO_MUNICIPIO' = 'id_munic_7'))

DATARSUGITHUB <- read.csv2("https://github.com/bruno-bcab/etl_com_funcao/blob/main/DATARSU.xlsx%20-%20datarsu%20(1).csv")
DATARSUASV <- red.table('DATARSU', sep = ',', header = T, encoding = 'UTF-8')

library(red.table)
install.packages(red.table)
pacman::p_functions(red.table)
DATARSUASV <- read.csv2('DATARSU', sep = ',', header = T, encoding = 'UTF-8')


DATARSUASV <- read.csv2('https://github.com/bruno-bcab/etl_com_funcao/blob/main/DATARSU.xlsx%20-%20datarsu%20(1).csv')
view (DATARSUASV)
plot(DATARSU)
read.csv('https://docs.google.com/spreadsheets/d/e/2PACX-1vQ7EhiAkgUkjnBSJEsXn5qlvxZwwxF1uHdfuBa9X7uwdH9aTihZtnVcid8s1jGHtw/pub?gid=1417881037&single=true&output=csv')
