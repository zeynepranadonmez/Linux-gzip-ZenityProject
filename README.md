# Zenity ile Gzip Komutu Görsel Arayüzü
Linux Araçları ve Kabuk Programlama dersi için verilen dönem projesidir.
Virtual Box Ubuntu üzerinden Linux Bash Script dili ile görsel arayüz olarak Zenity Kütüphanesi GUI kullanılarak oluşturulmuştur. Uygulamanın detaylı anlatım videosuna en aşağıda bulunan linkten ulaşabilirsiniz.
## Kullanılan Teknolojiler
- Bash Script
- Zenity
## Gzip Komutu Nedir?
Gzip, orijinal dosya formatını, sahipliğini ve zaman çizelgesini korurken dosya boyutunu azaltıp bir dosyayı sıkıştırmanıza izin veren bir sıkıştırma aracıdır. Orijinal dosya, .gz uzantısıyla biten sıkıştırılmış dosya ile değiştirilir.
## Uygulamanın Amacı
Gzip komutu parametreleri kullanılarak seçilen dosyanın .gz uzantılı biçimde sıkıştırılması veya sıkıştırılmış dosyanın açılması. Sıkıştırılmış olan dosyaların sıkıştırma oranının yüzdelik olarak verilmesi. Sıkıştırılmış ve sıkıştırılmamış dosyaların boyutunun öğrenilmesi.
## Gerekli Kurulumlar
Terminal üzerinden verilen komutlar sırasıyla çalıştırılır.
- sudo apt-get update
- sudo apt-get install zenity
- sudo apt-get install gzip
## Projede Kullanılan Gzip Komutu Parametreleri
- gzip : Tek bir dosyayı sıkıştırmak için kullanılır. 
- gzip-k : Dosyayı sıkıştırıp orijinal dosyayı saklamak için kullanılır.
-	gzip-v : Dosyayı sıkıştırıp, sıkıştırma oranı ve işlenmekte olan dosyaların isimlerini görmek için kullanılır.
-	gzip-d : Sıkıştırılmış bir dosyayı açmak için kullanılır.  
-	gzip-dk : Sıkıştırılmış bir dosyayı açıp, sıkıştırılmış dosyanın orijinal halini saklamak için kullanılır. 
-	gzip-l : Sıkıştırılmış dosyanın adını, sıkıştırma oranını, sıkıştırılmış ve sıkıştırılmamış boyutunu görmek için kullanılır.
## Uygulama Nasıl Kullanılır?
- İlk olarak terminal ekranı açılır ve ./proje.sh ile uygulama çalıştırılır.

![1](https://user-images.githubusercontent.com/80089931/210430532-71c7a068-895b-4077-b955-727ea36cb7c0.png)

- Uygulama başlatıldığında bir dosya seçileceğie dair bilgiledirme ekranı gelir. Ok butonuna basılır.

![2](https://user-images.githubusercontent.com/80089931/210430572-7d068df6-defe-408c-b3b4-630754b74d1f.png)

- Açılan ekrandan bir dosya seçilir ve ok butonuna basılır. Uygulama anlatımı için test1.sh dosyası seçilmiştir.

![3](https://user-images.githubusercontent.com/80089931/210430585-a32d811a-94e9-44ca-a600-39c8bad04fe9.png)

- Açılan penceredeki seçenekler bölümünde verilen komutların açıklamalarına bakılarak dosyaya yapılmak istenen işlem seçilir. test1.sh dosyası için gzip komutu seçildi.

![4](https://user-images.githubusercontent.com/80089931/210430594-819ca1a1-b091-4b28-93df-a1f3ab9e562a.png)

- Gzip komutunun seçilip sıkıştırıldığına dair bir bilgilendirme mesajı gelir.

![5](https://user-images.githubusercontent.com/80089931/210430604-0b52bd84-b918-4ba0-a964-403dac4df0b0.png)

- Dosyalar kontrol edildiğinde test1.sh dosyasının sıkıştırılıp test1.sh.gz dosyasına dönüştürüldüğü görülür.

![6](https://user-images.githubusercontent.com/80089931/210430631-eea70281-a8d6-4c38-9427-997707a3f2e0.png)

- Yeni bir dosyada işlem yapabilmek için yeniDosyaSeç seçeneğine tıklanılır ve bir dosya seçilir. Sıkıştırılmış dosyanın ayıklama işleminin yapılabilmesi için test1.sh.gz dosyası seçildi. Yine aynı pencereden gzip -dk komutu seçilip dosyanın ayıklanması ve sıkıştırılmış dosyanın saklı tutulması sağlandı.

![4](https://user-images.githubusercontent.com/80089931/210430594-819ca1a1-b091-4b28-93df-a1f3ab9e562a.png)

- Yapılan işlemler için bir bilgilendirme mesajı gelir.

![7](https://user-images.githubusercontent.com/80089931/210430641-923f5f7f-78a7-4811-bc08-d15cd6265671.png)

- Dosyalar kontrol edildiğinde test1.sh.gz dosyasının ayıklanıp test1.sh dosyasına dönüştürüldüğü ve orijinal olan test1.sh.gz dosyasınında saklandığı görülür.

![8](https://user-images.githubusercontent.com/80089931/210430649-4b193f51-9179-463c-bc8e-6d857f5ee130.png)

- Uygulamadan çıkış yapmak için açılan pencereden çıkış seçeneği seçilir.

![4](https://user-images.githubusercontent.com/80089931/210430594-819ca1a1-b091-4b28-93df-a1f3ab9e562a.png)

- Başarılı bir şekilde programdan çıkış yapıldığına dair bir bilgilendirme mesajı gelir.

![9](https://user-images.githubusercontent.com/80089931/210430657-0b3905d7-4f09-4227-afbf-0db2178b0269.png)

- Aynı işlemler tekrarlanarak açılan pencerede seçenekler halinde verilen tüm gzip komutları başarılı bir şekilde çalıştırılabilir. Uygulamanın detaylı anlatım videosunun linki aşağıda verilmiştir.

## Uygulamanın Detaylı Anlatım Videosu





