# amostragem sem reposição usando função sample
sample(distNormalSimulacao, 15, replace = FALSE) # se você não tiver o objeto distNormalSimulacao no seu ambiente, crie com o script anterior

# amostragem com reposição usando função sample
sample(distNormalSimulacao, 15, replace = TRUE)

# bootstraping com função replicate
set.seed(412) # agora, não vamos mais usar como tarefa mas como execução ponto a ponto

bootsDistNormal10 <- replicate(10, sample(distNormalSimulacao, 10, replace = TRUE)) # replicamos 10x a amostra, criando assim um bootstrapping
bootsDistNormal10

# calculando uma estatística com bootstrapping (10 amostras)
mediaBootsNormal10 <- replicate(10, mean(sample(distNormalSimulacao, 10, replace = TRUE))) # calculamos a média de 10 amostras de 10 casos
mediaBootsNormal50 <- replicate(50, mean(sample(distNormalSimulacao, 10, replace = TRUE))) # calculamos a média de 50 amostras de 10 casos
mediaBootsNormal100 <- replicate(100, mean(sample(distNormalSimulacao, 10, replace = TRUE))) # calculamos a média de 100 amostras de 10 casos

# vamos comparar???
mean(mediaBootsNormal10) # media do boostraping 10
mean(mediaBootsNormal50) # media do boostraping 50
mean(mediaBootsNormal100) # media do boostraping 100
mean(distNormalSimulacao) # media dos dados originais

# partições
install.packages('caret', dependencies = T) # caret é um pacote geral de machine learning # se já tiver não, innstale =D
library(caret)

# primeiro, criamos as partições de dados
particaoDistNormal <- createDataPartition(1:length(distNormalSimulacao), p=.7) # passamos o tamanho do vetor e o parâmetro de divisão
treinoDistNormal <- distNormalSimulacao[unlist(particaoDistNormal)] # criamos uma partição para treinar os dados, usando a partição anterior. Atenção: o comando unlist é muito usado para transformar uma lista num vetor
testeDistNormal <- distNormalSimulacao[- unlist(particaoDistNormal)] # criamos uma partição para testar os dados, usando a partição anterior. Atenção: o comando unlist é muito usado para transformar uma lista num vetor


EXERCÍCIO BOOTSTRAPING

sample(distNormalSimulacao, 15, replace = FALSE) # se você não tiver o objeto distNormalSimulacao no seu ambiente, crie com o script anterior
distNormalSimulacao(10, replace(10))
install.packages(sample)

# o R como calculadora

binomialnegSimulacao <- rnbinom(300, mu = 3, size = 10)

poissonSimulacao <- rpois(300, 3)

distNormalSimulacao <- dnorm(100, mean = 50, 15)

distNormalSimulacao <- dnorm(300, mean = 50, 15)

sample(distNormalSimulacao, 15, replace = FALSE)

sample(distNormalSimulacao, 15, replace = TRUE)

hist(binomialnegSimulacao)
hist(poissonSimulacao)

binomialnegSimulacao + poissonSimulacao # soma as distribuições

poissonSimulacao + 100 # soma 100 a cada elemento

poissonSimulacao^2 # eleva ao quadrado

poissonSimulacao * binomialnegSimulacao # multiplica

round(distNormalSimulacao, 0) # arredonda o vetor para inteiros

ceiling(distNormalSimulacao) # arredonda para cima

floor(distNormalSimulacao) # arredonda para baixo

distNormalSimulacao %% poissonSimulacao # módulo dos vetores

# também podemos usar funções estatísticas no R

# média
mean(poissonSimulacao)
mean(binomialnegSimulacao)

# mediana
median(poissonSimulacao)
median(binomialnegSimulacao)

# desvio padrão
sd(poissonSimulacao)
sd(binomialnegSimulacao)

# variância
var(poissonSimulacao)
var(binomialnegSimulacao)

# uma aplicação prática?? vamos centralizar a nossa simulação poisson
poissonSimulacaoCentral <- poissonSimulacao - mean(poissonSimulacao)
hist(poissonSimulacao)
hist(poissonSimulacaoCentral)

# o R como calculadora

