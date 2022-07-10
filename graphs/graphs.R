##### Graficos para o case Genial ####
## Autor: Fernando Pires dos Santos ##
####### Dataset: Electricity ########

library(farff)
dados = readARFF("electricity-normalized.arff",
  data.reader = "readr",
  tmp.file = tempfile(),
  convert.to.logicals = TRUE,
  show.info = TRUE
)

library(ggplot2)
library(ggridges)

ggplot(dados, aes(x = nswprice, y = as.factor(day), fill = as.factor(day))) +
  geom_density_ridges() +
  theme_ridges() + 
  labs(title="Distribuição de nswprice por dia da semana",x="nswprice", y = "dia da semana")+
  theme(legend.position = "none")

ggplot(dados, aes(x = nswdemand, y = as.factor(day), fill = as.factor(day))) +
  geom_density_ridges() +
  theme_ridges() +
  labs(title="Distribuição de nswdemand por dia da semana",x="nswdemand", y = "dia da semana")+
  theme(legend.position = "none")

ggplot(dados, aes(x = vicdemand, y = as.factor(day), fill = as.factor(day))) +
  geom_density_ridges() +
  theme_ridges() + 
  labs(title="Distribuição de vicdemand por dia da semana",x="vicdemand", y = "dia da semana")+
  theme(legend.position = "none")

ggplot(dados, aes(x = transfer, y = as.factor(day), fill = as.factor(day))) +
  geom_density_ridges() +
  theme_ridges() + 
  labs(title="Distribuição de transfer por dia da semana",x="transfer", y = "dia da semana")+
  theme(legend.position = "none")

# Basic box plot por periodo

ggplot(dados, aes(x=as.factor(period), y=nswprice)) + 
  geom_boxplot(fill="gray")+
  labs(title="Boxplots de nswprice por período do dia",x="período", y = "nswprice")+
  theme_classic()


ggplot(dados, aes(x=as.factor(period), y=nswdemand)) + 
  geom_boxplot(fill="blue")+
  labs(title="Boxplots de nswdemand por período do dia",x="período", y = "nswdemand")+
#  theme_classic()
  theme(axis.text.x=element_blank())

ggplot(dados, aes(x=as.factor(period), y=vicprice)) + 
  geom_boxplot(fill="gray")+
  labs(title="Boxplots de vicprice por período do dia",x="período", y = "vicprice")+
  theme_classic()


ggplot(dados, aes(x=as.factor(period), y=vicdemand)) + 
  geom_boxplot(fill="blue")+
  labs(title="Boxplots de vicdemand por período do dia",x="período", y = "vicdemand")+
  #  theme_classic()
  theme(axis.text.x=element_blank())

ggplot(dados, aes(x=as.factor(period), y=transfer)) + 
  geom_boxplot(fill="gray")+
  labs(title="Boxplots de transfer por período do dia",x="período", y = "transfer")+
  theme_classic()

ggplot(dados, aes(x=transfer, y=nswdemand, color=class)) + 
  geom_point() +
  labs(title="Gráfico de dispersão entre nswdemand e transfer, por class",x="transfer", y = "nswdemand") +
  theme(plot.title=element_text(size=10))

ggplot(dados, aes(x=transfer, y=vicdemand, color=class)) + 
  geom_point() +
  labs(title="Gráfico de dispersão entre vicdemand e transfer, por class",x="transfer", y = "vicdemand") +
  theme(plot.title=element_text(size=10))



# Class

ggplot(dados, aes(x=class, y=vicdemand)) + 
  labs(title="Gráficos de violino de vicdemand por class",x="class", y = "vicdemand")+
  geom_violin()

ggplot(dados, aes(x=class, y=nswdemand)) + 
  labs(title="Gráficos de violino de nswdemand por class",x="class", y = "nswdemand")+
  geom_violin()


ggplot(dados, aes(x=class, y=vicdemand)) + 
  geom_boxplot(fill="blue")+
  labs(title="Boxplots de vicdemand por class",x="class", y = "vicdemand")+
  #  theme_classic()
  theme(axis.text.x=element_blank())

## One box per class

#NSWdemand
ggplot(dados, aes(x=day, y=nswdemand, fill=class)) + 
  geom_boxplot() +
  facet_wrap(~class) +
  labs(title="Boxplots de nswdemand por dia da semana e classe",x="dia da semana", y = "nswdemand")+
  theme(legend.position = "none")

#VICdemand
ggplot(dados, aes(x=day, y=vicdemand, fill=class)) + 
  geom_boxplot() +
  facet_wrap(~class) +
  labs(title="Boxplots de vicdemand por dia da semana e classe",x="dia da semana", y = "vicdemand")+
  theme(legend.position = "none")

#transfer
ggplot(dados, aes(x=day, y=transfer, fill=class)) + 
  geom_boxplot() +
  facet_wrap(~class)+
  theme(legend.position = "none")

ggplot(dados, aes(x=day, y=nswdemand, fill=class)) +
  labs(title="Boxplots de nswdemand por dia da semana e classe",x="dia da semana", y = "nswdemand")+
  geom_boxplot()

ggplot(dados, aes(x=day, y=vicdemand, fill=class)) +
  labs(title="Boxplots de vicdemand por dia da semana e classe",x="dia da semana", y = "vicdemand")+
  geom_boxplot()

