# bu yorum satırı

# multine 
# için
# bir seçenek yok

var1 <- var2 <- var3 <- "hello"
minValue <- min(10, 12, 35)

paste(var1, var2, var3)
print(minValue)
paste(var1, " world!")

#####################################################################

# data types
tamSayi <- 10L # L integer olması için gerekli
sayi <- 10 # numeric olarak geçiyor
yazi <- "text" # character olarak geçiyor
mantiksal <- TRUE # boolean olarak geçiyor

paste(class(tamSayi), class(yazi), class(mantiksal)) # class = typeOf()

sayi2 <- as.numeric(tamSayi) # as.numeric() ile çevirebiliyoruz
paste(sayi2, class(sayi2))

test <- class(as.numeric(tamSayi)) # as.numeric() sayıyı da döndürüyor
paste(test, tamSayi)


# matematik
karekok <- sqrt(16) # karekok = 4
mutlakDeger <- abs(-1.4) # mutlakDeger = 1.4
usteYuvarlama <- ceiling(1.4) #usteYuvarlama = 2 
altaYuvarlama <- floor(1.4) #altaYuvarlama = 1

# string
string1 <- "hello"
string2 <- 'hello'
str <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."

str #yan yana direkt yazar
cat(str) #boşluklar aynı olacak şekilde yazar
nchar(string1) # length gibi 5 döner
grepl("he", string1) # TRUE döner
grepl("hx", string1) # FALSE döner

# escape character
string3 = "I watched \"Vikings\" recently."
print(string3) # "I watched \"Vikings\" recently." OLARAK DÖNER
cat(string3) # I watched "Vikings" recently. OLARAK DÖNER
# \\ backslash, \n yeni satır, \r carriage return, \t tab, \b backspace yapar

# booleans
boolean1 <- 9 == 10
boolean2 <- 9 != 10
paste(boolean1, boolean2)

#####################################################################

# operators
print(1 + 1)
print(1 - 1)
print(4 * 2)
print(3 / 1.2)
print(3^2)
print(15%%4) # modulus = bölümünden kalan, 3tür
print(15%/%6) # tam sayı bölmesi = bölümü küçük en yakın tam sayıya yuvarlar, 2.5'u 2ye yuvarlar

print(5 == 10) #false
print(5 != 10) #true
print(5 < 10) #ture
print(5 > 10) #false
print(5 >= 5) #true
print(5 <= 5) #true

# ELEMENWİSE OPERATÖRLER !! DİKKAT

print(5 < 10 & 10 > 11) # false
print(5 < 10 | 10 > 11) # true
print(!(5 < 10 & 10 > 11)) # true
print(!(5 < 10 | 10 > 11)) # false
# BURAYA KADAR AYNI.. İŞİN İÇİNE ÇOKLU ELEMANLAR, VEKTÖRLER GİRİNCE:

dizi1 <- c(TRUE, TRUE, FALSE)
dizi2 <- c(TRUE, FALSE, FALSE)

# --- 1. TEK SEMBOL (&, |): ELEMAN ELEMAN KARŞILAŞTIRMA ---
# Her elemanı karşılıklı olarak eşleştirir: 
# (TRUE & TRUE) -> TRUE
# (TRUE & FALSE) -> FALSE
# (FALSE & FALSE) -> FALSE
sonuc1 <- dizi1 & dizi2
sonuc2 <- dizi1 | dizi2
print(sonuc1)
print(sonuc2)
# Çıktı1: TRUE FALSE FALSE (3 elemanlı bir vektör döndü!)
# Çıktı2: TRUE TRUE FALSE (3 elemanlı bir vektör döndü!)


# --- 2. ÇİFT SEMBOL (&&, ||): SADECE İLK ELEMANI KARŞILAŞTIRMA ---
# Vektörlerin sadece 1. elemanlarını karşılaştırır: (a[1] && b[1]) yani (TRUE && TRUE)
sonuc3 <- dizi1 && dizi2
sonuc4 <- dizi1 || dizi2
print(sonuc3)
print(sonuc4)
# Çıktı: İKİSİ DE HATA VERİR. (ELDE BİRDEN FAZLA ELEMAN VARSA && ve || KULLANILMAZ.)


# MANTIKSAL OPERATÖRLER
print(5 < 10 && 10 > 11) #false
print(5 < 10 || 10 > 11) #true
print(!(5 < 10 || 10 > 11)) #true
print(!5 < 10) #false

varTest <- 1:10 # varTest = 1  2  3  4  5  6  7  8  9 10
print(class(varTest)) # integer

