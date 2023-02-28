<!-- README.md is generated from README.Rmd. Please edit that file -->

# izmir

![izmir_logo](https://user-images.githubusercontent.com/33122288/221560558-b9bf8ad0-003f-44c3-8a18-0366ab195663.png)



This package is developed to access the datasets in [İzmir Open Data Portal](https://acikveri.bizizmir.com/)

## Installation

You can install the package from CRAN.

```
install.packages("izmir")
```

You can also install the package from GitHub.

```
remotes::install_github("ozancanozdemir/izmir")
```

## Usage and Examples

```
> library(izmir)
Welcome to izmir package!
This is an unofficial R package for Izmir Municipality Open Data Portal.
For more information, you can visit https://acikveri.bizizmir.com/
``` 

The package has three main functions. You can list the all datasets by using ```list_data_names()``` 

```
> list_data_names()

  [1] "izmir-ili-arac-sayim-verileri"                                                 
  [2] "evde-saglik-ve-bakim-hizmeti-sayilari"                                         
  [3] "izmir-ulasim-merkezi-tarafindan-gerceklestirilen-cekici-hizmeti-verileri"      
  [4] "ana-arterler-gunluk-hiz-ve-sure-verileri"                                      
  [5] "izmir-ili-arizali-kazali-arac-verileri"                                        
  [6] "su-uretiminin-aylara-ve-kaynaklara-gore-dagilimi"                              
  [7] "kablosuz-internet-baglanti-noktalari"                                          
  [8] "maskematik-noktalari"                                                          
  [9] "muhtarliklar"                                                                  
 [10] "semt-pazar-yerleri"                                                            
 [11] "afet-ve-acil-durum-toplanma-alanlari"                                          
 [12] "taksi-durak-bilgileri"                                                         
 [13] "gunluk-su-uretimi"                                                             
 [14] "itfaiye-egitim-hizmetleri"                                                     
 [15] "nobetci-eczaneler-ve-eczane-listesi"                                           
 [16] "kultur-sanat-etkinlikleri"                                                     
 [17] "askida-fatura-rakamlari"                                                       
 [18] "barajlarin-doluluk-oranlari"                                                   
 [19] "askida-kitap"                                                                  
 [20] "halkin-bakkali-siparisi-alinan-paket-miktarlari"                               
 [21] "askida-izmirim-kart"                                                           
 [22] "balik-hal-fiyatlari"                                                           
 [23] "sebze-ve-meyve-hal-fiyatlari"                                                  
 [24] "hava-kalitesi-olcum-degerleri"                                                 
 [25] "asik-veysel-rekreasyon-alani-buz-pisti-kullanici-verileri"                     
 [26] "bademsu-fabrikasi-uretim-verileri"                                             
 [27] "kablosuz-internet-wizmirnet"                                                   
 [28] "yapilan-sosyal-yardimlar"                                                      
 [29] "enfektif-atik-tartim-bilgileri"                                                
 [30] "mezbaha-kesim-adetleri"                                                        
 [31] "sut-yardimi"                                                                   
 [32] "izmir-buyuksehir-belediyesine-sosyal-yardim-basvurulari"                       
 [33] "itfaiye-acil-mudahale-sayilari"                                                
 [34] "yillara-gore-yolcu-ve-arac-tasima-sayilari"                                    
 [35] "otopark-ucretleri"                                                             
 [36] "izmir-depremi-ortak-akil-bulusmasi"                                            
 [37] "toplum-sagligi-egitimleri"                                                     
 [38] "trafik-kameralari"                                                             
 [39] "izmir-su-fabrikasi-uretim-verileri"                                            
 [40] "kruvaziyer-gemi-bilgileri"                                                     
 [41] "turizm-bilgilendirme-ofisleri-konum-verisi"                                    
 [42] "izelman-kitap-kafe-konum-verisi"                                               
 [43] "metro-ve-tramvay-sefer-planlama"                                               
 [44] "co2-emisyon-degerleri-ton-ve-bir-milyon-yolcu-basina-co2-miktari"              
 [45] "metro-ve-tramvay-enerji-tuketimi"                                              
 [46] "bisikletli-giris-sayilari"                                                     
 [47] "halk-ekmek-fabrikasi-uretim-verileri"                                          
 [48] "akilli-tuvaletler"                                                             
 [49] "moduler-tuvaletler"                                                            
 [50] "yiyecek-icecek-bufeleri"                                                       
 [51] "izmir-buyuksehir-belediye-baskanliginin-hissedari-oldugu-sirketlerin-bilgileri"
 [52] "izmir-buyuksehir-belediyesi-yillik-resmi-gun-ve-haftalik-kutlama-programlari"  
 [53] "izmir-stratejik-gurultu-haritasi"                                              
 [54] "mudahale-edilen-sokak-hayvanlarina-ait-veriler"                                
 [55] "sahiplendirilen-sokak-hayvanlarina-ait-veriler"                                
 [56] "muayene-edilen-sokak-hayvanlarina-ait-veriler"                                 
 [57] "kisirlastirilan-sokak-hayvanlari"                                              
 [58] "lisanssiz-gunes-enerji-santralleri-listesi"                                    
 [59] "akaryakit-ve-veya-otogaz-satis-istasyonu-sayisi"                               
 [60] "korfez-degerleri-izleme"                                                       
 [61] "izdeniz-vapurlari"                                                             
 [62] "kutuphaneler"                                                                  
 [63] "bergama-elektrik-uretim-verileri"                                              
 [64] "elektrik-uretim-verileri"                                                      
 [65] "depolama-sahalari"                                                             
 [66] "tibbi-atik-tesisleri"                                                          
 [67] "cocuk-ve-genclik-merkezleri-cogem"                                             
 [68] "masalevleri"                                                                   
 [69] "hos-geldin-bebek-basvuru-listesi"                                              
 [70] "cocuk-kesif-atolyeleri-merkezi"                                                
 [71] "izmir-banliyo-izban-duraklar-arasi-mesafeler"                                  
 [72] "izban-elektrik-tuketimi"                                                       
 [73] "yillik-ilce-bazinda-abone-sayilari"                                            
 [74] "hava-kalitesi-olcum-istasyonlari-konum-verisi"                                 
 [75] "izmir-buyuksehir-belediyesi-performans-gostergeleri"                           
 [76] "insaat-atiklari-depolama-tesisleri"                                            
 [77] "tren-garlari"                                                                  
 [78] "izmirim-kart-basvuru-merkezleri"                                               
 [79] "korfez-degerleri-izleme-istasyonlari-konum-verisi"                             
 [80] "izmir-buyuksehir-belediyesine-yapilan-staj-basvurulari"                        
 [81] "yeni-kurs-talebinde-bulunan-kursiyer-adayi-sayilari"                           
 [82] "meslek-fabrikasi-kurslarina-yapilan-basvurular"                                
 [83] "meslek-fabrikasi-kursiyer-verileri"                                            
 [84] "ilk-abonelik-su-ve-kanal-baglama-gerceklesme-sureleri"                         
 [85] "yillik-ilce-bazli-su-tuketim-miktarlari"                                       
 [86] "kadin-danisma-merkezi-verilen-hizmet-detay-verisi"                             
 [87] "ulasim-ucret-tarifeleri"                                                       
 [88] "yillik-tarife-bilgileri-artislari"                                             
 [89] "bisiklet-altyapi-haritasi"                                                     
 [90] "meslek-fabrikasi-kurs-merkezleri"                                              
 [91] "yillik-mahalle-bazli-su-tuketimi"                                              
 [92] "bolge-bazli-aboneden-alinan-dilekcelerin-kapanma-sureleri"                     
 [93] "izmir-buyuksehir-belediyesi-mali-yili-kesin-hesaplari"                         
 [94] "izmir-buyuksehir-belediyesi-mali-yili-butceleri"                               
 [95] "tarimsal-destekler"                                                            
 [96] "halkin-bakkali"                                                                
 [97] "spor-ekipmani-destegi-verilen-okul-sayisi"                                     
 [98] "halk-ekmek-bufeleri-satis-noktalari"                                           
 [99] "izmirim-kart-bakiye-sorgulama"                                                 
[100] "izelman-otopark-lokasyon-kapasite-ve-calisma-saati-verisi"                     
[101] "meslek-fabrikasinin-actigi-kurslar"                                            
[102] "izelman-anaokullari-konum-verisi"                                              
[103] "mezbaha-adres-ve-konum-verileri"                                               
[104] "metro-istayonlari"                                                             
[105] "izmir-tramvay-hatlari-ve-istasyonlari"                                         
[106] "izmir-metro-tramvay-durak-mesafeleri"                                          
[107] "metro-hareket-saatleri-sefer-sikliklari"                                       
[108] "tramvay-seferleri"                                                             
[109] "izdeniz-vapur-iskeleleri"                                                      
[110] "vapur-hareket-saatleri"                                                        
[111] "arabali-vapur-anlik-arac-kapasite-bilgileri"                                   
[112] "izban-istasyonlari"                                                            
[113] "izban-banliyo-hareket-saatleri"                                                
[114] "bisim-istasyonlari"                                                            
[115] "sonuclanan-ihale-bilgileri"                                                    
[116] "zirai-ambalaj-atiklarinin-toplanmasi"                                          
[117] "kestane-kanseri-ile-mucadele-destegi"                                          
[118] "izmir-akademi"                                                                 
[119] "kamu-kurum-ve-kuruluslari"                                                     
[120] "eshot-otobus-duraklari"                                                        
[121] "baglanti-noktalarindan-gecen-otobus-hat-listesi"                               
[122] "yarimada-zeytin-yolu-gezi-rotalari"                                            
[123] "maskematik-satis-adetleri"                                                     
[124] "toplu-ulasim-genel-binis-raporu"                                               
[125] "yarimada-bag-yolu-gezi-rotalari"                                               
[126] "yarimada-yuruyus-ve-bisiklet-yolu-gezi-rotalari"                               
[127] "ariza-kaynakli-duzensiz-su-kesintileri"                                        
[128] "tesisler-ve-atiksu-miktarlari"                                                 
[129] "kadin-siginmaevi-istatistikleri"                                               
[130] "izmir-deprem-senaryosu-ve-deprem-master-plani"                                 
[131] "toplu-ulasim-gtfs-verileri"                                                    
[132] "sokak-hayvanlarina-dagitilan-mama-miktari"                                     
[133] "onemli-yerler-listesi"                                                         
[134] "bisikletli-yaya-sayim-istasyonlari"                                            
[135] "kuzey-guney-alani-park-sayilari"                                               
[136] "transfer-istasyonlari"                                                         
[137] "kucukbas-hayvan-dagitimi"                                                      
[138] "hayvan-icme-suyu-his-goletleri-calismalari-ve-projeleri"                       
[139] "noktaya-yakin-duraklar"                                                        
[140] "izmirim-kart-dolum-noktalari"                                                  
[141] "muzeler-antik-kentler-ve-tarihi-yerler"                                        
[142] "ilce-ve-mahallelere-ait-yol-sayilari"                                          
[143] "ilcelere-ait-mahalle-bazli-bina-sayilari"                                      
[144] "izsu-sube-ve-vezne-bilgileri"                                                  
[145] "arac-muayene-istasyonlari"                                                     
[146] "otobus-gidis-yonune-gore-hatta-ait-duraklar"                                   
[147] "gunes-enerjisi-santrali-ges-projesi-kapsaminda-elde-edilen-sonuclar"           
[148] "izmir-elektrikli-otobus-projesinin-urettigi-cevresel-degerler"                 
[149] "baraj-ve-kuyular"                                                              
[150] "cevre-ilce-merkezlerinin-analiz-sonuclari"                                     
[151] "otobus-hatlarinin-diger-ulasim-araclari-ile-baglanti-tipleri"                  
[152] "otobus-hareket-saatleri"                                                       
[153] "hijyen-malzemesi-yardimi"                                                      
[154] "maske-dagitimi"                                                                
[155] "baraj-su-kalite-raporlari"                                                     
[156] "otobus-hatti-arama"                                                            
[157] "otobus-hattina-ait-duyurular"                                                  
[158] "duraktan-gecen-otobusler"                                                      
[159] "yemek-yardimi"                                                                 
[160] "izban-banliyo-fiyat-tarifesi-servisi"                                          
[161] "otopark-doluluk-ve-lokasyon-bilgileri"                                         
[162] "turuncu-cember-rakamlari"                                                      
[163] "aricilik-desteginin-yillara-gore-ilce-ve-mahallere-dagilimi"                   
[164] "yemek-corba-pide-kumanya-destegi"                                              
[165] "itfaiye-gruplari"                                                              
[166] "cografi-yer-sekilleri"                                                         
[167] "kent-cekim-merkezleri"                                                         
[168] "havaalanlari"                                                                  
[169] "sehirlerarasi-terminaller"                                                     
[170] "saglik-kurumlari"                                                              
[171] "sosyal-hizmet-merkezleri"                                                      
[172] "kultur-ve-sanat-merkezleri"                                                    
[173] "egitim-kurumlari"                                                              
[174] "haftalik-analiz-sonuclari"                                                     
[175] "otobus-hat-guzergahlari"                                                       
[176] "otobus-duragi-arama-web-servisi"                                               
[177] "otobus-durak-bilgisi"                                                          
[178] "eshot-otobus-hat-listesi"                                                      
[179] "izmir-ulasim-rehberi"                                                          
[180] "tek-tikla-doktor-basvurusu-destegi-sayilari"                                   
[181] "su-kayiplari-yillik-raporlari"    
```
You can get the data that you would like to have using ```get_data_from_izmir(data_name)``` 

```
> get_data_from_izmir("izmir-ili-arac-sayim-verileri")
# A tibble: 11,441 x 8
   TARIH ANA_ARTER_ADI     ISTIKAMET    BASLAMA BITIS ARAC_SAYISI EK_SERIT ACIKLAMA
   <dbl> <chr>             <chr>          <dbl> <dbl>       <dbl>    <dbl> <chr>   
 1 44058 Yeşildere Caddesi Konak Merkez   0.333 0.354        1462        0 NA      
 2 44058 Yeşildere Caddesi Gaziemir       0.75  0.771        1908        0 NA      
 3 44059 Yeşildere Caddesi Konak Merkez   0.333 0.354         574        0 NA      
 4 44059 Yeşildere Caddesi Gaziemir       0.75  0.771        1398        0 NA      
 5 44060 Yeşildere Caddesi Konak Merkez   0.333 0.354        1224        0 NA      
 6 44061 Yeşildere Caddesi Gaziemir       0.75  0.771        2594        0 NA      
 7 44062 Yeşildere Caddesi Konak Merkez   0.333 0.354        1287        0 NA      
 8 44062 Yeşildere Caddesi Gaziemir       0.75  0.771        2434        0 NA      
 9 44063 Yeşildere Caddesi Konak Merkez   0.333 0.354        1411        0 NA      
10 44063 Yeşildere Caddesi Gaziemir       0.75  0.771        2555        0 NA      
# ... with 11,431 more rows
# i Use `print(n = ...)` to see more rows
``` 
You can search the data by using ```search_data_by_keyword(key_word).```

```
>search_data_by_keyword("doktor")
[1] "tek-tikla-doktor-basvurusu-destegi-sayilari"
``` 


