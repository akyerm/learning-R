# Matematiksel İşlemler ve Vektörler
vector1 <- seq(5, 200, 5)
vectorRandom <- sample(vector1) # verileri rastgele dizer
vectorRandomReplaced <- sample(vector1, replace = TRUE) # vektördeki verileri rastgele ve birden fazla olabilecek şekilde dizer
vectorRandElement <- sample(vector1, size = 3) # rastgele 3 eleman seçer

set.seed(100) # seedi 100 ayarladığında her rastgelelikte aynı şey gelir
vectorRandElement <- sample(vector1, size = 3)
vectorRandElement # 50 190 125

vector2 <- rep(4, 10) #  [1] 4 4 4 4 4 4 4 4 4 4
vector2

vector3 <- c(2, 5, 7, 10)
vector3 <- rep(vector3, 2) # [1]  2  5  7 10  2  5  7 10
vector3 <- rep(vector)

# Saat ve Tarih İşlemleri

Sys.Date()
newDateStr <- "12/08/2026"
newDate <- format(newDateStr, date)

Sys.Date()
newDateStr <- "12/08/2026"
newDate <- format(newDateStr, format = "%d/%m/%Y")
newDate
class(newDate)

today <- Sys.Date()
today

newDate <- format(newDateStr, format = "%d/%m/%Y")
newDate

today <- Sys.Date()
newDate <- format(today, format = "%d/%m/%Y")
newDate

date1 <- format(today, format = "%d/%m/%Y")
dateStr <- "12/08/2006"

date2 <- as.Date(dateStr, format = "%d/%m/%Y")
date2
class(date2)

dateStr <- "12/08/2006"
date2 <- as.Date(dateStr, format = "%d/%m/%Y")
date2

dateStr <- "12/08/2026"
date2 <- as.Date(dateStr, format = "%d/%m/%Y")
date2

today <- Sys.Date()
today

date1 <- format(today, format = "%d/%m/%Y")
date1
class(date1)

time1 <- Sys.time()
class(time1)
time1

as.POSIXlt(time1) # "2026-08-11 23:52:22 +03"
unclass(time1)
unclass(as.POSIXlt(time1))
unclass(as.POSIXlt(time1))[['year']]
unclass(as.POSIXlt(time1))[['mon']]

time2 <- "12/08/2006 20:00"
time2 <- as.POSIXlt(time2, format = "%d/%m/%Y %H:%M")
time2
time3 <- "12/08/2026"
time4 <- "12/08/2020"
time3 <- as.Date(time3, format = "%d/%m/%Y")
time4 <- as.Date(time4, format = "%d/%m/%Y")

time4 - time3 
time3 - time4 
fark <- time3 - time4 # 2191 days
unclass(fark)
unclass(fark)
as.double(fark)

fark2 <- as.POSIXlt("13/08/2006 21:00", format = "%d/%m/%Y %H:%M") - as.POSIXlt("12/08/2006 20:00", format = "%d/%m/%Y %H:%M")
fark2
fark3 <- as.POSIXlt("13/08/2006 21:00", format = "%d/%m/%Y %H:%M") - as.POSIXlt("12/08/2006 20:00", format = "%d/%m/%Y %H:%M")
fark3 # 1.041667 days
fark2 <- as.POSIXlt("12/08/2006 21:00", format = "%d/%m/%Y %H:%M") - as.POSIXlt("12/08/2006 20:00", format = "%d/%m/%Y %H:%M")
fark2 # 1.041667 days
fark4 <- as.POSIXlt("12/08/2006 21:15", format = "%d/%m/%Y %H:%M") - as.POSIXlt("12/08/2006 20:00", format = "%d/%m/%Y %H:%M")
fark4 # 1.041667 days

dateVector <- c("12/08/2026", "13/08/2026", "14/08/2026")
dateVector <- as.Date(dateVector, format = "%d/%m/%Y")
class(dateVector)
dateFrom = "12/08/2026"
dateTo = "12/09/2026"
seq(
  as.Date(dateFrom, format = "%d/%m/%Y"),
  as.Date(dateFrom, format = "%d/%m/%Y"),
  by = 5 # 5'er gün olarak artar
)

