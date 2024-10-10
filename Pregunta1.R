#ensayo de Bernoulli

x<-c(0,1)
f<-c(0.68, 0.32)

bar<-barplot(table(muestra)/n, ylim=c(0,1))
lines(bar,f,type="h", col="red")
points(bar,f, pch=16, col="red")

n<-43
muestra<-sample(x, n, f, replace=TRUE)
muestra

sum(muestra)

Y<-function(i){sum(sample(x, n, f, replace=TRUE))}

set.seed(123)
m<-400000
encuestas<-sapply(1:m, Y)
fr<-table(encuestas)/m

fr["13"]

#apartado 1

dbinom(13,43,0.32) #solució directa

#apartado 2

pbinom(16,44,0.32) #P(X<17)=P(X<=16)=P(X=16)

#apartado 3

n<-24
valesp<-n*0.68
valesp

n*0.68*0.32 #variància

qbinom(0.25,24,0.68) #quantil de un cuarto

#apartado 4

n<-46
n*0.32
  #la simulación está arriba del todo