# Bernoulli Dağılımı
install.packages("Rlab")
library(Rlab)

# X = 0 ve 1 dir. p = başarılı, q = başarısızlık olasılığı; q = 1 - p olur
# Başarılı olunma olasılığı 0.6 ise;
dbern(x = 0, prob = 0.6) # x = 0 başarısız demek == 1 - 0.6 = 0.4 yapar
dbern(x = 1, prob = 0.6) # x = 1 başarılı demek == 0.6 yapar


# pbern, lower.tail = TRUE (default)
pbern(q = 1, prob = 0.7) # kümülatif olasılık = sonucun 1 değerine eşit ve ondan küçük olması olasılığı = 1
pbern(q = 0, prob = 0.7) # kümülatif olasılık = sonucun 0 değerine eşit ve ondan küçük olması olasılığı = 0.3
# pbern(x = 1, prob = 0.7) = dbern(x = 0, prob = 0.7) + dbern(x = 0, prob = 0.7)

# pbern, lower.tail = FALSE
pbern(q = 1, prob = 0.7, lower.tail = F) # kümülatif olasılık = sonucun 1 değerinden büyük olması olasılığı = 0
pbern(q = 0, prob = 0.7, lower.tail = F) # kümülatif olasılık = sonucun 0 değerinden büyük olması olasılığı = 0.7


# qbern, lower.tail = TRUE (default)
# prob = 0.8 ise %20lik başarısızlık vardır, q = 0 ile 0.2 arasındaki değerler 0 dönerken diğerleri 1 döner
qbern(p = 0.21, prob = 0.8) # 1
qbern(p = 0.19, prob = 0.8) # 0

# qbern, lower.tail = FALSE
# prob = 0.8 ise %20lik başarısızlık vardır, q = 0 ile 0.8 arasındaki değerler 1 dönerken diğerleri 0 döner
qbern(p = 0.81, prob = 0.8, lower.tail = F) # 0
qbern(p = 0.79, prob = 0.8, lower.tail = F) # 1


# rbern
rbern(n = 50, prob = 0.7)

###########################################

# Binom Dağılımı
?dbinom

# p = 0.7, q = 0.3, n = 10
# başarı olasılığı %70 olan ameliyattan 10 kere yapıyoruz

# dbinom = tam olarak x adet hastanın başarılı olması
dbinom(x = 1, size = 10, prob = 0.7) # tam olarak 1 hastada başarılı olma olasılığı
dbinom(x = 9, size = 10, prob = 0.7) # tam olarak 9 kere başarılı olma olasılığı

# başarı olasılığı %70 olan ameliyattan 30 kere yapıyoruz ve kaç adet hastada ne oranda başarılı olacağımızı gösteriyor
plot(
  x = 1:30,
  y = dbinom(x = 1:30, size = 30, prob = 0.7),
  bty = "L",
  pch = 19
) 

lines(
  dbinom(x = 1:30, size = 30, prob = 0.5)
) # başarı şansı %50

lines(
  dbinom(x = 1:30, size = 30, prob = 0.3)
) # başarı şansı %30


# pbinom = n kadar hastadan en fazla X adet hastanın başarılı olması
# lower.tail = TRUE (default) = X veya X'den küçük 
# lower.tail = FALSE = X'ten büyük
# pbinom(..., lower.tail = FALSE) = 1 - pbinom(..., lower.tail = TRUE) 
pbinom(q = 12, size = 30, prob = 0.7) # yapılan 30 adet ameliyattan 12 veya 12'den daha az hastanın sağlıklı olabilme ihtimali
pbinom(q = 12, size = 30, prob = 0.7, lower.tail = FALSE) # yapılan 30 adet ameliyattan 12'den daha fazla hastanın sağlıklı olabilme ihtimali


(
  pbinom(q = 12, size = 30, prob = 0.7)  == 
  dbinom(x = 0, size = 30, prob = 0.7) +
  dbinom(x = 1, size = 30, prob = 0.7) +
  dbinom(x = 2, size = 30, prob = 0.7) +
  dbinom(x = 3, size = 30, prob = 0.7) +
  dbinom(x = 4, size = 30, prob = 0.7) +
  dbinom(x = 5, size = 30, prob = 0.7) +
  dbinom(x = 6, size = 30, prob = 0.7) +
  dbinom(x = 7, size = 30, prob = 0.7) +
  dbinom(x = 8, size = 30, prob = 0.7) +
  dbinom(x = 9, size = 30, prob = 0.7) +
  dbinom(x = 10, size = 30, prob = 0.7) +
  dbinom(x = 11, size = 30, prob = 0.7) +
  dbinom(x = 12, size = 30, prob = 0.7)
) ## TRUE OLUR.

