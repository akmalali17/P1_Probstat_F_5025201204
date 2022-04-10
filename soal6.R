#soal no 6

#a
n = 100
m = 50
std = 8

#data <- c(1,2,4,2,6,3,10,11,5,3,6,85)
data <- rnorm(100,50,8)
average <- mean(data)
x1 <- floor(mean(data))
x2 <- ceiling(mean(data))

z_scores <- (data - mean(data) / sd(data))

plot(z_scores, type = "o", col="blue")

#b
x <- rnorm(100,50,8)
hist(x,
     breaks = 50,
     main = "5025201204_Moh Akmal Ali Dzikri_Probstat_F_DNhistogram")

#c
var(x)
