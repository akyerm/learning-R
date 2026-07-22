#####################################################################

# statistics

veriSeti <- mtcars # R içinde bulunan 1974 Motor Trend US Magazine ait veriler

?mtcars # veriler hakkında bilgi verir
dim(mtcars) # 32x11 boyutunda bir veri = 32 satır, 11 sütun
names(mtcars) # sütunların isimlerini verir (11 adet)
rownames(mtcars) # satırların isimlerini verir (32 adet)
summary(mtcars) # istatistikse olarak mtcars verisini özetler

cylinders <- mtcars$cyl
print(cylinders) # arabalara ait silindir verileri
sort(cylinders) # silindir verilerini sıralar
 
range(mtcars$wt) # min ve max. değerleri döner
minWeight <- min(mtcars$wt) # min. 1513 lbs
maxWeight <- max(mtcars$wt) # min. 5424 lbs
which.min(mtcars$wt) # kaçıncı indexin en az ağırlığa = 1513'e sahip olduğunu gösteriyor
which.max(mtcars$wt) # kaçıncı indexin en fazla silindire = 5424'e sahip olduğunu gösteriyor
rownames(mtcars)[which.min(mtcars$wt)] # Lotus Europa en hafif araç
rownames(mtcars)[which.max(mtcars$wt)] # Lincoln Continental 710 en ağır araç

meanWeight <- mean(mtcars$wt, na.rm = TRUE) # na.rm = true olduğunda eksik verileri görmezden gelinir
medianWeight <- median(mtcars$wt) # medianı bulur
table(mtcars$wt) # frekans tablosudur, böylece mod bulunabilir
names(sort(table(mtcars$wt), decreasing = TRUE)[1]) # mod bulma 
names(sort(-table(Data_Cars$wt)))[1] # w3schools önerisi

var(mtcars$wt) # varyansı verir, değerlerin ortalamadan ne kadar saptığının karesi
sd(mtcars$wt) # standart sapmayı verir, varyansın karekökü
quantile(mtcars$wt) # quartilleri verir
quantile(mtcars$wt, c(0.75)) # %75. - 3. quartil = 3.610 lbs
quantile(mtcars$wt, c(0.25, 0.75)) # %25. - 1. quartil = 2.58125 ve %75. - 3. quartil = 3.610 lbs