as.Date(dateFrom, format = "%d/%m/%Y")

seq(
  as.Date(dateFrom, format = "%d/%m/%Y"),
  as.Date(dateTo, format = "%d/%m/%Y"),
  by = 5 # 5'er gün olarak artar
)

seq(
  as.Date(dateFrom, format = "%d/%m/%Y"),
  as.Date(dateTo, format = "%d/%m/%Y"),
  by = "day" # 1'er gün olarak artar
)

seq(
  as.Date(dateFrom, format = "%d/%m/%Y"),
  as.Date(dateTo, format = "%d/%m/%Y"),
  by = "month" # 1'er ay olarak artar
)

##

dateVec1 <- seq(
  from = as.Date("2012-01-01"),
  to = as.Date("2020-01-01"),
  by = "month"
)

dateVec1 > "2012-05-01" # Mayıs 2012den büyük verileri yazar
dateVec1[dateVec1 > "2012-05-01"]
dateVec1[dateVec1 > as.Date("01/01/2015", format = "%d/%m/%Y")]
dateVec1[which(dateVec1 > as.Date("01/01/2015", format = "%d/%m/%Y"))]


dateVec2 <- seq(
  from = as.POSIXct("2012-01-01 12:00:00"),
  to = as.POSIXct("2012-01-01 12:45:00"),
  by = "min"
)

dateVec2 > as.POSIXct("01/01/2012 12:30:00", format = "%d/%m/%Y %H:%M:%S")
dateVec2[dateVec2 > "2012-01-01 12:30:00" & dateVec2 < "2012-01-01 12:35:00"]

dateVec3 <- seq(
  from = as.Date("2012-01-01"),
  to = as.Date("2012-06-01"),
  by = "month"
)

dateVec4 <- seq(
  from = as.Date("2012-07-01"),
  to = as.Date("2012-12-01"),
  by = "month"
)

dateVec4 - dateVec3 # [1] 182 182 184 183 184 183
dateVec3 - as.Date("2012-01-01") # [1]   0  31  60  91 121 152

sort(sample(dateVec4), decreasing = TRUE) # sıralama yapar

strptime(dateVec4, format = "%Y-%m-%d") # POSIXe ÇEVİRİR

# chron
install.packages("chron")
library(chron)

d1 <- "01/01/2020"
d2 <- "02/01/2020"
t1 <- "12:30:00"
t2 <- "12:45:00"
dates <- chron(
  dates. = c(d1, d2), 
  times. = c(t1, t2), 
  format = c(dates = "d/m/y", times = "h:m:s")
)

dates[1] # [1] (01/01/20 12:30:00)

##

timeVec1 <- seq(
  from = as.POSIXct("01.08 10:00", format = "%d.%m %H:%M"),
  to = as.POSIXct("30.08 12:00", format = "%d.%m %H:%M"),
  by = "day"
)

timeVec1
format(timeVec1, "%d.%m") # CLASS = CHARACTER, yalnızca günleri dönüyor
format(timeVec1, "%H:%M") # CLASS = CHARACTER, yalnızca saatleri dönüyor

weekdays(timeVec1) # günlere döker
months(timeVec1) # aylara döker

as.Date("1 September 2020", format = "%d %B %Y") 
Sys.setlocale("LC_TIME", "Turkish")
as.Date("1 Eylül 2020", format = "%d %B %Y") 


# İstatistiksel İşlemler
vec1 <- c(12, 32, 54, 87)
sum(vec1) # 185
mean(vec1)# 46.25
length(vec1) # n = 4
serbestlikDerecesi <- length(vec1) - 1 # serbestlik derecesi = degree of freedom = n - 1
sd <- sd(vec1) # standart sapma = 32.12865
varyans <- var(vec1) # varyans = standart sapmanın karesi = sd^2 = 1032.25
medyan <- median(vec1) # medyan
aciklik <- max(vec1) - min(vec1) # açıklık, range
ceyreklikler <- quantile(vec1, probs = c(0.25, 0.5, 0.75))
ceyreklikler2 <- quantile(vec1, probs = c(0.20, 0.60, 0.80))

