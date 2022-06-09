# LISTA 04

# 1. Realize a importação do arquivo weather_data.csv, atribuindo seus valores a um objeto chamado weather
weather <- read.table("Dados/weather_data.csv", header = T, sep = ",", dec = ".")

# 2. Calcule a temperatura máxima, mínima e média da Bulgária.
bg_temperatures <- weather[, 8]
max_temperature <- max(bg_temperatures)
min_temperature <- min(bg_temperatures)
mean_temperature <- mean(bg_temperatures)

max_temperature
min_temperature
mean_temperature

# 3. Faça um plot dos dados de temperatura da Bélgica
plot(bg_temperatures, ylab = "Temperatura", xlab = "Índice", pch = 16)

# 4. Escolha dois países e apresente seus dados de radiação e temperatura. 
at_datas <- weather[, c(2, 3)]
be_datas <- weather[, c(5, 6)]

plot(at_datas)
plot(be_datas)

# LISTA 05

# 1. Um biólogo foi ao campo e contou o número de sapos em 20 locais. Ele também anotou a 
# umidade e a temperatura em cada local. Faça dois gráficos de pontos para mostrar a relação 
# do número de sapos com as variáveis temperatura e umidade. Use a função par() para 
# dividir a janela em duas. 
# Os dados são: 
# sapos 6-5-10-11-26-16-17-37-18-21-22-15-24-25-29-31-32-13-39-40 
# umid 62-24-21-30-34-36-41-48-56-74-57-46-58-61-68-76-79-33-85-86 
# temp 31-23-28-30-15-16-24-27-18-10-17-13-25-22-34-12-29-35-26-19 
#  
# 2. Modifique o gráfico do exercício 1 da seguinte forma: 
# a. Para cada gráfico, insira uma legenda nos eixos x e y 
# b. Coloque um título em cada um dos gráficos 
# c. Insira uma linha horizontal considerando a média dos dados coletados 
# d. Modifique o símbolo utilizado nos pontos de umidade e temperatura

sapos <- c(6, 5, 10, 11, 26, 16, 17, 37, 18, 21, 22, 15, 24, 25, 29, 31, 32, 13, 39, 40)
umidade <- c(62, 24, 21, 30, 34, 36, 41, 48, 56, 74, 57, 46, 58, 61, 68, 76, 79, 33, 85, 86)
temperatura <- c(31, 23, 28, 30, 15, 16, 24, 27, 18, 10, 17, 13, 25, 22, 34, 12, 29, 35, 26, 19)

par(mfrow = c(1, 2))
plot(sapos, umidade, xlab = "Sapos", ylab = "Umidade em %", main = "Pesquisa 1", pch = 25)
abline(h = mean(umidade))
plot(sapos, temperatura, xlab = "Sapos", ylab = "Temperatura em ºC", main = "Pesquisa 2", pch = 21)
abline(h = mean(temperatura))

# 3. Um biólogo interessado em saber se o número de aves está relacionado ao número de uma 
# determinada espécie de árvore realizou amostras em 10 locais.
# Faça um gráfico que mostra a relação entre o número de aves e a espécie das árvores. 

numeroAvesA <- c(22, 28, 37, 34, 13, 24, 39, 5, 33, 32)
especiesArvoreA <- c(25, 26, 40, 30, 10, 20, 35, 8, 35, 28)

plot(numeroAvesA, especiesArvoreA, xlab = "Quantidade de aves", ylab = "Quantidade de árvores da espécie", pch = 15, main = "Pesquisa A")

# 4. Um  colega  coletou  mais  dados  sobre  aves  e  árvores,  em  outra  área,  que  podemos 
# aproveitar. Os dados são:
# Inclua estes novos pontos no gráfico com um símbolo diferente e cor azul.
# 5. Repita o gráfico do exercício 2 acima e faça as seguintes modificações. 
# a. Coloque um título no gráfico 
# b. Use bolinhas cheias e azuis como símbolo 
# c. Coloque as legendas no eixo x e no eixo y. Por exemplo: “Número de aves” 

numeroAvesB <- c(6, 17, 18, 11, 6, 15, 20, 16, 12, 15)
especiesArvoreB <- c(7, 15, 12, 14, 4, 14, 16, 60, 13, 16)

plot(numeroAvesB, especiesArvoreB, xlab = "Quantidade de aves", ylab = "Quantidade de árvores da espécie", pch = 21, main = "Pesquisa B")

# LISTA 06

