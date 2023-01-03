# Zenity ile Gzip Komutu Görsel Arayüzü
## Özet
Linux Araçları ve Kabuk Programlama dersi için verilen dönem projesidir.
Virtual Box Ubuntu üzerinden Linux Bash Script dili ile görsel arayüz olarak Zenity Kütüphanesi GUI kullanılarak oluşturulmuştur. 
## Gzip Komutu Nedir?
Gzip, orijinal dosya formatını, sahipliğini ve zaman çizelgesini korurken dosya boyutunu azaltıp bir dosyayı sıkıştırmanıza izin veren bir sıkıştırma aracıdır. Orijinal dosya, .gz uzantısıyla biten sıkıştırılmış dosya ile değiştirilecektir.
## Zenity ve Gzip Nasıl Kurulur?
sudo apt-get update
sudo apt-get install zenity
sudo apt-get install gzip
## Projede Kullanılan Gzip Komutu Parametreleri:
- gzip : Tek bir dosyayı sıkıştırmak için kullanılır. 
- gzip-k : Dosyayı sıkıştırıp orijinal dosyayı saklamak için kullanılır.
-	gzip-v : Dosyayı sıkıştırıp, sıkıştırma oranı ve işlenmekte olan dosyaların isimlerini görmek için kullanılır.
-	gzip-d : Sıkıştırılmış bir dosyayı açmak için kullanılır.  
-	gzip-dk : Sıkıştırılmış bir dosyayı açıp, sıkıştırılmış dosyanın orijinal halini saklamak için kullanılır. 
-	gzip-l : Sıkıştırılmış dosyanın adını, sıkıştırma oranını, sıkıştırılmış ve sıkıştırılmamış boyutunu görmek için kullanılır.

## Kullanılan Teknolojiler
- Bash Script
- Zenity

