ggplot(breast_cancer) + aes(x = tumor_tamanho, fill = breast) + geom_bar(position = "fill")

# CORRPLOT DAS VARIÁVEIS #
corrplot(breast_cancer_test$residuals, is.cor = FALSE)


##Exercício Qui quadrado
# PRIMEIRO, VAMOS CARREGAR OS PACOTES
pacman::p_load(data.table, ggplot2)
library(data.table, ggplot2)

DATA_RSU <- fread('https://docs.google.com/spreadsheets/d/e/2PACX-1vQQwvOQcnNwiIEumeatgMnilm5gd9KcHc_TtsE42Png8wMOxbn9egkxzJPjvXqvChwcv7Noz_LhS7Q9/pub?output=csv', stringsAsFactors = T)

DATA_RSU_POLITICA <- table(DATA_RSU$Influencia_grupos_interesse, DATAR_RSU$Partidos)
DATA_RSU_POLITICA

ggplot2::aes(x = Partidos, y = Recife, DATA_RSU_POLITICA)
glimpse(DATA_RSU_POLITICA)

ggplot(breast_cancer) + aes(x = tumor_tamanho, fill = breast) + geom_bar(position = "fill")

# AGORA, A BASE DE DADOS CAR EVALUATION #
breast_cancer <- fread('https://raw.githubusercontent.com/hugoavmedeiros/cp_com_r/master/bases_tratadas/breast_cancer.csv', stringsAsFactors = T)


# TABELA DE CONTINGÊNCIA #
breast_cancer_table <- table(breast_cancer$idade, breast_cancer$tumor_tamanho)
breast_cancer_table

# GRÁFICOS DE DISPERSÃO PAREADOS DAS VARIÁVEIS #
ggplot(breast_cancer) + aes(x = tumor_tamanho, fill = idade) + geom_bar(position = "fill")

# TESTE QUI QUADRADO #
breast_cancer_test <- chisq.test(breast_cancer_table)
breast_cancer_test
breast_cancer_test$observed
breast_cancer_test$expected

# CORRPLOT DAS VARIÁVEIS #
corrplot(breast_cancer_test$residuals, is.cor = FALSE

breast_cancer_test <- chisq.test(breast_cancer_table)         

breast_cancer_exercicio <- chiq.test(breast_cancer_table)
