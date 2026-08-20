# Pixelasia Productions Dili — Website

Website für [Pixelasia Productions Dili](https://www.pixelasia-dili.com), die einzige Full-Service-Film- und Eventproduktionsfirma in Timor-Leste. Gegründet 2011 von Lena Lenzen.

---

## Links

| Was | URL |
|-----|-----|
| **Live-Seite** | [cute-sprite-83682f.netlify.app](https://cute-sprite-83682f.netlify.app/) |
| **CMS (Admin)** | [cute-sprite-83682f.netlify.app/admin/](https://cute-sprite-83682f.netlify.app/admin/) |
| **Netlify Dashboard** | [app.netlify.com/projects/cute-sprite-83682f](https://app.netlify.com/projects/cute-sprite-83682f) |
| **GitHub Repo** | [github.com/d4hb8myrcf-cmyk/https-www.pixelasia-dili.com-](https://github.com/d4hb8myrcf-cmyk/https-www.pixelasia-dili.com-) |
| **Geplante Domain** | pixelasia-dili.com (DNS-Umstellung noch ausstehend) |

---

## Tech-Stack

| Komponente | Technologie |
|------------|-------------|
| Hosting | [Netlify](https://www.netlify.com/) (kostenloser Plan) |
| Build | [Eleventy (11ty)](https://www.11ty.dev/) v3 — Static Site Generator |
| CMS | [Decap CMS](https://decapcms.org/) (ehemals Netlify CMS) |
| Template | `index.njk` (Nunjucks) |
| CSS | `style.css` — Custom Properties, responsive |
| Fonts | System-Fonts (Arial, Helvetica, sans-serif) |
| Facebook | Facebook Page Plugin (SDK v21.0) |
| Bilder | **WebP** (konvertiert mit cwebp, Qualität 80) |

---

## ⚠️ KRITISCH: Webseite, CMS und Daten IMMER synchron halten

> **Jede Änderung an der Webseite MUSS gleichzeitig an ALLEN DREI Stellen gemacht werden:**
>
> 1. **Template** (`index.njk`) — Was auf der Seite angezeigt wird
> 2. **CMS-Config** (`admin/config.yml`) — Welche Felder im CMS editierbar sind
> 3. **Datendateien** (`_data/*.json`) — Die eigentlichen Inhalte
>
> **Wenn diese drei nicht übereinstimmen, ist die Seite kaputt!**
>
> ### Checkliste bei JEDER Änderung:
>
> | Änderung an… | Dann auch anpassen: |
> |---|---|
> | Template (`index.njk`) | → `admin/config.yml` + `_data/*.json` |
> | CMS-Config (`config.yml`) | → `index.njk` + `_data/*.json` |
> | Datendatei (`_data/*.json`) | → `index.njk` + `admin/config.yml` |
>
> ### Beispiele aus der Vergangenheit (was schiefgehen kann):
>
> - **Gallery**: Template zeigt **6 Bilder**, aber `gallery.json` hatte **10 Einträge** → 4 Bilder wurden geladen aber nie angezeigt (verschwendete Bandbreite)
> - **Facebook-Widget**: Im Template ist es mit der Gallery in EINER Sektion kombiniert, aber das README beschrieb sie als getrennte Sektionen → Verwirrung bei der Wartung

---

## ⚠️ KRITISCH: Bilder und WebP-Format

> **Alle Bilder auf der Seite sind im WebP-Format.** Die Datendateien (`_data/*.json`) verweisen auf `.webp`-Dateien.
>
> ### Was passiert, wenn man Bilder über das CMS hochlädt?
>
> Das CMS (Decap) speichert Bilder im Original-Format (JPG/PNG). Das funktioniert — die Seite zeigt sie an — aber die Performance-Optimierung geht verloren.
>
> ### Workflow bei neuen Bildern:
>
> 1. Bild über CMS hochladen (geht als JPG/PNG nach `images/`)
> 2. **Danach manuell in WebP konvertieren:**
>    ```bash
>    cwebp -q 80 images/neues-bild.jpg -o images/neues-bild.webp
>    ```
> 3. In der entsprechenden `_data/*.json` den Pfad von `.jpg` auf `.webp` ändern
> 4. Committen und pushen
>
> ### Maximale Bildbreiten:
>
> | Bild-Typ | Max. Breite | Grund |
> |---|---|---|
> | Logos (Header) | 572px | Anzeige bei 286px, 2× für Retina |
> | Hero-Logo | 840px | Anzeige bei 420px, 2× für Retina |
> | Gallery-Bilder | 1200px | Volle Breite auf Desktop |
> | Service-Bilder | 800px | Karten-Layout |
> | Team-Bild | 1000px | Grid-Layout ~490px, 2× für Retina |
>
> **Keine Bilder über 1200px Breite hochladen!** Ein 3000px-Bild für eine 400px-Anzeige verschlechtert den PageSpeed-Score massiv.

---

## Projektstruktur

```
├── index.njk                 # Haupttemplate (Nunjucks) — Eleventy baut daraus index.html
├── style.css                 # Stylesheet (wird 1:1 kopiert nach _site/)
├── _headers                  # Netlify HTTP-Headers (CSP, Security, Cache)
├── eleventy.config.js        # Eleventy-Konfiguration (Passthrough, Markdown-Filter)
├── netlify.toml              # Netlify Build-Konfiguration
├── package.json              # Dependencies (Eleventy, markdown-it)
│
├── _data/                    # Inhalte (werden vom CMS bearbeitet)
│   ├── site.json             # Globale Einstellungen (Firma, Kontakt, URLs)
│   ├── about.json            # "WE MAKE IT" Sektion
│   ├── portfolio.json        # Portfolio Sektion
│   ├── story.json            # Our Story Sektion
│   ├── services.json         # Services + Karten
│   ├── facebook.json         # Facebook Widget Einstellungen
│   ├── gallery.json          # Bildergalerie (6 Bilder)
│   └── customSections.json   # Benutzerdefinierte Sektionen
│
├── admin/                    # Decap CMS
│   ├── index.html            # CMS-Login-Seite
│   └── config.yml            # CMS-Konfiguration (Felder, Collections)
│
├── images/                   # Bilder (lokal, WebP-optimiert)
│   ├── logo-purple.webp / logo-white.webp / logo-horizontal.webp
│   ├── logo-3d.webp
│   ├── favicon-*.png / apple-touch-icon.png  (Favicons bleiben PNG)
│   ├── og-image.jpg                          (OG-Image bleibt JPG für Social Media)
│   ├── gallery-01.webp … gallery-06.webp     (6 Gallery-Bilder)
│   ├── service-creative.webp / service-events.webp / service-radio.webp
│   ├── team.webp / story.webp
│   └── *.jpg / *.png                         (Originale als Backup)
│
├── robots.txt                # SEO
├── sitemap.njk               # Sitemap-Template
├── textaenderungen.pdf       # Dokumentation der Textänderungen
├── briefing.md               # Original-Briefing
│
├── index.html                # ⚠️ Statische Alternativversion (wird NICHT deployed)
├── css/style.css             # ⚠️ Stylesheet der Alternativversion
├── js/main.js                # ⚠️ JS der Alternativversion
└── design-reference.html     # Design-Referenz/Prototyp
```

> **Hinweis:** `index.html`, `css/style.css` und `js/main.js` gehören zu einem alternativen "Clean Modern"-Design, das derzeit **nicht** deployed wird. Netlify baut aus `index.njk` via Eleventy.

---

## Seitenstruktur (index.njk)

Die Seite ist ein Onepager mit folgenden Sektionen:

| # | Sektion | Hintergrund | Datenquelle |
|---|---------|-------------|-------------|
| 1 | Header/Navigation | Weiß | `site.json` |
| 2 | Hero (Logo-Banner) | Lila | `site.json` |
| 3 | About / "WE MAKE IT" | Weiß | `about.json` |
| 4 | Portfolio | Lila | `portfolio.json` |
| 5 | Our Story | Weiß | `story.json` |
| 6 | Services (Intro) | Lila | `services.json` |
| 7 | Service Cards | Weiß | `services.json` |
| 8 | **Custom Sections** ➕ | Wählbar (weiß/lila) | `customSections.json` |
| 9 | **Latest from Pixelasia** (Facebook-Widget + 6 Gallery-Bilder) | Weiß | `facebook.json` + `gallery.json` |
| 10 | Contact | Lila | `site.json` |
| 11 | Footer | Dunkel | `site.json` |

> **Hinweis:** Facebook-Widget und Gallery-Bilder sind in EINER Sektion ("Latest from Pixelasia") kombiniert. Desktop: Widget links, 6 Bilder rechts im 2×3-Grid. Mobile: Widget oben, Bilder darunter. Das Template zeigt **maximal 6 Bilder** aus `gallery.json`.

---

## CMS nutzen

1. Gehe zu **[/admin/](https://cute-sprite-83682f.netlify.app/admin/)**
2. Einloggen (Netlify Identity)
3. Im Menü links die gewünschte Sektion auswählen und bearbeiten
4. „Publish" klicken → Netlify baut die Seite automatisch neu (dauert ~30 Sekunden)

### Custom Sections hinzufügen

Unter **➕ Custom Sections** im CMS:
1. „Add Section" klicken
2. **Heading**: Überschrift der neuen Sektion
3. **Content**: Text mit dem Markdown-Editor (fett, kursiv, Links, Listen möglich)
4. **Background Color**: Weiß oder Lila wählen
5. Publish → Die neuen Sektionen erscheinen zwischen den Service Cards und "Latest from Pixelasia"

### Facebook Feed anpassen

Unter **📄 Page Sections → Facebook Feed** im CMS:
- **Section Heading**: z.B. "Latest from Pixelasia"
- **Plugin Height**: Höhe in Pixeln (Standard: 600)
- **Show Timeline / Cover / Facepile**: Ein/Aus-Schalter

### Gallery-Bilder ändern

Unter **📄 Page Sections → Gallery** im CMS:
- Bilder hinzufügen/entfernen/umsortieren
- **Maximal 6 Bilder** — das Template zeigt nur die ersten 6 an
- ⚠️ **Nach dem Upload:** Bilder manuell in WebP konvertieren (siehe Abschnitt oben)

---

## PageSpeed-Optimierung (umgesetzt)

Folgende Optimierungen wurden durchgeführt, um den Mobile-Score von 80 auf ~93-96 zu bringen:

### 1. Bilder (Einsparung ~2,8 MB)
- Alle Bilder in **WebP** konvertiert (Qualität 80)
- Überdimensionierte Logos verkleinert (z.B. `logo-purple.png` von 11811px → 572px: **348 KB → 12 KB**)
- `fetchpriority="high"` auf dem LCP-Element (Hero-Logo)
- `loading="lazy"` auf allen Below-the-fold-Bildern
- `width` und `height` Attribute auf allen `<img>`-Tags

### 2. Render-Blocking beseitigt (Einsparung ~1.270ms)
- **Critical CSS** inline im `<style>`-Tag (Header, Hero, Basis-Layout)
- **Vollständiges Stylesheet** per `<link rel="preload">` asynchron geladen
- **Netlify Identity Widget** von synchron auf `defer` umgestellt

### 3. Cache-Header (Repeat-Visits)
- `Cache-Control: public, max-age=31536000, immutable` für alle statischen Assets
- Konfiguriert in `_headers`

---

## Facebook Page Plugin

Das Facebook Page Plugin zeigt die neuesten Beiträge der [Pixelasia Facebook-Seite](https://www.facebook.com/Pixelasia/) direkt auf der Website.

**Technische Details:**
- SDK: `connect.facebook.net/en_US/sdk.js` (v21.0, async geladen)
- `data-adapt-container-width="true"` für responsive Anpassung
- Maximale Breite: 500px (Facebook SDK-Limit)
- CSP-Headers in `_headers` erweitert für: `connect.facebook.net`, `facebook.com`, `fbcdn.net`

---

## Deployment

**Netlify** baut die Seite automatisch bei jedem Push auf `main`:

1. `npm install` — Dependencies installieren
2. `npx @11ty/eleventy` — Eleventy baut `_site/` aus Templates + Daten
3. Netlify veröffentlicht den `_site/`-Ordner

**Workflow für Code-Änderungen:**
1. Dateien bearbeiten (`index.njk`, `style.css`, `_data/*.json`, `admin/config.yml`)
2. Committen und auf `main` pushen
3. Netlify baut und deployed automatisch (~30 Sekunden)

**Workflow für Content-Änderungen:**
1. CMS unter `/admin/` öffnen
2. Inhalte bearbeiten
3. "Publish" klicken → CMS committet nach GitHub → Netlify baut automatisch

---

## SEO

- **Schema Markup:** Organization, LocalBusiness, Service (×3)
- **Open Graph + Twitter Cards** vollständig
- **Canonical:** `https://www.pixelasia-dili.com`
- **Favicon:** PNG-Formate (16x16, 32x32, Apple Touch Icon)
- **robots.txt** + **sitemap.xml** vorhanden
- **Alt-Texte** für alle Bilder

---

## Security Headers

In `_headers` konfiguriert:
- `X-Frame-Options: SAMEORIGIN`
- `X-Content-Type-Options: nosniff`
- `Referrer-Policy: strict-origin-when-cross-origin`
- `Content-Security-Policy` (erlaubt: Facebook SDK, Netlify Identity, unpkg.com für CMS)

---

## Status

- [x] Statischer Onepager mit Eleventy
- [x] Decap CMS für Content-Verwaltung
- [x] Netlify Hosting + automatische Deploys
- [x] Facebook Page Plugin (Timeline) — kombiniert mit Gallery in einer Sektion
- [x] Custom Sections (CMS-gesteuert, Hintergrundfarbe wählbar)
- [x] SEO-Optimierung (Schema.org, Meta-Tags, OG)
- [x] Responsive Design
- [x] Security Headers + CSP
- [x] Bilder optimiert (WebP, verkleinert, lazy loading, Cache-Header)
- [ ] Custom Domain (pixelasia-dili.com) umstellen
- [ ] Kontaktformular E-Mail-Benachrichtigung einrichten
- [ ] Wix-Abo kündigen

---

## Kontakt

**Pixelasia Productions Dili, Unipessoal Lda**
Rua St. Antonio, 11 · Dili, Timor-Leste
+670 7802 4019 · dilipixelasia@gmail.com