# x %in% y => y adlı vektörde x elemanını arar
# x <- Matrix1 %*% Matrix2, matriksleri çarpar

degisken <- 5 # klasik tanımlama, LOCAL OLARAK 5 atanır
18 -> degisken1 # ok ucu değerin atanacağı değişkeni gösterir
degisken2 <<- 14 # degisken2 GLOBAL OLARAK 14 olarak atanır
10 ->> degisken3 # degisken3 GLOBAL OLARAK 10 olarak atanır, sadece ok yönü ters.
paste(degisken, degisken1, degisken2, degisken3) # 5 8 14 10

#####################################################################

# if else
a <- 10
b <- 32

if (a > b) {
  print("a bden buyuk")
} else if (a == b){
  print("a bye esit")
} else {
  print("b adan buyuk")
}

#####################################################################

# while loop
i <- 1
while (i < 10) {
  i <- i + 1
  
  if (i == 8) {
    break
  } else if (i == 6) {
    next # 6 olduğunda alt satıra geçmez, konsola 6 yazılmaz.
  }
  
  print(i)
}

print("alala") # döngünün bitmesini bekler

# for loop, daha çok for in gibi çalışır
for (i in 1:5) { # 1:5 ifadesi R'da c(1, 2, 3, 4, 5) vektörünü hızlıca üretir.
  cat("Şu anki sayı:", i, "\n")
}

takimlar <- c("Galatasaray", "Fenerbahce", "Trabzonspor", "Besiktas")
for (takim in takimlar) {
  if (takim == "Besiktas") {
    break
  } else if (takim == "Trabzonspor") {
    next
  } else {
    cat("Analiz edilen takim:", takim, "\n")
  }
}

#####################################################################

# fonksiyonlar

fonksiyon1 <- function(isim = "varsayilan isim", soyisim = "varsayilan soyisim") {
  paste(isim, soyisim)
}

fonksiyon1("isim1", "soyisim1") #"isim1 soyisim1"
fonksiyon1("isim1") #"isim1 varsayilan soyisim"
fonksiyon1() #"varsayilan isim varsayilan soyisim"
fonksiyon1(soyisim = "soyisim2", isim = "isim2") #"isim2 soyisim2"
fonksiyon1(soyisim = "soyisim3") #"varsayilan isim soyisim3"

# RETURN ile
carp <- function(x, y) {
  return(x * y)
}

# SON SATIR OTOMATİK RETURN EDİLİYOR
carp_hizli <- function(x, y) {
  x * y #return (x*y) gibi
}

carp_hizli(3, 4)  # Çıktı: 12


# NESTED FUNCTIONS
carp_hizli(carp_hizli(3, 4), carp_hizli(5, 3)) # 12 * 15 = 180

functionA <- function(x) {
  functionB <- function(y) {
    return(x + y)
  }
  
  return(functionB)
}

functionA(1) #functionB kendisini döndürür;
paste((functionA(1))(5)) #6 döndürdü

functionC = functionA(1) #functionC = functionB eşit olmuş oluyor ama x = 1 halinde
functionC(10) #11 döndürür


# KENDİ KENDİNİ ÇAĞIRAN FONKSİYONLAR
testFunc <- function(x) {
  if (x <= 5) {
    y <- x + testFunc(x + 1)
    print(y)
  } else {
    y <- 5
    return(y)
  }
}

testFunc(1)

# [1] = 1 + testFunc(2) || 20
# [2] = 2 + testFunc(3) || 19
# [3] = 3 + testFunc(4) || 17
# [4] = 4 + testFunc(5) || 14
# [5] = 5 + testFunc(6) || 10
# ANCAK NEDEN 10,14,17,19,20 SIRASIYLA ÇIKIYOR:
# ÖNCE ÇÖZÜLEN FONKSİYON ÖNCE PRİNT EDİLİYOR. testFunc(6) İLK DÖNDÜĞÜ İÇİN 5 + 5 = 10 ÇIKIYOR.


# GLOBAL - LOCAL SCOPE
txt <- "1"

function1 <- function() {
  paste(txt)
}
function1() # "1" döner


function2 <- function() {
  txt <- "2"
  paste(txt)
}
function2() # "2" döner

function3 <- function() {
  txt1 <- "3"
  paste(txt1)
}

function3() # "3" döner
# paste(txt1) # DÖNMEZ ÇÜNKÜ TXT1 LOCAL SCOPE TANIMLI.

function4 <- function() {
  txt <<- "4"
  txt2 <<- "5"
  paste(txt2)
}