install.packages("e1071")
library(e1071)
skewness(vec1) # ÇARPIKLIK KATSAYISI = 0.188923 | -1 VE 1E YAKIN OLURSA ÇARPIKLIK FAZLA

unique(vec1) # tekrar eden değerlerin çıkarılmış hali
table(vec1) # frekans tablosu

sum(c(1, 3, 5, 7, NA, NA), na.rm = TRUE) # NA ları çıkarır
mean(c(1, 3, 5, 7, NA, NA), na.rm = TRUE) # NA ları çıkarır
sd(c(1, 3, 5, 7, NA, NA), na.rm = TRUE) # NA ları çıkarır
median(c(1, 3, 5, 7, NA, NA), na.rm = TRUE) # NA ları çıkarır
is.na(c(1, 3, 5, 7, NA, NA)) # NA  olanları dönüyor
which(is.na(c(1, 3, 5, 7, NA, NA)))
any(is.na(c(1, 3, 5, 7, NA, NA)))




## DATA FRAMES
df1 <- data.frame(
  "A" = c(1, 34, 65, 87),
  "B" = c(32, 6, 43, 19),
  "C" = c(18, 64, 98, 12)
  )

length(df1) # 3 = sütun veriyor
length(df1$A) # 4 = A sütunundaki satır sayısını veriyor
nrow(df1) # 4 = satır sayısı
ncol(df1) # 3 = sütun sayısı
dim(df1) # 4 3 = [1] satır [2] sütun sayısı
dim(df1)[1] # 4 = satır sayısı


df2 <- data.frame(
  "A" = rnorm(100, mean = 5, sd = 3),
  "B" = rnorm(100, mean = 54, sd = 1),
  "C" = rnorm(100, mean = 75, sd = 17)
)

# not: which() NA olanları eliyor
which(df2$A < 9) # A sütununda değeri 9dan küçük olanların indexlerini dönüyor
df2[which(df2$A < 9),] # A sütununda değeri 9dan küçük olanların değerleri
df2[which(df2$A < 9), c("B", "C")] # A sütununda değeri 9dan küçük olanların B ve C değerleri

df3 <- CO2
names(df3)
subset(df3, subset = uptake < 30 & Type == "Quebec") # uptake 30dan küçük ve Quebecte olan veriler
subset(df3, subset = uptake < 30 & Type == "Quebec", select = c(Treatment, conc)) # uptake 30dan küçük ve Quebecte olan verilerde treatment ve conc verileri

rowMeans(iris[1:4]) # satırların ortalamasını alıyor
iris["Ortalama"] <- rowMeans(iris[1:4]) # dfye ortalama sütunu ekliyoruz
View(iris)
colMeans(iris["Sepal.Length"], na.rm = T) # sütunun ortalamasını alıyor

setosa <- iris[which(iris$Species == "setosa"), ]
versicolor <- iris[which(iris$Species == "versicolor"), ]
virginica <- iris[which(iris$Species == "virginica"), ]

mean(setosa$Sepal.Length)

# yukarıdaki işlemleri tek fonksiyonla yapabiliyoruz
aggregate(iris[1:4], by = list(iris$Species), FUN = mean, na.rm = T)
aggregate(iris[1:4], by = list(iris$Species), FUN = sum, na.rm = T)
aggregate(iris[1:4], by = list(iris$Species), FUN = sd, na.rm = T)


# CSV / veri seti aktarma
getwd() # çalışma klasörünü verir
setwd() # çalışma klasörünü ayarlar
list.files() # klasördeki dosyaları verir

singapore <- read.csv("data/CSV__singapore.csv", header = TRUE, sep = ",", dec = ".")
View(singapore)

Transactions
Demo
merged1 <- merge(Transactions, Demografik, by.x = "CUSTOMER_ID", by.y = "ID")