# 1. Faça a importação dos dados de cars_data no R. Após a importação, crie um gráfico barras 
# do atributo peso (weight) com as seguintes características: 
# a. Cor das barras: rosa 
# b. Densidade: 100 % 
# c. Legenda nos eixos x e y 
# d. Título 
# e. Legenda das barras

dados <- read.table("Dados/cars_data.csv", header = T, sep = ",", dec = ".")

X <- dados[, 1]
y <- dados[, 4]

barplot(y, xlab = "Carros", ylab = "Peso", names.arg = x, col = "pink", main = "Peso de carros")
legend("topleft", "Peso", fill = "pink")

# 2. Modifique o gráfico criado na lista anterior correspondente aos exercícios 3 e 4, inserindo 
# uma legenda dos pontos (primeira e segunda coleta). Coloque a legenda no canto inferior 
# direito.

numeroAvesA <- c(22, 28, 37, 34, 13, 24, 39, 5, 33, 32)
especiesArvoreA <- c(25, 26, 40, 30, 10, 20, 35, 8, 35, 28)

numeroAvesB <- c(6, 17, 18, 11, 6, 15, 20, 16, 12, 15)
especiesArvoreB <- c(7, 15, 12, 14, 4, 14, 16, 60, 13, 16)

plot(numeroAvesA, especiesArvoreA,
    pch = 15, col = "blue",
    xlab = "Quantidade de aves", ylab = "Espécie da árvore",
    main = "Correlação Aves X Árvore")
points(numeroAvesB, especiesArvoreB,
    pch = 16, col = "red")
legend("bottomright", c("coleta A", "coleta B"), pch = c(15, 16), col = c("blue", "red"))

# 3. Crie um gráfico de pizza com os dados da quantidade populacional das seguintes cidades:
# Considere as seguintes definições: 
# a. Defina as cores do gráfico pela função rainbow 
# i. col = rainbow(length(x)) 
# b. Como rótulo de cada porção, considere o seu percentual 
# i. labels = piepercent 
# c. Insira uma legenda no canto superior direito do gráfico 

populacao <- c(9002488, 8804190, 12400232, 3571000)
porcentagem <- round(100 * populacao / sum(populacao), 1)
cidade <- c("London", "New York", "São Paulo", "Berlin")

pie(populacao, labels = porcentagem, col = rainbow(length(populacao)), main = "Porcentagem da população")

# 4. Um  artigo  no  Journal  of  Structural  Engineering  (Vol.  115,  1989)  descreve  um 
# experimento para testar a resistência resultante em tubos circulares com calotas soldadas 
# nas extremidades. Os primeiros resultados (em kN) são: 

# 96; 96; 102; 102; 102; 104; 104; 108; 126; 126; 128; 128; 140; 156; 160; 160; 164 e 170.  

# Pede-se: 
# a. Calcule a média da amostra e dê uma interpretação prática para ela 
# b. Calcule a mediana 
# c. Calcule a amplitude da amostra 
# d. Calcule a variância e o desvio padrão da amostra 
# e. Qual a fonte de maior variabilidade deste experimento

dados = c(96, 96, 102, 102, 102, 104, 104, 108, 126, 126, 128, 128, 140, 156, 160, 160, 164, 170.)

media <- mean(dados)
mediana <- median(dados)
modaP <- table(dados) #conjuntos pequenos
# modaG <- subset(dados) #conjuntos grandes
amplitudeA <- max(dados) - min(dados)
amplitudeB <- range(dados) #mostra o maior e menor
variancia <- var(dados)
desvioPadrao <- sd(dados)

media
mediana
modaP
modaG
amplitudeA
amplitudeB
variancia
desvioPadrao

# TRABALHO

# Importacao utilizando encoding para tratar caracteres especiais
volumeChuva <- read.table("chuva.csv", header = TRUE, sep = ",", dec = ".", encoding = "UTF-8")
diasChuvosos <- read.table("dias_chuvosos.csv", header = TRUE, sep = ",", dec = ".", encoding = "UTF-8")
temperaturaMedia <- read.table("temperatura_media.csv", header = TRUE, sep = ",", dec = ".", encoding = "UTF-8")
umidadeRelativa <- read.table("umidade_relativa.csv", header = TRUE, sep = ",", dec = ".", encoding = "UTF-8")

par(mfrow = c(2, 2))

volumeChuva.mes <- volumeChuva[, 1]
volumeChuva.volume <- volumeChuva[, 2]