binomialnegSimulacao <- rnbinom(300, mu = 3, size = 10)

poissonSimulacao <- rpois(300, 3)

hist(binomialnegSimulacao)
hist(poissonSimulacao)

binomialnegSimulacao + poissonSimulacao # soma as distribuições

poissonSimulacao + 100 # soma 100 a cada elemento

poissonSimulacao^2 # eleva ao quadrado

poissonSimulacao * binomialnegSimulacao # multiplica

round(distNormalSimulacao, 0) # arredonda o vetor para inteiros

ceiling(distNormalSimulacao) # arredonda para cima

floor(distNormalSimulacao) # arredonda para baixo

distNormalSimulacao %% poissonSimulacao # módulo dos vetores

# também podemos usar funções estatísticas no R

# média
mean(poissonSimulacao)
mean(binomialnegSimulacao)

# mediana
median(poissonSimulacao)
median(binomialnegSimulacao)


# desvio padrão
sd(poissonSimulacao)
sd(binomialnegSimulacao)

# variância
var(poissonSimulacao)
var(binomialnegSimulacao)

# uma aplicação prática?? vamos centralizar a nossa simulação poisson
poissonSimulacaoCentral <- poissonSimulacao - mean(poissonSimulacao)
hist(poissonSimulacao)
hist(poissonSimulacaoCentral)

# amostragem sem reposição usando função sample
sample(distNormalSimulacao, 15, replace = FALSE) # se você não tiver o objeto distNormalSimulacao no seu ambiente, crie com o script anterior

# amostragem com reposição usando função sample
sample(distNormalSimulacao, 15, replace = TRUE)


# bootstraping com função replicate
set.seed(412) # agora, não vamos mais usar como tarefa mas como execução ponto a ponto

bootsDistNormal10 <- replicate(10, sample(distNormalSimulacao, 10, replace = TRUE)) # replicamos 10x a amostra, criando assim um bootstrapping
bootsDistNormal10

# calculando uma estatística com bootstrapping (10 amostras)
mediaBootsNormal10 <- replicate(10, mean(sample(distNormalSimulacao, 10, replace = TRUE))) # calculamos a média de 10 amostras de 10 casos
mediaBootsNormal50 <- replicate(50, mean(sample(distNormalSimulacao, 10, replace = TRUE))) # calculamos a média de 50 amostras de 10 casos
mediaBootsNormal100 <- replicate(100, mean(sample(distNormalSimulacao, 10, replace = TRUE))) # calculamos a média de 100 amostras de 10 casos

# vamos comparar???
mean(mediaBootsNormal10) # media do boostraping 10
mean(mediaBootsNormal50) # media do boostraping 50
mean(distNormalSimulacao) # media dos dados originais
mean(distNormalSimulacao) # media dos dados originais

# partições
install.packages('caret', dependencies = T) # caret é um pacote geral de machine learning # se já tiver não, innstale =D
library(caret)

# primeiro, criamos as partições de dados
particaoDistNormal <- createDataPartition(2:length(distNormalSimulacao), p=.7) # passamos o tamanho do vetor e o parâmetro de divisão
treinoDistNormal <- distNormalSimulacao[unlist(particaoDistNormal)] # criamos uma partição para treinar os dados, usando a partição anterior. Atenção: o comando unlist é muito usado para transformar uma lista num vetor
testeDistNormal <- distNormalSimulacao[- unlist(particaoDistNormal)] # criamos uma partição para testar os dados, usando a partição anterior. Atenção: o comando unlist é muito usado para transformar uma lista num vetor

##EXERCÍCIO BOOTSTRAPING

bootsDistNormal10

##Compartilhe com a gente um código criado por você com a utilização de técnica bootstrapping. Lembre-se de enviar um link do github!!!

mediaBootsNormal100 <- replicate(75, mean(sample(distNormalSimulacao, 10, replace = FALSE)))
mediaBootsNormal100 <- replicate(75, mean(sample(distNormalSimulacao, 10, replace = TRUE)))
mean(distNormalSimulacao) # media dos dados originais
mean(mediaBootsNormal10) # media do boostraping 10


##EXERCÍCIO BOOTSTRAPING

