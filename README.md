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

---

## ⚠️ WICHTIG: Webseite und CMS synchron halten

> **Jede Änderung an der Webseite (index.njk, style.css) muss auch im CMS (admin/config.yml) und den Datendateien (_data/*.json) aktualisiert werden — und umgekehrt.**
>
> Wenn die Struktur in `index.njk` nicht zu den Feldern in `config.yml` und den Daten in `_data/*.json` passt, kann der Build fehlschlagen oder Inhalte verschwinden.
>
> **Checkliste bei Änderungen:**
> 1. Template ändern (`index.njk`) → CMS-Config anpassen (`admin/config.yml`) → Daten-Datei anlegen/anpassen (`_data/*.json`)
> 2. CMS-Feld hinzufügen (`config.yml`) → Template anpassen (`index.njk`) → Default-Wert in Daten-Datei (`_data/*.json`)
> 3. Immer alle drei Stellen prüfen!

---

## Projektstruktur

```
├── index.njk                 # Haupttemplate (Nunjucks) — Eleventy baut daraus index.html
├── style.css                 # Stylesheet (wird 1:1 kopiert nach _site/)
├── _headers                  # Netlify HTTP-Headers (CSP, Security)
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
│   ├── facebook.json         # Facebook Feed Sektion (Heading, Einstellungen)
│   ├── gallery.json          # Bildergalerie
│   └── customSections.json   # Benutzerdefinierte Sektionen
│
├── admin/                    # Decap CMS
│   ├── index.html            # CMS-Login-Seite
│   └── config.yml            # CMS-Konfiguration (Felder, Collections)
│
├── images/                   # Bilder (lokal)
│   ├── logo-purple.png / logo-white.png / logo-3d.jpg
│   ├── favicon-*.png / apple-touch-icon.png
│   ├── gallery-01.jpg … gallery-10.jpg
│   ├── service-creative.jpg / service-events.jpg / service-radio.jpg
│   └── team.jpg
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
| 9 | **Facebook Feed** | Lila | `facebook.json` + `site.json` |
| 10 | Gallery | Weiß | `gallery.json` |
| 11 | Contact | Lila | `site.json` |
| 12 | Footer | Dunkel | `site.json` |

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
5. Publish → Die neuen Sektionen erscheinen zwischen den Service Cards und dem Facebook Feed

### Facebook Feed anpassen

Unter **📄 Page Sections → Facebook Feed** im CMS:
- **Section Heading**: z.B. "Latest from Pixelasia"
- **Plugin Height**: Höhe in Pixeln (Standard: 600)
- **Show Timeline / Cover / Facepile**: Ein/Aus-Schalter

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
- [x] Facebook Page Plugin (Timeline)
- [x] Custom Sections (CMS-gesteuert, Hintergrundfarbe wählbar)
- [x] SEO-Optimierung (Schema.org, Meta-Tags, OG)
- [x] Responsive Design
- [x] Security Headers + CSP
- [ ] Custom Domain (pixelasia-dili.com) umstellen
- [ ] Bilder optimieren (WebP/AVIF)
- [ ] Kontaktformular E-Mail-Benachrichtigung einrichten
- [ ] Wix-Abo kündigen

---

## Kontakt

**Pixelasia Productions Dili, Unipessoal Lda**
Rua St. Antonio, 11 · Dili, Timor-Leste
+670 7802 4019 · dilipixelasia@gmail.com