function4() # "5" döner
paste(txt2) # "5" DÖNER ÇÜNKÜ TXT2 GLOBAL SCOPE TANIMLI.
paste(txt) # "4" DÖNER ÇÜNKÜ TXTi SONRADAN İÇERİDE "4" OLARAK GLOBAL SCOPE TANIMLADIK.

#####################################################################

# vectors
# aynı tipte elemanların yer aldığı listeler
vector1 <- c("a", "b", "c", "d", "e", "f") # c = combine
vector2 <- c("a", 2, TRUE) # aynı tipte veri koymazsan bütün elemanları metne dönüştürüyor
vector3 <- c(1:10) # 1:10 = 1den 10a kadar
vector4 <- c(1.5:4.5) #1.5, 2.5, 3.5, 4.5
vector5 <- c(1.5:6.2) #1.5, 2.5, 3.5, 4.5, 5.5
vector6 <- seq(from = 0, to = 200, by = 15) # 0'dan 200'e 15er arttırarak oluşan vektör

elemanSayisi <- length(vector1)
siraliVektor1 <- sort(vector1) # alfabetik olarak sıralar
siraliVektor2 <- sort(vector3) # sayısal olarak küçükten büyüğe sıralar

paste(vector1[1]) # "a" döner, JS aksine elemanlar 0. değil 1. eleman olarak başlar
paste(vector1[c(1, 5)]) # 1. ve 5. eleman, a ve e döner;
paste(vector1[-1]) #1. eleman hariç döner = b,c,d,e,f
paste(vector1[-2]) #2. eleman hariç döner = a,c,d,e,f
paste(vector1[c(-1, -3)]) #1. ve 3. eleman hariç döner = b,d,e,f

vector1[6] <- "g" # 6. elemanı g ile dönüştürüyoruz
paste(vector1) # a,b,c,d,e,g

repeated_each <- rep(c(1,2,3), each = 3) # 1,1,1,2,2,2,3,3,3
repeated_times <- rep(c(1,2,3), times = 3) # 1,2,3,1,2,3,1,2,3
repeated_indepent <- rep(c(1,2,3), times = c(2,3,1)) # 1,1,2,2,2,3

print(vector6 + 3) # BÜTÜN DEĞERLERE 3 EKLER.
print(vector6 * 3) # BÜTÜN HEPSİNİ 3 İLE ÇARPAR.
print(vector6 / 15) # BÜTÜN HEPSİNİ 15E BÖLER.
print(vector6 < 40) # DEĞERİ 40TAN AZ OLANLARI TRUE YAPACAK ŞEKİLDE VEKTÖRÜ DÜZENLER.

# UZUN YOL
filtreVector <- vector6 < 40 # DEĞERİ 40TAN AZ OLANLARI FİLTRELER.
filtrelenmisVector <- vector6[filtreVector] 
print(filtrelenmisVector) 

# KISA YOL
print(vector6[vector6 < 40]) 

#####################################################################

# lists
# değişik veri tipleri yer alabilir.

list1 <- list("a", "b", "c", "d")
print(list1[2]) # b döner

list2 <- list(
  name = "Joe",
  surname = "Doe",
  age = 19,
  heartRate = c(68, 70, 73, 66),
  isAlive = TRUE
)

print(list2$name) # "Joe"
print(list2[3]) # BİR LİSTE HALİNDE 19 DÖNER ANCAK MATEMATİKSEL İŞLEM YAPAMAZSIN.
# print(list2[3] + 3) # HATA VERİR.
print(list2[[3]]) # BİR SAYI HALİNDE 19 DÖNER, MATEMATİKSEL İŞLEM YAPABİLİRSİN
print(list2[[3]] + 3) # 22 DÖNER

class(list2[[3]])

list2$job <- "Doctor" # meslek olarak doctor ekledik listeye
print(list2) 


list1[2] <- "e"
print(list1) # a, e, c, d döner

print(length(list1)) # 4 döner

print("a" %in% list1) # true döner
print("f" %in% list1) # false döner

append(list1, "f") #a,e,c,d,f döner
append(list1, "f", after = 2) # a,e,f,c,d döner

append(list1, "f") # DİKKAT: LİST1İ DEĞİŞTİRMEZ. list1.push(element) GİBİ ÇALIŞMAZ.
print(list1) # DİKKAT: a,e,c,d döner

list1 <- append(list1, "f") # DİKKAT: LİST1İ DEĞİŞTİRİR.
print(list1) # DİKKAT: a,e,c,d,f döner

newList1 <- list1[-1] # 1. elemanı silerek yeni bir liste oluşturur
print(newList1) # e,c,d,f döner

