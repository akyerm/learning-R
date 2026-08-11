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
