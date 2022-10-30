## CORRELAÇÃO COM R ##
# PRIMEIRO, VAMOS CARREGAR OS PACOTES
pacman::p_load(corrplot, dplyr, ggplot2)

# BASE DE DADOS IRIS SEM AS ESPÉCIES #
iris2 <- iris %>% select(-Species)

# TABELA DE CORRELAÇÃO COM TODAS AS VARIÁVEIS #
cor(iris2)

# GRÁFICOS DE DISPERSÃO PAREADOS DAS VARIÁVEIS #
pairs(iris2)

# CORRPLOT DAS VARIÁVEIS #
irisCor <- cor(iris2)
corrplot(irisCor, method = "number", order = 'alphabet')
corrplot(irisCor, order = 'alphabet') 

##Exercícios Correlação

View(DATA_RSU)

plot(DATA_RSU)

DATA_RSU_POLITICA <- DATA_RSU %>% select('Partidos', 'Influencia_grupos_interesse', 'Iegm')

view(DATA_RSU_POLITICA)

plot(DATA_RSU_POLITICA)

##Exercícios Correlação

pairs(DATA_RSU_POLITICA)

# CORRPLOT DAS VARIÁVEIS #

DATA_RSU_POLITICACor <- cor(DATA_RSU_POLITICA)
corrplot(DATA_RSU_POLITICACor, method = "number", order = 'alphabet')
corrplot(DATA_RSU_POLITICA, order = 'alphabet') 

##Exercícios Correlação

pacman::p_load(corrplot, dplyr, ggplot2)
library(corrplot)
library(dplyr)
library(ggplot2)

DATA_RSU2 <- DATA_RSU %>% select(-Potencial_adocao)

cor(DATA_RSU2)

View(DATA_RSU)

DATA_RSU2 <- DATA_RSU %>% select(Municipio)
DATA_RSU2 <- DATA_RSU %>% select(-Municipio)
view(DATA_RSU2)

cor(DATA_RSU2)

pairs(DATA_RSU2)
DATA_RSU2cor <- cor(DATA_RSU2)
corrplot(DATA_RSU2cor, method = 'number', order = 'alphabet')

corrplot(DATA_RSU2cor) 
