# P1_Probstat_F_5025201204
Praktikum Probstat 1
Moh Akmal Ali Dzikri
5025201204

Soal
1. Distribusi Geometrik

#### 1.a. Mencari peluang distribusi geometrik dengan x = 3, p = 0.2 dengan menggunakan `dgeom`
```
dgeom(3, 0.2)
```
hasil outputnya 0.1024

#### 1.b. Mencari mean dengan data random yang berjumlah 10000, dimana hasil dari distrubusi geometriknya 3
karena yang diminta data random maka menggunakan `rgeom`
```
mean(rgeom(10000, 0.2) == 3)
```
hasil outputnya bergantung hasil data yang diacak

#### 1.c. Bandingkan hasil a dan b
pada soal 1.a itu merupakan nilai exact nya, yaitu 0.1024
sedangkan 1.b merupakan nilai dari simulasi ketika diambil dengan 10000 data random pada kasus yang serupa
dan ternyata hasil nya mendekati nilai exact nya

#### 1.d. Membuat histogram distribusi geometrik
![Histogram Distribusi Geometrik] (https://github.com/akmalali17/P1_Probstat_F_5025201204/blob/main/1d.png)

Referensi : https://rpubs.com/mpfoley73/458721
#### 1.e. Nilai rataan dapat dicari dengan `μ = 1/p` sedangkan varian `σ² = 1-p/p^2` 

Soal 
2. Distribusi Binominal

#### 2.a. Mencari peluang distribusi binominal dengan n = 4, size = 20, p = 0.2 dengan menggunakan `dbinom`
```
dbinom(4, 20, 0.2)
```
hasil outputnya 0.21819

#### 2.b. Membuat histogram distribusi binominal
```x <- rbinom(4, 20, 0.2)```
![Histogram Distribusi Binominal] (https://github.com/akmalali17/P1_Probstat_F_5025201204/blob/main/2b.png)

#### 2.c. Nilai rataan dapat dicari dengan `μ = n*p` sedangkan varian `σ² = npq` 

Soal 
3. Distribusi Poisson

#### 3.a. Mencari peluang distribusi poisson dengan x = 6, lamba = 4.5 dengan menggunakan `dpois`
```
dpois(6, 4.5)
```
hasil outputnya 0.12812

#### 3.b. Membuat histogram distribusi poisson
![Histogram Distribusi Poisson] (https://github.com/akmalali17/P1_Probstat_F_5025201204/blob/main/3b.png)

Referensi : https://bookdown.org/gabriel_butler/ECON41Labs/tutorial-5-the-poisson-distribution.html 

#### 3.c. Bandingkan a dan b
pada soal a adalah nilai exactnya, sedangkan soal b itu adalah nilai simulasi yang memiliki hasil 11.50% hampir mendekati dengan nilai exact yaitu 12.81%

#### 3.d. Nilai rataan dapat dicari dengan `μ = λ` dan varian `σ² = λ` 

Soal 
4. Distribusi Chi-Square

#### 4.a. Mencari peluang distribusi chi-square dengan x = 2, df = 10 dengan menggunakan `dchisq`
```
dchisq(4, 20, 0.2)
```
hasil outputnya 0.0076641

#### 4.b. Membuat histogram distribusi chi-square
```
x <- rchisq(100, 10)
```
![Histogram Distribusi Chi_Square](https://github.com/akmalali17/P1_Probstat_F_5025201204/blob/main/4b.png)

#### 4.c. Nilai rataan dapat dicari dengan `μ = df` sedangkan varian `σ² = 2*df`


Soal 
5. Distribusi Eksponensial

#### 5.a. Mencari peluang distribusi eksponensial dengan n = 10, rate = 3 dengan menggunakan `rexp`
```
rexp(10, 3)
```
hasil outputnya berupa data yang berjumlah 10 
```
0.25172728 0.39388093 0.04856891 0.04659842 0.14535621 0.96498951 0.40985402 0.17989428 0.31885583 0.04901533
```

#### 5.b. Membuat histogram distribusi eksponensial dengan n = 10, 100, 1000, 10000
```
set.seed(1)
x1 <- rexp(n, 3)
```
![Histogram Distribusi Eksponensial n = 10](https://github.com/akmalali17/P1_Probstat_F_5025201204/blob/main/5b_n%3D10.png)

![Histogram Distribusi Eksponensial n = 100](https://github.com/akmalali17/P1_Probstat_F_5025201204/blob/main/5b_n%3D100.png)

![Histogram Distribusi Eksponensial n = 1000](https://github.com/akmalali17/P1_Probstat_F_5025201204/blob/main/5b_n%3D1000.png)

![Histogram Distribusi Eksponensial n = 10000](https://github.com/akmalali17/P1_Probstat_F_5025201204/blob/main/5b_n%3D10000.png)


#### 5.c. Nilai rataan dapat dicari dengan `μ = mean(rexp(100, 3)` sedangkan varian `σ² = var(rexp(100, 3)`


Soal 
6. Distribusi Normal

#### 6.a. Mencari peluang distribusi normal dengan data acak dengan syarat P(X1 ≤ x ≤ X2) dengan menggunakan `rnorm`
```
data <- rnorm(100, 50, 8)
avg <- mean(data)
```
Lalu untuk mendapatkan x1 dan x2 menggunakan `floor` dan `ceiling`
```
x1 <- floor(avg)
x2 <- ceiling(avg)
```
Lalu hitung z_scorenya 
```
z_score <- (data - mean(data)/ sd(data))
```
Lalu digambarkan dengan grafik menggunakan `plot()`
```
plot(z_score, type = 'l', col='red')
```
![Grafik Plot](https://github.com/akmalali17/P1_Probstat_F_5025201204/blob/main/6a.png)


#### 6.b. Membuat histogram distribusi chi-square
```
hist(data, 
     main = "5025201204_Moh Akmal Ali Dzikri_Probstat_E_DNhistogram",
     breaks = 50)
 ```
 ![Histogram Distribusi Normal](https://github.com/akmalali17/P1_Probstat_F_5025201204/blob/main/6b.png)


#### 6.c. Nilai varian dapat dicari dengan `σ² = var(data)`

## Referensi Pengerjaan
https://jagostat.com/teori-peluang/ 

https://jagostat.com/R/

https://rpubs.com/mpfoley73/458721

https://bookdown.org/gabriel_butler/ECON41Labs/tutorial-5-the-poisson-distribution.html