# qbinom(p, size = 30, prob = 0.7)
# başarılı olma olasılığı %70 olan 30 kadar ameliyat gerçekleştiğinde %p olasılıkla 30 hastadan;
# lower.tail = TRUE => <çıktı> kadarından <çıktı> veya daha azının başarılı olacağını
# lower.tail = FALSE => <çıktı> kadarından daha fazlasının başarılı olacağını
# gösterir
 
qbinom(p = 0.7, size = 30, prob = 0.7)
qbinom(p = 0.7, size = 30, prob = 0.7, lower.tail = F)


# rbinom(n, size = 30, prob = 0.7)
# başarılı olma olasılığı %70 olan 30 kadar ameliyat gerçekleştiğinde kaç hastada başarılı olacak?
# bu simülasyonu n kadar yapabiliriz
rbinom(1, size = 30, prob = 0.7) # bu 30 ameliyat yapıldığında random olarak 20 tanesi iyileşecek
rbinom(5, size = 30, prob = 0.7) # her ay 30 ameliyat yapılsa 5 ay boyunca random olarak 1. ay 22, 2. ay 20, 3. ay 20, 4. ay 21, 24 hasta iyileşebilir
hist(rbinom(5, size = 30, prob = 0.7))


###########################################

# Poisson Dağılımı
?dpois

# Acil servise 1 saatte 15 tane hasta geliyor
dpois(x = 20, lambda = 15) # 1 saatte 20 hasta gelme olasılığı
dpois(x = 5, lambda = 15) # 1 saatte 5 hasta gelme olasılığı

plot(1:30, dpois(x = 1:30, lambda = 15), bty = "L", pch = 19) # çan eğrisi şeklinde
lines(dpois(x = 1:30, lambda = 20)) # 20 hasta / 1 sa, sağa kayar
lines(dpois(x = 1:30, lambda = 10)) # 10 hasta / 1 sa, sola kayar

dpois(x = 2, lambda = 1/4) # 4 dkda bir hasta geliyorsa 1 dkda 2 hasta gelme olasılığı
dpois(x = 1, lambda = 1/4) # 4 dkda bir hasta geliyorsa 1 dkda 1 hasta gelme olasılığı

# Kümülatif olasılık: 1 saatte max. X hasta gelme olasılığı
ppois(q = 12, lambda = 15, lower.tail = T) # bir saatte en fazla 12 hasta gelme olasılığı
ppois(q = 12, lambda = 15, lower.tail = F) # bir saatte en az 13 hasta gelme olasılığı

# %x lik dilimde 1 saatte n adet hasta gelme olasılığı
# Saatlerin %80'inde acil servise gelen hasta sayısı en fazla kaç olur?
qpois(p = 0.80, lambda = 15, lower.tail = T) # saatte gelen hastaların sayısının istatistiğini tutsak saatlerin %80inde gelen hasta sayısı en fazla 18 olur.
qpois(p = 0.80, lambda = 15, lower.tail = F) # saatte gelen hastaların sayısının istatistiğini tutsak saatlerin %80inde gelen hasta sayısı en az 13 olur.

# 10 farklı saat için gelen hastaların simülasyonunu yap
rpois(n = 10, lambda = 15) # 16 15 15 15 19 15 22 12 19 16 

###########################################

# Hipergeometrik Dağılım

?dhyper

# Bir torba içinde 20 adet top var: 8 tanesi beyaz, 12 tanesi siyah
dhyper(x = 3, m = 8, n= 12, k = 5) # torbadan 5 adet top alıyoruz 3 adet beyaz gelme olasılığı %23.8
plot(1:20, dhyper(1:20, m = 8, n = 12, k = 10), bty = "L", pch = 19)
lines(dhyper(1: 20, m = 10, n = 10, k = 10)) # beyaz top sayısı arttığı için sağa kaydı
lines(dhyper(1: 20, m = 5, n = 15, k = 10)) # beyaz top sayısı azaldığı için sola kaydı