newList2 <- list1[2:4] # 2. 3. VE 4. ELEMANLARI alarak yeni bir liste oluşturur
print(newList2) # e,c,d döner

combinedList <- c(newList1, newList2)
print(combinedList) # e,c,d,f,e,c,d döner


for (element in newList2) {
  print(element) # e,c,d
}

#####################################################################

# matrices
# satır ve sütünlardan oluşan iki boyutlu vektör
# aynı veri tipi olmak zorunda

matrix0 <- matrix(1:6, nrow = 3, ncol = 2, byrow = TRUE) # NORMALDE ÖNCE SÜTUN DOLDURULUR ANCAK byrow = TRUE İLE ÖNCE SATIR DOLDURULUYOR
matrix1 <- matrix(1:6, nrow = 3, ncol = 2) # 1'den 6'ya 3 satır 2 sütunlu matrix
print(matrix1[1, 2]) # matrixin 1. satırının 2. sütunundaki eleman == 4 döner
print(matrix1[1,]) # matrixin 1. satırı döner = 1 ve 4
print(matrix1[, 1]) # matrixin 1. sütunu döner = 1, 2, 3
print(matrix1[c(1, 2),]) # matrixin 1. ve 2. satırı döner = 1, 4 ve 2, 5
print(matrix1[, c(1, 2)]) # matrixin 1. ve 2. sütunu döner = 1, 2, 3 ve 4, 5, 6

newMatrix1 <- cbind(matrix1, c(7:9)) # totalde row sayısı kadar eleman ekleyebilirsin
print(newMatrix1) # matrix1e yeni bir sütun ekler ve 7'dan 9'a ekler

newMatrix2 <- rbind(matrix1, c(7, 8)) # totalde col sayısı kadar eleman ekleyebilirsin
print(newMatrix2) # matrix1e yeni bir satır ekler ve 7, 8i ekler

print(colSums(matrix1)) # sütunların toplamını verir, 1+2+3 = 6, 4+5+6 = 15
print(rowSums(matrix1)) # satırların toplamını verir, 1+4 = 5, 2+5= 7, 3+6 = 9

matrix1 <- matrix1[-c(1), -c(1)] # 1. SATIR VE 1. SÜTUNU SİLER
# matrix1 <- matrix1[c(-1), c(-1)] # AYNISI: 1. SATIR VE 1. SÜTUNU SİLER
# NOT: EĞER SATIR SÜTUNLAR SİLİNCE 1 SATIR VEYA SÜTUN KALIRSA MATRİKS OLMAKTAN ÇIKIP VEKTÖR OLUYOR
matrix1 <- matrix1[-c(1), -c(1), drop = FALSE] # 1. SATIR VE 1. SÜTUNU SİLER
# NOT: drop = FALSE SAYESİNDE MATRİKS OLARAK KALMAYA DEVAM EDER.

print(matrix1) # 5,6 döner

print(5 %in% matrix1) # TRUE
print(8 %in% matrix1) # FALSE

matrix2 <- matrix(c(1:6), nrow = 2, ncol = 3)
dim(matrix2) # 2, 3 döner
nrow(matrix2) # 2 döner
ncol(matrix2) # 3 döner
length(matrix2) # 6 döner

for (rowID in 1:nrow(matrix2)) {
  for (colID in 1:ncol(matrix2)) {
    print(matrix2[rowID, colID]) # bütün elemanlar dönecek
  }  
}

matrix3 <- matrix(c("elma", "armut", "muz", "havuc", "karpuz", "kavun"), nrow = 2, ncol = 3)
matrix4 <- matrix(c(1:6), nrow = 2, ncol = 3)
combinedMatrix <- cbind(matrix3, matrix4) # YENİ SÜTUNLAR OLARAK EKLER. SATIR SAYILARI AYNI OLMALI
combinedMatrix2 <- rbind(matrix3, matrix4) # YENİ SATIRLAR OLARAK EKLER. SÜTUN SAYILARI AYNI OLMALI
# AYRICA AYNI MATRİXE SOKULMAYA ÇALIŞILAN MATRİXLER AYNI TİP VERİ İÇERMEDİĞİ İÇİN
# HEPSİ CHARACTERE DÖNÜŞTÜRÜLÜYOR.
print(combinedMatrix)
print(combinedMatrix2)

#####################################################################

# arrays
# matrixlerin 3 veya daha fazla boyutlu halleridir
# aynı tip veriler omak zorunda

