#####################################################################

# graphics

plot(1, 5) # x=1, y=5 'e nokta koyuyor
plot(c(2, 3), c(5, 8)) # x=2,y=5 ve x=3,y=8 'e nokta koyuyor

x <- seq(0, 105, 5) 
y <- seq(0, 63, 3)

plot(x, y) # nokta nokta 
plot(x, y, type = "l") # çizgi çizer

# SCATTER PLOT - SAÇILIM / DAĞILIM GRAFİĞİ
xEkseni1 <- c(5, 6, 9, 10, 12)
yEkseni1 <- c(101, 103, 105, 106, 93)
  
xEkseni2 <- c(15, 23, 11, 32, 22)
yEkseni2 <-c(100, 95, 105, 108, 100)

plot(
  xEkseni1, # x ekseni
  yEkseni1, # y ekseni
  type = "p", # p <- nokta, l <- çizgi, b <- hem nokta hem çizgi
  pch = 25, # 0'dan 25'e kadar değişen nokta şekillerini ayarlama
  cex = 0.5, # nokta boyutlarını ayarlar, 1 standart - 2 = x2, 0.5 = x0.5
  col = "red", # nokta/çizgi rengi
  main = "Sacilim Grafiği", # grafiğin adı
  xlab = "x ekseni",  # x ekseninin adı
  ylab = "y ekseni", # y ekseninin adı
  xlim = c(0, 35), # X eksenini 0 ile 35 arasına açtık (xEkseni2 sığsın diye)
  ylim = c(90, 110), # Y eksenini 90 ile 110 arasına açtık (yEkseni2 sığsın diye)
)

points(xEkseni2, yEkseni2, pch = 14, cex = 1, col = "blue")

# LINE - ÇİZGİ GRAFİĞİ
xEkseni3 <- c(1:5)
cizgi1 <- c(3, 5, 7, 0, 13)
cizgi2 <- c(1, 6, 4, 1, 4)

cizgiGrafik <- plot(
  xEkseni3, # x ekseni
  cizgi1, # y ekseni
  type = "l", # p <- nokta, l <- çizgi, b <- hem nokta hem çizgi
  lty = 3, # 0'dan 6'ya değişen çizgi şekillerini ayarlama
  lwd = 0.5, # çizgi boyutlarını ayarlar, 1 standart - 2 = x2, 0.5 = x0.5
  col = "red", # nokta/çizgi rengi
  main = "Cizgi Grafiği", # grafiğin adı
  xlab = "x ekseni",  # x ekseninin adı
  ylab = "y ekseni" # y ekseninin adı
)

lines(xEkseni, cizgi2, type = "l", lty = 6, lwd = 1, col = "blue")

# BAR - SÜTUN GRAFİĞİ
xEkseni4 <- c("A", "B", "C", "D")
yEkseni4 <- c(14, 21, 30, 16)
barplot(
  yEkseni4, # yükseklikleri belirtir
  names.arg = xEkseni4, # sütunların isimlerini belirtir
  col = "darkgreen", # sütunların renklerini belirtir
  #density = 3, # sütun dokusunun yoğunluğunu belirtir
  width = c(1, 2, 3, 4), # sütunların genişliklerini belirtir
  horiz = FALSE, # = TRUE <- grafiği yatay yapar
  xlab = "x ekseni",
  ylab = "y ekseni",
  main = "Sutun Grafigi"
)


# PİE - PASTA GRAFİĞİ
data1 <- c(10, 20, 30, 40)
labels <- c("Elma", "Kiraz", "Muz", "Visne")
colors <- c("red", "blue", "yellow", "purple")

pie(
  data1, # veriler
  label = labels, # veri isimleri / etiketler
  col = colors, # renkler
  init.angle = 90, # NORMALDE 0 DERECE, SAAT 3 YÖNÜNDE, SAATİN TERSİ YÖNÜNDEN GRAFİĞE EKLER.
  clockwise = TRUE, # NORMALDE SAATİN TERSİ YÖNÜNDEN, SAAT 3 YÖNÜNDEN BAŞLAYARAK GRAFİĞE EKLER.
  main = "Turta Grafigi"
)

# LEJANT EKLEME
legend(
  x = "bottomright", # nereye konumlandırılacağı
  legend = labels, # veri isimleri / etiketler
  fill = colors, # varsa kutucukların rengi - pie
  #col = colors, # varsa çizgi / noktaların renkleri - scatter/line 
  #pch = c(2, 3, 4, 5), # varsa noktaların şekilleri - scatter
  #lty = c(0, 1, 2, 3), # varsa çizgi şekilleri - line
  title = "Gruplar"
)
