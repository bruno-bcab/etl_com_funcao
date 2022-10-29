table(DATARSU)

prop.table(DATARSU)
prop.table(table(DATARSU))
pacman::p_load(DATARSU)
pacman::p_load(fBasics)
library(fBasics)
basicStats(iris)
basicStats(iris[ , C(1:4)])
table(iris)

prop.table(table(iris))

#EXERCÍCIO FUNÇÕES ESTATÍSTICAS


fBasics::acfPlot(DATARSU)

table(DATARSU)

mean(DATARSU$Destinacao_final)

median(DATARSU$Potencial_adocao)

quantile(DATARSU$Distancia_Aterro, 0.75)

quantile(DATARSU$Populacao, 0.10)

quantile(DATARSU$Influencia_grupos_interesse, 0.50)

sd(DATARSU)
data.frame(DATARSU)

summary(DATARSU)

mean(DATARSU$Destinacao_final)

median(DATARSU$Destinacao_final)

summary(DATARSU$Destinacao_final)

pacman::p_load(fbasics)

library(fBasics)

basicStats(DATARSU[ , c(2:6)])


