ans= $(zenity --info --title "Bilgilendirme" \
    --width=250 \
    --height=150 \
	--text "Programa hoşgeldiniz. Ok tuşuna basınız. Ardından işlem yapmak istediğiniz dosyayı seçiniz." \
)

FILE=`zenity --file-selection --title="Lütfen dosyayı seçiniz."` 

case $? in
         0)
                echo "\"$FILE\" seçildi.";;
         1)
                echo "Dosya seçilmedi.";;
        -1)
                echo "Beklenmeyen bir hata oluştu.";;
esac

sayac=1
while [ $sayac == 1 ]
do

secim=$(zenity --list --title="Dosya Sıkıştırma / Ayıklama" \
	--text "Lütfen yapmak istediğiniz işlemi seçiniz." \
    --column="Seçenekler"  --column="Açıklama" \
    --width 700 \
	--height 320 \
	gzip "Dosyayı sıkıştırma" \
	gzip-k "Dosyayı sıkıştırıp orijinal dosyanın saklanması" \
	gzip-v "Dosyayı sıkıştırıp sıkıştırma oranı ve işlenmekte olan dosyaların isimlerinin terminal ekranına yazdırılması" \
	gzip-d "Dosyayı ayıklama" \
	gzip-dk "Dosyayı ayıklayıp sıkıştırılmış dosyanın saklanması" \
	gzip-l "Sıkıştırılmış dosyanın adını, sıkıştırma oranını, sıkıştırılmış ve sıkıştırılmamış boyutunun başarılı bir şekilde terminal ekranına yazdırılması" \
	çıkış "Programdan çıkış yapma" \
	yeniDosyaSeç "Üzerinde işlem yapılabilecek yeni bir dosya seçme" \ 
)

i=0

  echo $secim	
  if [[ $secim = 'yeniDosyaSeç' ]]
  then

  	FILE=`zenity --file-selection --title="Lütfen dosyayı seçiniz."` 
	case $? in
			0)
					echo "\"$FILE\" seçildi.";;
			1)
					echo "Dosya seçilmedi.";;
			-1)
					echo "Beklenmeyen bir hata oluştu.";;
	esac

  elif [[ $secim = 'gzip' ]]
  then

	gzip $FILE

	zenity --info --title "gzip komutu seçildi." \
    --width 250 \
	--height 50 \
	--text "$FILE başarılı bir şekilde sıkıştırıldı."

	sleep 1

  elif [[ $secim = 'gzip-k' ]]
  then

	gzip -k $FILE

 	zenity --info --title "gzip -k komutu seçildi." \
    --width 250 \
	--height 50 \
	--text "$FILE başarılı bir şekilde sıkıştırıldı. Orijinal dosya saklandı."
	
	sleep 1
	  	
  elif [[ $secim = 'gzip-v' ]]
  then

  	echo "---------------------------------------------------------------------------"
	echo "Sıkıştırma oranı ve işlenmekte olan dosyaların isimleri:"
	echo "---------------------------------------------------------------------------"
	  
	gzip -v $FILE

 	zenity --info --title "gzip -v komutu seçildi." \
    --width 150 \
	--height 80 \
	--text "$FILE başarılı bir şekilde sıkıştırıldı. Sıkıştırma oranı ve işlenmekte olan dosyaların isimleri terminal ekranına yazdırıldı."
	
	sleep 1

  elif [[ $secim = 'gzip-d' ]]
  then

	gzip -d $FILE 	
 	
	zenity --info --title "gzip -d komutu seçildi." \
    --width 250 \
	--height 50 \
	--text "$FILE başarılı bir şekilde ayıklandı."
	
	sleep 1

  elif [[ $secim = 'gzip-dk' ]]
  then

	gzip -dk $FILE 
 	
	zenity --info --title "gzip -dk komutu seçildi." \
    --width 250 \
	--height 50 \
	--text "$FILE başarılı bir şekilde ayıklandı. Sıkıştırılmış dosya saklandı."
	  
	sleep 1

  elif [[ $secim = 'gzip-l' ]]
  then

	echo "---------------------------------------------------------------------------"
	echo "Sıkıştırılmış dosyanın adı, sıkıştırma oranı, sıkıştırılmış ve sıkıştırılmamış boyutu:"
	echo "---------------------------------------------------------------------------"
	
	gzip -l $FILE 
 	
	zenity --info --title "gzip -l komutu seçildi." \
    --width 150 \
	--height 80 \
	--text "$FILE uzantılı sıkıştırılmış dosyanın adını, sıkıştırma oranını, sıkıştırılmış ve sıkıştırılmamış boyutu başarılı bir şekilde terminal ekranına yazdırıldı."
	
	sleep 1
	
  elif [ $secim == 'çıkış' ]
  then
 	
	zenity --info --title "Bilgilendirme" \
    --width 200 \
	--height 30 \
	--text "Programdan çıkış yapıldı."
	
	sleep 1
	
	exit
  fi
done