# Uso de xlim, ylim, xaxs, yaxs e yaxp para definir a area de abrangencia do grafico e seus limites
plot(volumeChuva.mes, volumeChuva.volume, xlab = "Meses", ylab = "Volume (mm�)", xlim = c(1, 12), ylim = c(0, 400), xaxs = "i", yaxs = "i", xaxp = c(1, 12, 11), yaxp = c(0, 400, 8), main = "Volume de chuva ao longo do ano em Botucatu", pch = 15, col = "purple")
abline(h = c(max(volumeChuva.volume), median(volumeChuva.volume), min(volumeChuva.volume)), lty = c("longdash", "dotdash", "dotted"), lwd = 2, col = c("green", "blue", "red"))
lines(x = volumeChuva.mes[(1:length(volumeChuva.mes))], y = volumeChuva.volume[(1:length(volumeChuva.volume))])
text(1.75, max(volumeChuva.volume) - 10, max(volumeChuva.volume), col = "green")
text(8.75, min(volumeChuva.volume) + 10, min(volumeChuva.volume), col = "red")

diasChuvosos.mes <- diasChuvosos[, 1]
diasChuvosos.dias <- diasChuvosos[, 2]

plot(diasChuvosos.mes, diasChuvosos.dias, xlab = "Meses", ylab = "Dias", xlim = c(1, 12), ylim = c(0, 30), xaxs = "i", yaxs = "i", xaxp = c(1, 12, 11), yaxp = c(0, 30, 6), main = "Dias chuvosos ao longo do ano em Botucatu", pch = 16, col = "purple")
abline(h = c(max(diasChuvosos.dias), median(diasChuvosos.dias), min(diasChuvosos.dias)), lty = c("longdash", "dotdash", "dotted"), lwd = 2, col = c("green", "blue", "red"))
lines(x = diasChuvosos.mes[(1:length(diasChuvosos.mes))], y = diasChuvosos.dias[(1:length(diasChuvosos.dias))])
text(1.75, max(diasChuvosos.dias) - 0.7, max(diasChuvosos.dias), col = "green")
text(8.5, min(diasChuvosos.dias) + 0.7, min(diasChuvosos.dias), col = "red")

temperaturaMedia.mes <- temperaturaMedia[, 1]
temperaturaMedia.temperatura <- temperaturaMedia[, 2]

plot(temperaturaMedia.mes, temperaturaMedia.temperatura, xlab = "Meses", ylab = "Temperatura (�C)", xlim = c(1, 12), ylim = c(15, 25), xaxs = "i", yaxs = "i", xaxp = c(1, 12, 11), yaxp = c(15, 25, 10), main = "Temperatura m�dia ao longo do ano em Botucatu", pch = 17, col = "purple")
abline(h = c(max(temperaturaMedia.temperatura), median(temperaturaMedia.temperatura), min(temperaturaMedia.temperatura)), lty = c("longdash", "dotdash", "dotted"), lwd = 2, col = c("green", "blue", "red"))
lines(x = temperaturaMedia.mes[(1:length(temperaturaMedia.mes))], y = temperaturaMedia.temperatura[(1:length(temperaturaMedia.temperatura))])
text(3, max(temperaturaMedia.temperatura) - 0.3, max(temperaturaMedia.temperatura), col = "green")
text(7.5, min(temperaturaMedia.temperatura) + 0.3, min(temperaturaMedia.temperatura), col = "red")

umidadeRelativa.mes <- umidadeRelativa[, 1]
umidadeRelativa.umidade <- umidadeRelativa[, 2]

plot(umidadeRelativa.mes, umidadeRelativa.umidade, xlab = "Meses", ylab = "Umidade (%)", xlim = c(1, 12), ylim = c(50, 100), xaxs = "i", yaxs = "i", xaxp = c(1, 12, 11), yaxp = c(50, 100, 5), main = "Umidade relativa ao longo do ano em Botucatu", pch = 18, col = "purple")
abline(h = c(max(umidadeRelativa.umidade), median(umidadeRelativa.umidade), min(umidadeRelativa.umidade)), lty = c("longdash", "dotdash", "dotted"), lwd = 2, col = c("green", "blue", "red"))
lines(x = umidadeRelativa.mes[(1:length(umidadeRelativa.mes))], y = umidadeRelativa.umidade[(1:length(umidadeRelativa.umidade))])
text(2, max(umidadeRelativa.umidade) - 1.5, max(umidadeRelativa.umidade), col = "green")
text(7.5, min(umidadeRelativa.umidade) + 1.5, min(umidadeRelativa.umidade), col = "red")