library(dplyr)

facebook <- read.table("https://raw.githubusercontent.com/hugoavmedeiros/cd_com_r/master/bases_originais/dataset_Facebook.csv", sep=";", header = T)

# sumários
count(facebook, Type) 

# sumários com agrupamentos
facebook %>% group_by(Type) %>% summarise(avg = mean(like))

### Transformação de Casos

# seleção de casos
facebook %>%  filter(Type != "Photo") %>% summarise(avg = mean(like))
facebook %>%  filter(Type != "Photo") %>% group_by(Type, Paid) %>% summarise(avg = mean(like))

# ordenar casos
arrange(facebook, like) # ascendente
arrange(facebook, desc(like)) # descendente

### Transformação de Variáveis

# seleção de colunas
facebook %>% select(like, Type, Paid) %>% arrange(like)

# novas colunas
facebook %>% mutate(likePerLifeTime = like/Lifetime.Post.Total.Reach)

# renomear
facebook %>% rename(Reach = Lifetime.Post.Total.Reach)

#Exercício dplyr

facebook <- read.table("https://docs.google.com/spreadsheets/d/e/2PACX-1vQ7EhiAkgUkjnBSJEsXn5qlvxZwwxF1uHdfuBa9X7uwdH9aTihZtnVcid8s1jGHtw/pubhtml?gid=1417881037&single=true", sep=";", header = T)

facebook <- read.table("https://raw.githubusercontent.com/hugoavmedeiros/cd_com_r/master/bases_originais/dataset_Facebook.csv", sep=";", header = T)



#Exercício dplyr

Compartilhe com a gente um código criado por você com a aplicação de pelo menos um sumário, um agrupamento, uma manipulação de casos e uma manipulação de colunas.

# sumários
count(facebook, Category) 

# sumários com agrupamentos
facebook %>% group_by(Category) %>% summarise(avg = mean(like))

### Transformação de Casos

# seleção de casos
facebook %>%  filter(Category != "Photo") %>% summarise(avg = mean(like))
facebook %>%  filter(Category != "Photo") %>% group_by(Category, Paid) %>% summarise(avg = mean(like))

# ordenar casos
arrange(facebook, Category) # ascendente
arrange(facebook, desc(Category)) # descendente

### Transformação de Variáveis

# seleção de colunas
facebook %>% select(comment, Category, share) %>% arrange(share)

# novas colunas
facebook %>% mutate(commentPershare = comment/share)