# Kümülatif olasılık
phyper(q = 3, m = 8, n = 12, k = 5, lower.tail = T) # torbadan 5 adet top alıyoruz en fazla 3 adet beyaz gelme olasılığı
phyper(q = 3, m =  8, n = 12, k = 5, lower.tail = F) # torbadan 5 adet top alıyoruz en az 4 adet beyaz gelme olasılığı

# %x lik dilimde beyaz top gelme  olasılığı
qhyper(p = 0.9, m = 8, n = 12, k = 5, lower.tail = T) # bu torbadan alınan 5 adet topu istatistiğe dökseydik %90nında en fazla 3 adet beyaz top gelirdi
qhyper(p = 0.1, m = 8, n = 12, k = 5, lower.tail = F) # bu torbadan alınan 5 adet topu dökseydik %10unda en az 4 adet beyaz top gelirdi

# Bu torbadan 5 adet top çekme simülasyonundan gelecek beyaz top sayıları
rhyper(nn = 10, m = 8, n = 12, k = 5) # 1 2 3 1 2 2 1 1 0 2

###########################################

# Uniform Dağılım
?dunif

# x değeri min. ve max. değerden küçük ve büyük olamaz
dunif(x = 5, min = 0, max = 10) # 10 adet tam sayıdan birinin gelmesi olasılığı eşittir = 1/10
dunif(x = 3, min = 0, max = 10) # 10 adet tam sayıdan birinin gelmesi olasılığı eşittir = 1/10
dunif(x = 8, min = 0, max = 10) # 10 adet tam sayıdan birinin gelmesi olasılığı eşittir = 1/10

plot(x= 0:10, y = dunif(0:10, min = 0, max = 10)) # sabit grafik y = c

# Kümülatif Olasılık
punif(q = 5, min = 0, max = 10, lower.tail = T) # en fazla 5 olma olasılığı = [1, 2, 3, 4, 5] = 5/10
punif(q = 5, min = 0, max = 10, lower.tail = F) # en az 6 olma olasılığı = [6, 7, 8, 9, 10] = 5/10

# Seçtiğimiz sayıların %X kadarı 
# lower.tail = T ise <çıktı> sayısından küçük veya <çıktı> sayısına eşittir
# lower.tail = F ise <çıktı> sayısından büyüktür
qunif(p = 0.30, min = 0, max = 10, lower.tail = T) # 3
qunif(p = 0.30, min = 0, max = 10, lower.tail = F) # 7

# Rastgele simülasyon: 0'dan 10'a kadar n tane herhangi bir sayı çeker
runif(n = 5, min = 0, max = 10) # sürekli
round(runif(n = 5, min = 0, max = 10)) # kesikli 

###########################################

# Exponential Dağılım
?dexp

# Acil servise 1 saatte 15 tane hasta geliyor
# 60 dakikada 15 tane hasta geliyor
# Poisson (λ = 15): önümüzdeki 1 saatte en fazla X adet hasta gelme olasılığı ppois
# Üstel (λ = 15/60 = 1/4): bir hasta geldikten sonra yeni hastanın ilk 2 dakika içinde gelme olasılığı pexp

dexp(x = 2, rate = 1/4) # 2. dakikada hasta gelmesi olasığı
plot(0:60, dexp(0:60, rate = 1/4)) # 4. dakikanın olduğu yerde çok yüksek, üstel grafik
lines(dexp(0:60, rate = 1/5)) # 5 dakikada bir hasta geliyorsa
lines(dexp(0:60, rate = 1/2)) # 2. dakikada bir hasta geliyorsa

# Kümülatif olasılık: bir  hastanın diğer hastanın ardından;
pexp(2, rate = 1/4, lower.tail = T) # ilk 2 dakika içinde gelme olasılığı
pexp(2, rate = 1/4, lower.tail = F) # 2. dakikadan sonra gelme olasılığı

