# Etkinlik haritası hazırlama

Bir etkinlik için haritaya salon iğneleri, kat planı ve program eklenebilir. Giriş gerekmez: paket tarayıcıda hazırlanır, zip olarak indirilir ve sitenin deposuna yüklenince yayına girer.

Örnek: https://mehmetakifakkus.github.io/sahneler/#odtu&etkinlik=ornek-kkm

## 1. Paketi hazırla

1. Düzenleme modunu aç: https://mehmetakifakkus.github.io/sahneler/?duzenle#odtu
2. Üstteki sarı çubukta **Etkinlik**'e bas.
3. Etkinlik adını, tarihleri ve kısa bir açıklamayı yaz.
4. **Mekân → Haritadan seç**'e bas ve binaya dokun (örneğin Kültür ve Kongre Merkezi).
5. **Genel program**: `.md` (metin), `.png`/`.jpg` (görsel) ya da `.pdf` dosyası seç.
6. **Kat planı ekle**: binanın plan görselini (PNG/JPG) yükle. Birden fazla kat olabilir.
7. **Salon ekle**, her salon için:
   - adını, rengini ve kısa açıklamasını yaz (örn. "1. kat · 400 kişilik"),
   - **Haritada işaretle**'ye bas ve haritada salonun yerine dokun,
   - programını seç (.md, .png, .jpg, .pdf),
   - kat planını seç ve plan görselinde salonun yerine tıkla.
8. İğneler haritada hemen görünür. Taslak bu tarayıcıda saklanır; sayfayı kapatıp açınca kaybolmaz.
9. **Paketi indir**'e bas: `etkinlik-<ad>.zip` iner.

## 2. Yayına al

- **Site sahibiysen:** zip'i aç. İçinden çıkan `etkinlik` klasörünü GitHub'da `sahneler` deposunun köküne sürükle (**Add file → Upload files**) ve kaydet.
- **Yardım eden kişiysen:** zip'i site sahibine gönder ya da depoya bir değişiklik isteği (pull request) aç.

Zip içinde `etkinlik/index.json` da vardır. Bu dosya güncel etkinlik listesidir; yüklenince etkinlik, bitiş tarihine kadar ODTÜ panelinde görünür.

Etkinlik bağlantısı şöyle olur: `https://mehmetakifakkus.github.io/sahneler/#odtu&etkinlik=<ad>`

## Program dosyası (.md) örneği

```
### Salon A

| Saat | Oturum | Konuşmacı |
|---|---|---|
| 10:00 | Açılış | Ad Soyad |
| 11:00 | Atölye | Ad Soyad |

Atölyeler için **ön kayıt** gerekir.
```

Başlık (`###`), madde (`-`), tablo, **kalın**, *italik* ve bağlantı (`[metin](https://...)`) kullanılabilir.

## Yayındaki bir etkinliği düzeltmek

1. Etkinliği düzenleme modunda aç: `https://mehmetakifakkus.github.io/sahneler/?duzenle#odtu&etkinlik=<ad>`
2. Üstteki etkinlik çubuğunda **Düzenle**'ye bas. Etkinlik, dosyalarıyla birlikte taslağa kopyalanır.
3. Salonları düzelt: adı, rengi, sırası (↑ ↓), haritadaki yeri (**Yeniden işaretle**), programı, kat planındaki yeri.
4. **Paketi indir**, zip'teki dosyaları depoda eskilerinin üzerine yükle.

Elinde zip varsa **Etkinlik → Paket yükle** ile de açabilirsin.