# bootstraping com função replicate
set.seed(412) # agora, não vamos mais usar como tarefa mas como execução ponto a ponto

bootsDistNormal10 <- replicate(100, sample(distNormalSimulacao, 10, replace = TRUE)) # replicamos 100x a amostra, criando assim um bootstrapping
bootsDistNormal10

# calculando uma estatística com bootstrapping (10 amostras)
mediaBootsNormal10 <- replicate(10, mean(sample(distNormalSimulacao, 10, replace = TRUE))) # calculamos a média de 10 amostras de 10 casos
mediaBootsNormal75 <- replicate(75, mean(sample(distNormalSimulacao, 10, replace = TRUE))) # calculamos a média de 75 amostras de 10 casos
mediaBootsNormal100 <- replicate(1000, mean(sample(distNormalSimulacao, 10, replace = TRUE))) # calculamos a média de 1000 amostras de 10 casos

# vamos comparar???
mean(mediaBootsNormal10) # media do boostraping 10
mean(mediaBootsNormal75) # bootstraping com função replicate
set.seed(412) # agora, não vamos mais usar como tarefa mas como execução ponto a ponto

bootsDistNormal10 <- replicate(10, sample(distNormalSimulacao, 10, replace = TRUE)) # replicamos 10x a amostra, criando assim um bootstrapping
bootsDistNormal10

# calculando uma estatística com bootstrapping (10 amostras)
mediaBootsNormal10 <- replicate(10, mean(sample(distNormalSimulacao, 10, replace = TRUE))) # calculamos a média de 10 amostras de 10 casos
mediaBootsNormal50 <- replicate(50, mean(sample(distNormalSimulacao, 10, replace = TRUE))) # calculamos a média de 50 amostras de 10 casos
mediaBootsNormal100 <- replicate(100, mean(sample(distNormalSimulacao, 10, replace = TRUE))) # calculamos a média de 100 amostras de 10 casos

# vamos comparar???
mean(mediaBootsNormal10) # media do boostraping 10
mean(mediaBootsNormal50) # media do boostraping 50
mean(mediaBootsNormal100) # media do boostraping 100

mean(distNormalSimulacao) # media dos dados originais
mean(distNormalSimulacao) # media dos dados originais

# partições
install.packages('caret', dependencies = T) # caret é um pacote geral de machine learning # se já tiver não, innstale =D
library(caret)

# primeiro, criamos as partições de dados
particaoDistNormal <- createDataPartition(4:length(distNormalSimulacao), p=.7) # passamos o tamanho do vetor e o parâmetro de divisão 4 DIVISÕES
treinoDistNormal <- distNormalSimulacao[unlist(particaoDistNormal)] # criamos uma partição para treinar os dados, usando a partição anterior. Atenção: o comando unlist é muito usado para transformar uma lista num vetor
testeDistNormal <- distNormalSimulacao[- unlist(particaoDistNormal)] # criamos uma partição para testar os dados, usando a partição anterior. Atenção: o comando unlist é muito usado para transformar uma lista num vetor
mean(mediaBootsNormal75)
mean(distNormalSimulacao) # media dos dados originais
mean(distNormalSimulacao) # media dos dados originais

# partições
install.packages('caret', dependencies = T) # caret é um pacote geral de machine learning # se já tiver não, innstale =D
library(caret)

# primeiro, criamos as partições de dados
particaoDistNormal <- createDataPartition(4:length(distNormalSimulacao), p=.7) # passamos o tamanho do vetor e o parâmetro de divisão
treinoDistNormal <- distNormalSimulacao[unlist(particaoDistNormal)] # criamos uma partição para treinar os dados, usando a partição anterior. Atenção: o comando unlist é muito usado para transformar uma lista num vetor
testeDistNormal <- distNormalSimulacao[- unlist(particaoDistNormal)] # criamos uma partição para testar os dados, usando a partição anterior. Atenção: o comando unlist é muito usado para transformar uma lista num vetor

mediaBootsNormal10 <- replicate(99, mean(sample(distNormalSimulacao, 10, replace = TRUE))) # calculamos a média de 10 amostras de 10 casos