# Bekleme sürelerinin istatistiği tutacak olursak %x kadarı;
# lower.tail = T ise <çıktı> veya <çıktı>dan daha az süre bekler
# lower.tail = F ise <çıktı> dan daha uzun süre bekler
qexp(p = 0.5, rate = 1/4, lower.tail = T) # bekleme sürelerinin %50si 2.77 dkdan küçük veya eşittir
qexp(p = 0.1, rate = 1/4, lower.tail = F) # bekleme sürelerinin %10u 9.21 dkdan büyüktür

# Rastgele simülasyon: n adet hasta olsun aralarındaki bekleme sürelerini rastgele verir
rexp(n = 3, rate = 1/4) # rastgele: 1. ve 2. hasta arasında 11dk; 2. ve 3. hasta arasında 0 dk; 3. ve 4. hasta arasında 4 dk bekleriz 

###########################################

# Normal Dağılım

?dnorm

# Nabız ortalaması 70 olsun. Standart sapma da ± 10 olsun.
dnorm(x = 55, mean = 70, sd = 10) # nabzın 55 olma olasılığı %0.12
plot(0:120, dnorm(x = 0:120, mean = 70, sd = 10)) # çan eğrisi
lines(0:120, dnorm(x = 0:120, mean = 70, sd = 5)) # daha dik bir çan eğrisi
lines(0:120, dnorm(x = 0:120, mean = 70, sd = 20)) # daha yayvan bir çan eğrisi

# Kümülatif Olasılık
pnorm(q = 60, mean = 70, sd = 10, lower.tail = T) # %15 olasılıkla 60'dan daha az veya eşit nabız
pnorm(q = 80, mean = 70, sd = 10, lower.tail = F) # %15 olasılıkla 80'dan daha az veya eşit nabız

# Boy verilerinin %p kadarı;
# lower.tail = TRUE ise <çıktı> dan daha az veya eşit
# lower.tail = FALSE ise <çıktı> dan daha büyük
qnorm(p = 0.95, mean = 70, sd = 10, lower.tail = TRUE) # verilerin %95'i 86.45ten azdır
qnorm(p = 0.95, mean = 70, sd = 10, lower.tail = FALSE) # verilerin %95'i 53.55ten azdır

# Rastgele ortalaması mean, standart sapması sd olan n tane veri üretme
veri <- rnorm(n = 10, mean = 60, sd = 15)
hist(veri)

###########################################

# Standart Normal Dağılım
# ortalama 0, standart sapma 1 olan normal dağılımdır
plot(seq(-1, 1, by = 0.01), dnorm(x = seq(-1, 1, by = 0.01), mean = 0, sd = 1)) # standart normal dağılım grafiği
rnorm(n = 10, mean = 0, sd = 1) # 10 adet standart normal dağılan veri seti üretir

###########################################

# Merkezi Limit Teoremi
z <- c(10, 15, 14, 18, 10, 23, 23, 23, 56, 34, 13, 19, 19, 45, 45, 34)
hist(z) # normal dağılmıyor, sağa çarpık

# 50 kere rastgele 4 adet veri çekip ortalamalarını alıyoruz
sonuc <- c()
for(i in 1:50) {
  ornek <- sample(z, size = 4)
  sonuc[i] <- mean(ornek)
}

par(mfrow = c(1,2))
hist(z) # sağa çarpık
hist(sonuc) # normal dağılım gösteriyor

###########################################

# Ödev
pbinom(q = 300, size = 500, prob = 0.6, lower.tail = F)


# ort. 3000 kadından 500'ü ayakkabı 300'ü çanta alıyor
# bir sonraki 700 ziyaretçinin 100'den fazla satın alınma olasılıklarını hem çanta hem de ayakkabı için bul
# ayakkabı 500/3000 = 1/6, çanta = 300/3000 = 1/10
pbinom(q = 100, size = 700, prob = 1/6, lower.tail = F) # %95.15
pbinom(q = 100, size = 700, prob = 1/10, lower.tail = F) # %0.00132137

# ayakkabı reklamlarına 30 dakikada 5 erkek; 20 dakikada 10 kadın müşteri tıklıyor
# reklam yayınlandıktan 10 dk içerisinde erkek ve kadının tıklama olasılığı
# erkek lambda = 1/6, kadın lambda = 1/2
?pexp
pexp(q = 10, rate = 1/6, lower.tail = T) # %81.11
pexp(q = 10, rate = 1/2, lower.tail = T) # %99.32

