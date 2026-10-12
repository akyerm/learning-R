# İstatistik Notları

## dağılımlar

- kesikli dağılımlar

  - bernoulli dağılımı

  - binom dağılımı

  - poission dağılımı

  - hipergeometrik dağılım

- sürekli dağılımlar

  - uniform dağılım

  - üstel dağılım

  - normal dağılım

### bernoulli dağılımı

tek denemede gerçekleşen olayların olasılığının hesaplanması, iki tane sonucu vardır: yazı tura gibi, ameliyat başarılı/başarısız olacak mı.

### binom dağılımı

bağımsız olarak n kez tekrarlanan bernoulli denemesidir: 50 kere yazı tura atmak, 30 farklı hastaya yapılan ameliyatlar başarılı/başarısız olacak mı gibi. deneyler süresince denek veya deneme sayısı değişmemeli; denemeler bağımsız olmalı ve her denemede iki olası sonuç olmalıdır.

### poisson dağılımı

belirli bir zaman aralığında/alanda/hacimde nadir veya bağımsız gerçekleşen olayların kaç kez meydana geldiğini modelleyen kesikli dağılımdır: bir acil servise 1 saatte kaç hasta gelir gibi. olaylar bağımsız, ortalama olay oranı sabit ve eşzamanlılık (iki olay aynı anda gerçekleşemez) yoktur.

### hipergeometrik dağılım

sonlu bir popülasyondan iadesiz **(çekilen şey tekrardan yerine koyulmuyor, her seçimde havuz küçülüyor ve seçim olasılıkları değişiyor)** seçim yapıldığında belirli bir başarı sayısını modelleyen kesikli olasılık dağılımıdır. **binom dağılımda iadeli bir seçim mümkünken (veya popülasyon sonsuzsa) seçilen geri koyulduğu için her denemede başarı şansı sabittir (bağımsız deneme).** örn: bir torbadan bulunan kırmızı-siyah-mavi toplar çekildikçe diğer topların çekilme olasılığı da değişiyor.

### uniform (tekdüze) dağılım

tüm olası sonuçlar tamamen eşit şansa sahiptir: zar attığında her bir sayının 1/6 olasılıkla gelmesi **(kesikli uniform),** 0 ile 10 aralığındaki sonsuz sayıdan herhangi birinin gelmesi **(sürekli uniform)** gibi.

### exponential (üstel) dağılım

bağımsız olayların meydana geldiği bir süreçte iki olay arasındaki bekleme süresi (veya mesafeyi) modelleyen sürekli olasılık dağılımıdır: acil servise gelen iki adet hastanın gelişi arasında geçen süre gibi. **poisson dağılımına benzer olup poisson dağılımı, belirli bir zaman aralığında gerçekleşen kaç adet olay olduğunu belirtirken (kesikli), üstel dağılımda bir sonraki olay için geçmesi gereken süre ölçülür (sürekli).**
