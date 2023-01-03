# Zenity ile Gzip Komutu Görsel Arayüzü

Linux Araçları ve Kabuk Programlama dersi için verilen dönem projesidir.
Virtual Box Ubuntu üzerinden Linux Bash Script dili ile görsel arayüz olarak Zenity Kütüphanesi GUI kullanılarak oluşturulmuştur. 
## Kullanılan Teknolojiler
- Bash Script
- Zenity
## Gzip Komutu Nedir?
Gzip, orijinal dosya formatını, sahipliğini ve zaman çizelgesini korurken dosya boyutunu azaltıp bir dosyayı sıkıştırmanıza izin veren bir sıkıştırma aracıdır. Orijinal dosya, .gz uzantısıyla biten sıkıştırılmış dosya ile değiştirilir.
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
## Uygulamanın Amacı
Gzip komutu parametreleri kullanılarak seçilen dosyanın .gz uzantılı biçimde sıkıştırılması veya sıkıştırılmış dosyanın açılması.
## Uygulama Nasıl Kullanılır?

