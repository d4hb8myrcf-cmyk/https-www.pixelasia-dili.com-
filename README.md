# Pixelasia Productions Dili — Website

Website für [Pixelasia Productions Dili](https://www.pixelasia-dili.com), die einzige Full-Service-Film- und Eventproduktionsfirma in Timor-Leste. Gegründet 2011 von Lena Lenzen.

---

## Links

| Was | URL |
|-----|-----|
| **Live-Seite** | [d4hb8myrcf-cmyk.github.io/https-www.pixelasia-dili.com-](https://d4hb8myrcf-cmyk.github.io/https-www.pixelasia-dili.com-/) |
| **GitHub Repo** | [github.com/d4hb8myrcf-cmyk/https-www.pixelasia-dili.com-](https://github.com/d4hb8myrcf-cmyk/https-www.pixelasia-dili.com-) |
| **Geplante Domain** | pixelasia-dili.com (DNS-Umstellung noch ausstehend) |

---

## Tech-Stack

| Komponente | Technologie |
|------------|-------------|
| Hosting | **GitHub Pages** (statisch, direkt aus dem Repository) |
| Hauptseite | `index.html` — statisches HTML (Redesign "Clean Modern", Option 1b) |
| CSS | `css/style.css` — Mobile-First, Custom Properties |
| JS | `js/main.js` — Navigation, Smooth Scroll, Formular |
| Fonts | Google Fonts (DM Sans, Playfair Display) |
| Repository | GitHub |

### Vorhandene, aber nicht aktiv genutzte Komponenten

Das Repository enthält zusätzlich eine **Eleventy + Decap CMS**-Konfiguration aus einer früheren Phase. Diese wird aktuell nicht genutzt, da GitHub Pages die statische `index.html` direkt ausliefert:

| Datei | Zweck | Status |
|-------|-------|--------|
| `index.njk` | Eleventy-Template (alter Wix-Nachbau) | ⏸️ Inaktiv |
| `style.css` (Root) | Stylesheet für Wix-Nachbau | ⏸️ Inaktiv |
| `_data/*.json` | CMS-Datendateien | ⏸️ Inaktiv |
| `admin/` | Decap CMS Interface | ⏸️ Inaktiv |
| `eleventy.config.js` | Eleventy-Konfiguration | ⏸️ Inaktiv |
| `netlify.toml` | Netlify-Build-Konfiguration | ⏸️ Inaktiv |

---

## Projektstruktur

```
├── index.html                # ✅ Hauptseite (Redesign "Clean Modern") — DEPLOYED via GitHub Pages
├── css/
│   └── style.css             # ✅ Stylesheet (Option 1b, mobile-first, Design Tokens)
├── js/
│   └── main.js               # ✅ JavaScript (Navigation, Smooth Scroll, Kontaktformular)
│
├── images/                   # Lokale Bilder
│   ├── logo-purple.png / logo-white.png / logo-horizontal.png / logo-3d.jpg
│   ├── og-image.jpg
│   ├── favicon-16x16.png / favicon-32x32.png / apple-touch-icon.png
│   ├── gallery-01.jpg … gallery-10.jpg
│   ├── service-creative.jpg / service-events.jpg / service-radio.jpg
│   ├── story.jpg / team.jpg
│
├── design-reference.html     # Design-Referenz/Prototyp
├── briefing.md               # Original-Briefing (Seitenstruktur, SEO, Content-Vorgaben)
├── textaenderungen.pdf       # Dokumentation der Textänderungen
├── robots.txt                # SEO
│
├── index.njk                 # ⏸️ Alter Wix-Nachbau (Eleventy-Template, derzeit inaktiv)
├── style.css                 # ⏸️ Stylesheet für Wix-Nachbau
├── _data/                    # ⏸️ Eleventy-Datendateien (JSON)
│   ├── site.json / about.json / portfolio.json
│   ├── story.json / services.json / gallery.json
├── admin/                    # ⏸️ Decap CMS
│   ├── index.html / config.yml
├── eleventy.config.js        # ⏸️ Eleventy-Konfiguration
├── netlify.toml              # ⏸️ Netlify-Konfiguration
├── sitemap.njk               # ⏸️ Sitemap-Template
├── _headers                  # ⏸️ Netlify HTTP-Headers
└── package.json              # ⏸️ Dependencies (Eleventy)
```

---

## Deployment

**GitHub Pages** liefert `index.html` direkt aus dem Root des `main`-Branch aus.

**Workflow:**
1. Änderungen an `index.html`, `css/style.css`, `js/main.js` oder Bildern vornehmen
2. Committen und auf `main` pushen
3. GitHub Pages aktualisiert die Live-Seite automatisch (wenige Sekunden)

### Lokale Vorschau

Einfach `index.html` im Browser öffnen — kein Build-Schritt nötig.

---

## Seitenstruktur (index.html)

Die Live-Seite ist ein Onepager mit folgenden Sektionen:

1. **Navigation** — Sticky, Logo links, Links + CTA rechts, Hamburger-Menü auf Mobile
2. **Hero** — Crossfade-Slideshow mit Ken-Burns-Zoom (6 Bilder, 24s Loop), Gradient-Overlay, Headline + CTAs
3. **Selected Work** — 6 Projekte als Bildkacheln (2-spaltig Desktop, 1-spaltig Mobile)
4. **Proof Bar** — 4 Kennzahlen auf dunklem Hintergrund
5. **Clients** — Logo-Leiste (aktuell als Text: UNDP, UNICEF, IOM, WHO, EU, etc.)
6. **Featured Case** — Mobile Cinema Kampagne (Challenge → Production → Result)
7. **Services** — 5 Service-Karten (Film, Commercials, Events, Radio, Production Services)
8. **FAQ** — Accordion mit 3 Fragen (SEO-optimiert, Schema-Markup)
9. **About** — 3 Zitat-Karten + Kurztext
10. **Team** — 3 Platzhalter-Karten (Fotos noch zu beschaffen)
11. **DIFF** — Dili International Film Festival (eigene Sektion)
12. **Contact** — Formular + Kontaktdaten + Social Links
13. **Footer** — Logo + Copyright

---

## Hero-Slideshow

Die Hero-Sektion enthält eine automatische **Crossfade-Slideshow mit Ken-Burns-Zoom**:

- **6 Projektbilder** übereinander positioniert (alle `position: absolute`, initial `opacity: 0`)
- Jedes Bild startet mit **4 Sekunden Versatz** (`animation-delay: 0s, 4s, 8s, 12s, 16s, 20s`)
- CSS-Keyframes `heroFade` in `css/style.css`: Bild blendet auf `opacity: 0.4` ein und zoomt von `scale(1)` auf `scale(1.08)`
- **Gesamter Loop: 24 Sekunden**, nahtloser Neustart
- Gradient-Overlay bleibt darüber bestehen

**Bilder austauschen:** `src`-URLs der 6 `<img>`-Tags in `index.html` ersetzen. Bei anderer Anzahl: `animation-delay`-Abstände und Dauer anpassen (`Dauer = Anzahl × 4s`).

---

## Design Tokens

### Farben
| Token | Wert | Verwendung |
|-------|------|------------|
| Primary | `#6B3FA0` | Buttons, Akzente, Tags |
| Primary Hover | `#7d4fb5` | Hover-States |
| Lavender | `rgba(200,170,255,0.9)` | Hero-Akzenttext |
| Dark | `#1a1128` | Hero-BG, Proof Bar, DIFF, Footer |
| BG Main | `#fcfaf7` | Haupt-Hintergrund |
| BG Alt | `#f5f2ed` | Alternierende Sektionen |

### Typografie
| Element | Font | Größe |
|---------|------|-------|
| H1 Hero | Playfair Display | 40px (Mobile) / 72px (Desktop) |
| H2 Sektion | Playfair Display | 44px |
| Body | DM Sans | 16px |
| Nav | DM Sans | 14px |

---

## SEO

- **Schema Markup:** LocalBusiness, VideoProductionCompany, Organization, Service (×5), FAQPage
- **Open Graph + Twitter Cards** vollständig
- **Canonical:** `https://www.pixelasia-dili.com`
- **Favicon:** PNG-Formate (16x16, 32x32, Apple Touch Icon)
- **robots.txt** vorhanden

---

## Status

- [x] Redesign "Clean Modern" (Option 1b) erstellt und deployed
- [x] GitHub Pages Hosting aktiv
- [x] Hero-Crossfade-Slideshow mit Ken-Burns-Zoom
- [x] SEO-Optimierung (Schema.org, Meta-Tags, OG, FAQ)
- [x] Mobile-First Responsive Design
- [ ] Custom Domain (pixelasia-dili.com) umstellen
- [ ] Bilder von `static.wixstatic.com` durch lokale, optimierte Assets ersetzen (WebP/AVIF)
- [ ] Team-Fotos (aktuell Platzhalter)
- [ ] Client-Logos (aktuell nur Text)
- [ ] Showreel-Video (MP4, 30–45 Sek.) für Hero
- [ ] Kontaktformular an Backend/E-Mail-Service anbinden
- [ ] Instagram-Link ergänzen
- [ ] Alte Eleventy/CMS-Dateien aufräumen oder entfernen
- [ ] Wix-Abo kündigen

---

## Kontakt

**Pixelasia Productions Dili, Unipessoal Lda**
Rua St. Antonio 11, Dili, Timor-Leste
+670 7802 4019 · info@pixelasia-dili.com
