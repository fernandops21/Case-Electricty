# Case-Genial

O seguinte case tem como objetivo analisar o preço da eletricidade nas cidades australianas de New South Whale e Victoria (referidas como NSW e VIC, respectivamente). 
Nesse mercado em questão os preços não são fixados, flutuam a cada 5 minutos e são afetados pela oferta e demanda. 
O dataset a seguir traz essas variações a cada 30 minutos e uma label nos informando se nesse período o preço em NSW subiu (UP) ou desceu (DOWN).

O intuito é criar um modelo de ML que possa predizer o comportamento do preço (UP/DOWN) e quais variáveis dependentes são as principais influenciadoras nesse 
comportamento.

Informações sobre o dataset
date: data entre 8 de maio de 1996 e 5 de dezembro de 1998. Padronizadas entre 0 e 1.
day: dia da semana (1-7).
period: hora da medição (1-48) a cada 30 minutos em um intervalo de 1 dia (24 horas). Padronizado entre 0 e 1.
nswprice: preço da eletricidade em New South Wale. Padronizado entre 0 e 1.
nswdemand: demanda da eletricidade em New South Wale. Padronizado entre 0 e 1.
vicprice: preço da eletricidade em Victoria. Padronizado entre 0 e 1.
vicdemand: demanda da eletricidade em Victoria. Padronizado entre 0 e 1.
transfer: transferência agendada de eletricidade entre as duas cidades. Padronizado entre 0 e 1.
class: variável categórica. UP: Preço da eletricidade em NSW maior que a média das últimas 24h. Down: caso contrário.
target: representação numérica da variável class. 1:UP, 2:DOWN

---

Conclusão

Após testar alguns modelos de ML chegou-se a um resultado satisfatório através do algoritmo Random Forest. Um próximo passo seria testar algoritmos mais complexos como 
xgboost e lighgbm, ambos também baseados em arvore de decisão, porém com uma estrutura de aumento de gradiente (gradient boosting).

As variáveis que representavam o periodo do dia, demanda em New South Wale e preço da eletricidade em Victoria foram as que apresentaram maior importância no modelo 
de classificação.

O modelo final apresentou:
Acurácia de 0.77,
F1_score de 0.80 e 0.72 para as classes DOWN e UP, respectivamente,
AUC 0.84, considerado excelente pela literatura. (Hosmer and Lemeshow em Applied Logistic Regression, p. 177).
