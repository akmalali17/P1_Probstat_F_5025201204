#soal no 4

#a
x = 2
df = 10
dchisq(x , df)

#b
p <- rchisq(100,df)

hist(p,
     freq = FALSE,
     xlim = c(0,30),
     ylim = c(0,0.2),
     main = "Histogram Of Chisquare")

#c
#mean
mean1 = df
mean1

#variance
var1 = 2*df
var1

