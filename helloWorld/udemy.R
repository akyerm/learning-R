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
