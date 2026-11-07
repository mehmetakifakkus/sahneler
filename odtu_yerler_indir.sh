#!/usr/bin/env bash
# ODTÜ kampüsündeki nokta yerleri (kafe, ATM, durak, eczane, kütüphane girişi, müze, spor tesisi…) indirir.
# Binaların kendisi zaten odtu_1…4.json içinde; bu dosya haritaya "nokta" bilgileri ekler.
# Alan: 39.880–39.903 K, 32.768–32.798 D
# Çıktı: odtu_yerler.json  (tek parça, genelde 1 MB'tan küçük)
# Kullanım:  bash odtu_yerler_indir.sh

B="39.880,32.768,39.903,32.798"
f="odtu_yerler.json"
SERVERS=(https://overpass.kumi.systems/api/interpreter https://overpass.private.coffee/api/interpreter https://overpass-api.de/api/interpreter)
valid() { [ -s "$1" ] && head -c 50 "$1" | grep -q '"version"'; }

if valid "$f"; then echo "$f zaten var."; exit 0; fi
Q="[out:json][timeout:120];(
node[\"amenity\"]($B);node[\"shop\"]($B);node[\"tourism\"]($B);node[\"leisure\"]($B);node[\"office\"]($B);
node[\"highway\"=\"bus_stop\"]($B);node[\"public_transport\"]($B);node[\"railway\"~\"station|subway_entrance|halt\"]($B);
node[\"healthcare\"]($B);node[\"craft\"]($B);node[\"historic\"]($B);node[\"sport\"]($B);
node[\"entrance\"][\"name\"]($B);node[\"name\"][!\"highway\"]($B);
);out body;"
for try in 1 2 3 4 5 6; do
  srv=${SERVERS[$(( (try-1) % 3 ))]}
  echo "$f: $srv deneniyor (deneme $try/6)…"
  curl -s -A "odtu-render/1.0 (kisisel proje)" -o "$f" --data-urlencode "data=$Q" "$srv"
  if valid "$f"; then echo "$f tamam ($(du -h "$f" | cut -f1)) — sohbete ekleyebilirsin."; exit 0; fi
  rm -f "$f"; echo "sunucu cevap vermedi, 20 sn sonra tekrar"; sleep 20
done
echo "İndirilemedi; birkaç dakika sonra tekrar çalıştır."