array1 <- array(c(1:24), dim = c(4,3,2)) # 2 ADET 4X3LÜK MATRİX
print(array1[3, 2, 1]) # SATIR, SÜTUN, BOYUT, 7 döner
print(array1[3,,]) # 1. SATIRDAKİ VERİLERİ DÖNER
print(array1[, 2, ]) # 2. SÜTUNDAKİ VERİLERİ DÖNER
print(array1[, , 2]) # 2. BOYUTTAKİ VERİLERİ DÖNER
print(array1[, , c(1,2)]) # 2. BOYUTTAKİ VERİLERİ DÖNER

print(23 %in% array1) # TRUE
print(29 %in% array1) # FALSE

print(dim(array1)) # 4, 3, 2 döner
print(length(array1)) # 24 döner

for (x in array1) {
  print(x) # 1'den 24'e yazar
}

#####################################################################

# data frames
# farklı veri tipleri içerebilen 2 boyutlu tablo

dataFrame1 <- data.frame(
  names = c("ahmet", "mehmet", "veli"),
  ages = c(13, 43, 27),
  meanHR = c(70, 93, 66)
)

summary(dataFrame1) # dataFrame1 'i istatistiksel özetler
print(dataFrame1["names"]) # DATA FRAME TÜRÜNDE DÖNER
print(dataFrame1[["names"]]) # VERİNİN TİPİ İLE DÖNDÜRÜR, ÖRN: CHARACTER
print(dataFrame1[1]) # DATA FRAME TÜRÜNDE DÖNER
print(dataFrame1$names) # VERİNİN TİPİ İLE DÖNDÜRÜR, ÖRN: CHARACTER

print(dim(dataFrame1)) # 3, 3 DÖNER
print(nrow(dataFrame1)) # 3 DÖNER
print(ncol(dataFrame1)) # 3 DÖNER
print(length(dataFrame1)) # 9 DEĞİL: SÜTUN SAYISINI DÖNDÜRÜR = 3
 
newDataFrame1 <- rbind(dataFrame1, c("ayse", 67, 86))
print(newDataFrame1) # ayse kişisi ekleniyor
newDataFrame1 <- cbind(newDataFrame1, risk = c(50, 35, 45, 65))
print(newDataFrame1) # risk sütunu ekleniyor

newDataFrame2 <- newDataFrame1[-1, -1]; # İSİM SÜTUNUNU VE AHMET SATIRINI SİLER
print(newDataFrame2)
# DİKKAT: EĞER 1 SATIR VEYA 1 SÜTUN KALIRSA DİZİ ÖZELLİĞİNİ YİTİRMEZ, yine de drop = FALSE yapılabilir

dataFrame2 <- data.frame(
  names = c("ahmet", "mehmet", "veli"),
  ages = c(13, 43, 27)
)

dataFrame3 <- data.frame(
  steps = c(3000, 4000, 5000),
  pulse = c(130, 150, 110)
)

dataFrame4 <- data.frame(
  names = c("ayse", "emine", "elif"),
  ages = c(11, 53, 32)
)

combinedDataFrame <- cbind(dataFrame2, dataFrame3) # SÜTUNLARI EKLER, 4 SÜTUN OLUR
print(combinedDataFrame)

combinedDataFrame2 <- rbind(dataFrame2, dataFrame4) # SATIRLARI EKLER, 6 SATIR OLUR
print(combinedDataFrame2)

#####################################################################

# factors

genre1 <- factor(c("Klasik", "Rock", "Jazz", "Pop"))
print(genre1)
print(genre1[3])
print(levels(genre1))
print(length(genre1))

genre1[3] <- "Hiphop" # BU ÇALIŞMIYOR ÇÜNKÜ OLUŞTURULAN LEVELLARDA HİPHOP YOK
genre1[3] <- "Pop" # BU ÇALIŞIR ÇÜNKÜ OLUŞTURULAN LEVELARDA POP VAR
print(genre1[3])

genre2 <- factor(c("Klasik", "Rock", "Jazz", "Pop"), levels = c("Klasik", "Rock", "Hiphop", "Digerleri"))
print(levels(genre2))

genre2[3] <- "Hiphop" # BU ÇALIŞIR ÇÜNKÜ OLUŞTURULAN LEVELLARDA HİPHOP VAR
print(genre2[3])

# ORDER MANTIĞI
dozaj <- c("orta", "dusuk", "yuksek", "dusu")
dozaj_faktor <- factor(dozaj, ordered = TRUE, levels = c("dusuk", "orta", "yuksek"))

print(dozaj_faktor) 
print(dozaj_faktor[1] > dozaj_faktor[2]) # "orta > düşük" mü? Çıktı: TRUE

#####################################################################
