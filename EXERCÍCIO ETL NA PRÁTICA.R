pacman::p_load(dplyr)

sinistrosRecife2019Raw <- read.csv2('http://dados.recife.pe.gov.br/dataset/44087d2d-73b5-4ab3-9bd8-78da7436eed1/resource/3531bafe-d47d-415e-b154-a881081ac76c/download/acidentes-2019.csv', sep = ';', encoding = 'UTF-8')

# carrega a base de snistros de transito do site da PCR
sinistrosRecife2020Raw <- read.csv2('http://dados.recife.pe.gov.br/dataset/44087d2d-73b5-4ab3-9bd8-78da7436eed1/resource/fc1c8460-0406-4fff-b51a-e79205d1f1ab/download/acidentes_2020-novo.csv', sep = ';', encoding = 'UTF-8')

sinistrosRecife2021Raw <- read.csv2('http://dados.recife.pe.gov.br/dataset/44087d2d-73b5-4ab3-9bd8-78da7436eed1/resource/2caa8f41-ccd9-4ea5-906d-f66017d6e107/download/acidentes_2021-jan.csv', sep = ';', encoding = 'UTF-8')

# junta as bases de dados com comando rbind (juntas por linhas)
colunas_iguais <- names(sinistrosRecife2020Raw[
  intersect(
    names(sinistrosRecife2020Raw), names(sinistrosRecife2021Raw))])

sinistrosRecife2020Raw <- sinistrosRecife2020Raw %>% select(all_of(colunas_iguais))

sinistrosRecifeRaw <- rbind(sinistrosRecife2020Raw, sinistrosRecife2021Raw)

# observa a estrutura dos dados
str(sinistrosRecifeRaw)

# modifca a data para formato date
sinistrosRecifeRaw$data <- as.Date(sinistrosRecifeRaw$data, format = "%Y-%m-%d")

# modifica natureza do sinistro de texto para fator
sinistrosRecifeRaw$natureza_acidente <- as.factor(sinistrosRecifeRaw$natureza_acidente)

# cria função para substituir not available (na) por 0
naZero <- function(x) {
  x <- ifelse(is.na(x), 0, x)
}

# aplica a função naZero a todas as colunas de contagem
sinistrosRecifeRaw[, 15:25] <- sapply(sinistrosRecifeRaw[, 15:25], naZero)

# exporta em formato nativo do R
saveRDS(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.rds")

# exporta em formato tabular (.csv) - padrão para interoperabilidade
write.csv2(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.csv")

#adicione mais um ano de sinistros de trânsito à extração
#uni-lo aos demais com o rbind
#busque mais uma coluna para transformar em fator e acrescente isso ao código
install.packages("utf8")

sinistrosRecife2018Raw <- read.csv2('https://docs.google.com/spreadsheets/d/e/2PACX-1vSgEh_prdBWqqF5RyIgpVDtMWvwf6ttsmCBWLJ3D2TrnpGK5MpNQHYBNGSbcZNueg/pub?gid=1523315080&single=true&output=csv', sep = ';', encoding = 'UTF-8')
DATARSU <- read.csv2('https://docs.google.com/spreadsheets/d/e/2PACX-1vQ7EhiAkgUkjnBSJEsXn5qlvxZwwxF1uHdfuBa9X7uwdH9aTihZtnVcid8s1jGHtw/pubhtml?gid=1417881037&single=true', sep = '.', encoding = 'UTF-8')
str(DATARSU)
sinistrosRecifeRaw <- rbind(sinistrosRecife2018Raw, sinistrosRecife2019Raw)
sinistrosRecife2018Raw <- read.csv2('https://docs.google.com/spreadsheets/d/e/2PACX-1vSgEh_prdBWqqF5RyIgpVDtMWvwf6ttsmCBWLJ3D2TrnpGK5MpNQHYBNGSbcZNueg/pub?gid=1523315080&single=true&output=csv', sep = ';', encoding = 'UTF-8')
DATARSU <- read.csv2('https://docs.google.com/spreadsheets/d/e/2PACX-1vQ7EhiAkgUkjnBSJEsXn5qlvxZwwxF1uHdfuBa9X7uwdH9aTihZtnVcid8s1jGHtw/pubhtml?gid=1417881037&single=true', sep = '.', encoding = 'UTF-8')
str(DATARSU)
sinistrosRecifeRaw <- rbind(sinistrosRecife2018Raw, sinistrosRecife2019Raw)
sinistrosRecife2018Raw <- read.csv2('https://docs.google.com/spreadsheets/d/e/2PACX-1vSgEh_prdBWqqF5RyIgpVDtMWvwf6ttsmCBWLJ3D2TrnpGK5MpNQHYBNGSbcZNueg/pub?gid=1523315080&single=true&output=csv', sep = ';', encoding = 'UTF-8')


naZero <- function(x) {
  # cria função para substituir not available (na) por 0
  naZero <- function(x) {
    x <- ifelse(is.na(x), 0, x)
  }
  
sinistrosRecife2019Raw[, 2:5] <- sapply(sinistrosRecife2019Raw[, naZero]
                                       
                                        