# AruH Tools - Progressive Web App (PWA)

Eine installierbare Web-App, die alle AruH-Tools vereint. Läuft auf Android, iOS, Windows, Mac und Linux.

## 📦 Enthaltene Tools

- **Gebührenrechner**
- **SpedScan**
- **Lieferscanner**
- **Bestandsabgleich**
- **OSF Bestellung**
- **BildKonverter**
- **CSV Matcher**

*Hinweis: "MSG Datum ändern" ist nicht enthalten, da es eine Windows-EXE ist.*

## 🚀 Installation & Nutzung

### Hosting (GitHub Pages)
1. Laden Sie den Inhalt des Ordners `AruH_PWA` auf einen Webserver oder GitHub Pages hoch.
2. Öffnen Sie die URL im Browser (z.B. Chrome auf Android oder Safari auf iOS).

### Installation auf dem Gerät
- **Android (Chrome):** Tippen Sie auf das Menü (3 Punkte) -> "App installieren" oder "Zum Startbildschirm hinzufügen".
- **iOS (Safari):** Tippen Sie auf "Teilen" -> "Zum Home-Bildschirm".
- **Desktop (Chrome/Edge):** Klicken Sie auf das Installieren-Icon in der Adressleiste.

### Offline-Nutzung
Nach der ersten Installation funktioniert die App auch komplett ohne Internetverbindung.

## 🎨 Anpassungen

### Icons
Die Icons `icon-192.png` und `icon-512.png` fehlen noch (Platzhalter).
Bitte erstellen Sie zwei PNG-Bilder in diesen Größen und legen Sie sie in den Ordner, damit das App-Icon auf dem Homescreen korrekt angezeigt wird.

### Design
Das Design verwendet das gleiche grüne Farbschema (#93c01f) wie die Desktop-App und ist für mobile Geräte optimiert.

## 📁 Struktur

```
AruH_PWA/
├── index.html            # Haupt-Dashboard
├── styles.css            # Styling
├── manifest.json         # PWA Konfiguration
├── service-worker.js     # Offline-Funktionalität
└── apps/                 # Web-Tools
    ├── Gebuehrenrechner/
    ├── SpedScan/
    ├── ...
```
