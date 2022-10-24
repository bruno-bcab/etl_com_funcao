saveRDS(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.rds")

install.packages(gzfile)
install.packages("pacman")
library(pacman)
pacman::gzfile
pacman::p_data(gzfile(compression))
pacman::p_data(sinistrosRecifeRaw)

##########

library(microbenchmark)

# exporta em formato nativo do R
saveRDS(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.rds")

# exporta em formato tabular (.csv) - padrão para interoperabilidade
write.csv2(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.csv")

# carrega base de dados em formato nativo R
sinistrosRecife <- readRDS('bases_tratadas/sinistrosRecife.rds')

# carrega base de dados em formato tabular (.csv) - padrão para interoperabilidade
sinistrosRecife <- read.csv2('bases_tratadas/sinistrosRecife.csv', sep = ';')

# compara os dois processos de exportação, usando a função microbenchmark

microbenchmark(a <- saveRDS(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.rds"), b <- write.csv2(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.csv"), times = 30L)

microbenchmark(a <- readRDS('bases_tratadas/sinistrosRecife.rds'), b <- read.csv2('bases_tratadas/sinistrosRecife.csv', sep = ';'), times = 10L)
# exporta em formato nativo do R
saveRDS(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.rds")

saveRDS(sinistrosRecifeRaw, "bases_tratadas/sinistrosRecife.rds")

saveRDS(sinistrosRecifeRaw, "bases_tratadas.rds")
write.csv2(sinistrosRecifeRaw, "bases_tratadas.csv")
sinistrosRecife <- read.csv2('bases_tratadas.csv' , sep = ':')
microbenchmark::microbenchmark(a <- saveRDS(sinistrosRecifeRaw, "bases_tratadas.rds"), b <- write.csv2(sinistrosRecifeRaw, "bases_tratadas.csv"), times = 20L)
microbenchmark(a <- readRDS('bases_tratadas.rds'), b <- read.csv2('bases_tratadas.csv', sep = ';'), times = 5L)
install.packages(readRDS)
pacman::p_data(readRDS)
plot(sinistrosRecife)
View(sinistrosRecifeRaw)
plot(sinistrosRecifeRaw)
sinistrosRecife <- read.csv2('bases_tratadas.rds', sep = ';')
saveRDS(sinistrosRecifeRaw, 'bases_tratadas.rds')
microbenchmark::microbenchmark(a <- saveRDS(sinistrosRecifeRaw, 'bases_tratadas.rds'), b <- write.csv2(sinistrosRecifeRaw, 'bases_tratadas.csv'), times = 20L)
