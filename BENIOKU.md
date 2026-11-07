# İzometrik Şehirler: yerel kopya

İçerik: `index.html` (sayfa), `cities.json`, `istanbul/` (2 bakış), `kizilay/` (4 bakış), `odtu/` (4 bakış).
Her şehirde `features.json` (bina ve yer bilgileri), her bakışta `ids.webp` (tıklanan binayı bulmak için) bulunur.

## Açmak için

Tarayıcılar `file://` ile açılan sayfanın yanındaki dosyaları okumasına izin vermez. Bu yüzden
`index.html`'e çift tıklamak yerine klasörde küçük bir yerel sunucu başlat:

```bash
cd izometrik_site
python3 -m http.server 8000
```

Sonra tarayıcıda http://localhost:8000 adresini aç. Kızılay için http://localhost:8000/#kizilay, ODTÜ için http://localhost:8000/#odtu

Kısayol: macOS'ta `sunucu.command` dosyasına çift tıkla (ilk seferde engellenirse sağ tık > Aç). Linux'ta `bash sunucu.sh`, Windows'ta `sunucu.bat`.

Aynı ağdaki başka bir cihazdan (telefon gibi) açmak için `http://<bu-bilgisayarın-IP'si>:8000` kullan.

## Yer bilgileri

- Bir binaya ya da alana tıkla: adı, türü, kat ve yükseklik, saatler, web, telefon, yakındaki yerler.
- Paneldeki arama kutusu: "kütüphane", "yurt", "kafeterya" gibi yaz, sonuca tıkla.
- "Yerler" çipleri kategorilere göre etiketleri açıp kapatır (ODTÜ'de hepsi açık başlar).
- ODTÜ kantinleri, ATM’ler, duraklar, dükkânlar ve anıtlar da aranabilir; bir binanın kartında "Bu binada" altında içindeki yerler listelenir. Veriyi tazelemek için `odtu_yerler_indir.sh`.

## Fotoğraf ve video

Sağ üstteki **+ / −** düğmelerinin altındaki kamera simgesine bas; "Fotoğraf ve video" penceresi açılır.

- **Fotoğraf (PNG):** 2×, 3× ya da 4× ekran çözünürlüğünde görüntü alır (ör. 1400 px genişlikte bir ekranda 4× = 5600 px). Ayrıntılı karolar yüklenene kadar birkaç saniye bekler.
- **Video (4 sn):** Sabit, Yakınlaş, Kaydır ya da Süzül hareketiyle 4 saniyelik video kaydeder. Chrome, Edge ve Safari'de MP4, Firefox'ta WebM çıkar; uzun kenar en fazla 1920 px.
- **Etiketleri ekle** işaretliyse yer adları da görüntüye işlenir. Görüntünün köşesine OpenStreetMap atfı eklenir.

## Yer adlarını kendin düzenlemek (düzenleme modu)

1. Sayfayı adresin sonuna `?duzenle` ekleyerek aç: `https://sahneler.netlify.app/?duzenle#odtu`
   (yerelde `http://localhost:8000/?duzenle#odtu`). Üstte sarı "Düzenleme modu" çubuğu çıkar.
2. Bir binaya tıkla: adını, kategorisini, kat sayısını ve kısa bir açıklamayı yaz, **Kaydet**.
   Boş bir yere tıkla: oraya yeni bir yer (durak, giriş, kantin…) ekle.
3. Değişiklikler önce yalnızca senin tarayıcında saklanır. Herkes görsün diye **Dışa aktar**'a bas;
   inen `edits.json` dosyasını sitedeki şehir klasörüne koy (ODTÜ için `odtu/edits.json`) ve klasörü Netlify'a yeniden sürükle.
4. Başka bir bilgisayarda devam etmek için **İçe aktar** ile aynı dosyayı yükle. **Çık** düzenleme modunu kapatır.

İpucu: Kalıcı ve herkesin işine yarayan düzeltmeleri openstreetmap.org'a da girebilirsin; bir sonraki veri indirmede haritaya kendiliğinden gelir.

## Notlar

- WebGL2 destekleyen güncel bir tarayıcı gerekir (Chrome, Firefox, Safari, Edge).
- Yazı tipleri Google Fonts'tan yüklenir; internet yoksa sistem yazı tipleri kullanılır, sayfa yine çalışır.
- Herhangi bir statik sunucuya (nginx, Caddy, GitHub Pages, Netlify) olduğu gibi kopyalanabilir.
- Harita verisi © OpenStreetMap katkıcıları (ODbL).