names(Transactions)[2] <- "ID"
merged2 <- merge(Transactions, Demografik, by = "ID")


# DF İstatistiki Özet
summary(iris)
View(summary(iris))
str(iris) # değişken türlerini gösteriyor
head(iris) # ilk 6 veriyi gösteriyor = iris[1:6,]
head(iris, n = 10) # ilk 10 veriyi gösteriyor = iris[1:6,]
tail(iris) # son 6 veriyi gösteriyor iris[-1:-(nrow(iris)[1] - 6), ]
tail(iris, n = 10) # son 10 veriyi gösteriyor = iris[-1:-(nrow(iris)[1] - 10), ]

df <- read.csv("data/CSV__singapore.csv")
mean(df$price) # NA
which(is.na(df$price)) # 5
any(is.na(df$price)) # TRUE
mean(df$price, na.rm = TRUE) # 169.3425
sd(df$price, na.rm = TRUE) # 340.2081
median(df$price, na.rm = TRUE) # 124

# median < mean == sola çarpık
hist(df$price[df$price < 1000]) # sola çarpık

var(df$price, na.rm = TRUE) # 115741.5
min(df$price, na.rm = TRUE) # 0
max(df$price, na.rm = TRUE) # 10000
quantile(df$price, na.rm = TRUE)

table(df$room_type) # verilerin frekansı
View(table(df$room_type))


# DF Değişken Değiştirme
# Not: classı dataframeler değiştirme hatalı oluyor
class(df$price) # integer
df$price <- as.numeric(df$price) 
class(df$price) # numeric

class(df$name) # character
df$name <- as.factor(df$name) # factor
class(df$name) # factor

# apply
?apply
apply(df["price"], FUN = mean)
apply(df[10:11], MARGIN = 1, FUN = mean) # price + minimum nights / 2
lapply(df, FUN = mean) # bütün hepsinin ortalamasını alıyor
# NOT: lapply listelerde apply dataframelerde

# attach ve with
?attach
?with


# NOT: attach edilen sayı kadar detach etmek lazım
attach(df) # dfdeki sütunları dışarıya çıkarıyor
host_name
host_id

detach(df)
host_id # bulunamıyor

with(df, mean(price))
with(df, {
  x <- price
  mean(x)
})

# Örnek
df <- read.csv("data/WomenFootballResults.csv")
names(df)
df1 <- df[which(df$date > as.Date("1980/12/1") & df$date < as.Date("2019/12/31")), ]
df1 <- df1[-6:-9]
df1 <- df1[which(df1$home_team == "Hong Kong" & df1$away_team == "Philippines"), ]
class(df1)

# Çözüm
## Veri Dosyasının okunması 
df <- read.csv('WomenFootballResults.csv' , header = T , sep = ",")
View(df)

## Belirli bir tarih aralığının bulunması için değiş değişkeni R'ın 
## içerisinde tanımlı tarih formatına çevrilmeli
class(df$date)
df$date <- as.Date(df$date , format = "%Y-%m-%d")

## Subset fonksiyonu ile belirlenen koşulların oluşturulması
## Lütfen subset deki parantezlere dikkat ediniz. 
sonuc <- subset(df , 
                select = c("date", "home_score" , "away_score" , "home_team" , "away_team") , 
                subset = (date > as.Date("1980-12-01") & date < as.Date("2019-12-31")) &
                  (home_team == "Hong Kong" & away_team == "Philippines"))
View(sonuc)



# Fonksiyonel Programlama
x <- "a"
y <- "b"
print(x)
print(x);print(y)
z <- cat("x =", x, "\ny =", y) 
class(z) # null

t <- paste("x =", x, "\ny =", y) # \n çalışmaz
class(t) # character

paste0("x =", x, "\ny =", y) # her şeyi dip dibe yazıyor

for(i in 1:10) {
  print(i)
} # 1 ve 10 dahil

for(i in 1:nrow(iris)) {
  print(iris$Species[i])
}
