# 🧭 Minecraft-Koordinatenrechner – Stadt Karlsruhe 1:1

Dieses Tool hilft dabei, reale GPS-Koordinaten (bzw. Kartenpunkte) der Stadt Karlsruhe in Minecraft-Koordinaten im Maßstab **1:1** umzurechnen. Ziel ist es, die Stadt Karlsruhe möglichst originalgetreu im Spiel nachzubauen.

## 🌍 Projektziel
Unsere Minecraft-Welt basiert auf realen Daten. Die **Pyramide am Marktplatz Karlsruhe** ist der **Ursprungspunkt (Nullpunkt)** der Minecraft-Welt:

- 📍 GPS: `49.0092426, 8.4039090`
- 🎮 Minecraft: `X: 0, Z: 0, Y: 64`

Die Karte nutzt **OpenStreetMap** und **OpenTopoMap** zur Darstellung, und zieht Geländehöhen über die API von [OpenTopodata](https://www.opentopodata.org/).

## 🧮 Umrechnungsformeln

### X- und Z-Koordinaten
Die Umrechnung erfolgt basierend auf der mittleren Erdbogenlänge pro Längengrad/Breitengrad in Metern.

### Y-Koordinate (Höhe)
Die Höhe (Y) wird aus der echten Geländehöhe berechnet mit:

```
Minecraft-Y = Reale Höhe in m - 51
```

Beispiel:
- Reale Höhe 115 m über NN → Y: 64
- Reale Höhe 140 m über NN → Y: 89

## 📦 Verwendung

### Lokal öffnen
1. Diese HTML-Datei `karlsruhe-mc-koordinatenrechner.html` herunterladen.
2. In einem Browser öffnen (PC oder Smartphone).
3. Auf eine Stelle in Karlsruhe klicken → Es werden GPS-Koordinaten, Minecraft-Koordinaten & Höhe angezeigt.

### Online über GitHub Pages
Alternativ kann die Datei im Ordner `/docs` liegen und über GitHub Pages veröffentlicht werden:
```txt
https://vivbling.github.io/RevelationPlusPlus/koordinatenrechner.html
```

## 📱 Mobile Nutzung
Die HTML-Datei kann auch mobil genutzt werden:
- Am iPhone über Safari (Dateien-App → „In Safari öffnen“)
- Auf Android direkt im Chrome-Browser

## 📌 Verwendete Technologien
- Leaflet.js (OpenStreetMap-Integration)
- OpenTopoMap
- OpenTopodata Elevation API
- Vanilla JS & HTML

## 🤝 Mitwirkende
- Projektidee & Umsetzung: Milchmann77 & [ViVBling](https://github.com/vivbling)
- GitHub Repository & Mod-Verwaltung: [@vivbling](https://github.com/vivbling)
