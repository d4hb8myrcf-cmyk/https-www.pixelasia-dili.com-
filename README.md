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
| Static Site Generator | [Eleventy (11ty) v3](https://www.11ty.dev/) (`.njk`-Templates) |
| CMS | [Decap CMS](https://decapcms.org/) (ehemals Netlify CMS) |
| Hosting | [Netlify](https://www.netlify.com/) (kostenloser Plan) |
| Formulare | Netlify Forms (integriert, kein Backend nötig) |
| Authentifizierung | Netlify Identity + Git Gateway |
| Fonts | Google Fonts (DM Sans, Playfair Display) |
| Node | v20 (siehe `netlify.toml`) |
| Repository | GitHub |

---

## Projektstruktur

```
├── index.njk                 # Hauptseite (Eleventy-Template) → wird zu _site/index.html ✅ DEPLOYED
├── index.html                # Redesign "Clean Modern" (Option 1b) — NICHT deployed (siehe unten)
├── design-reference.html     # Design-Referenz/Prototyp für das Redesign
│
├── css/
│   └── style.css             # Stylesheet für Redesign (Option 1b, mobile-first)
├── style.css                 # Stylesheet für aktive Seite (Wix-Nachbau, lila/weiß)
├── js/
│   └── main.js               # JS für Redesign (Navigation, Smooth Scroll, Formular)
│
├── _data/                    # Eleventy-Datendateien (JSON), editierbar über Decap CMS
│   ├── site.json             # Firmeninfos, URLs, Kontakt, Social Links
│   ├── about.json            # About-Sektion (Heading, Paragraphs, Image)
│   ├── portfolio.json        # Portfolio-Sektion
│   ├── story.json            # Our Story (zweispaltig)
│   ├── services.json         # Services (Intro + Cards)
│   └── gallery.json          # Galerie-Bilder
│
├── images/                   # Lokale Bilder (Logos, Favicons, OG-Image, Galerie, Services)
│   ├── logo-purple.png / logo-white.png / logo-horizontal.png / logo-3d.jpg
│   ├── og-image.jpg
│   ├── favicon-16x16.png / favicon-32x32.png / apple-touch-icon.png
│   ├── gallery-01.jpg … gallery-10.jpg
│   ├── service-creative.jpg / service-events.jpg / service-radio.jpg
│   ├── story.jpg / team.jpg
│
├── admin/
│   ├── index.html            # Decap CMS Login-Seite
│   └── config.yml            # CMS-Konfiguration (Collections, Felder)
│
├── eleventy.config.js        # Eleventy-Konfiguration (Passthrough-Copies, Template-Formate)
├── netlify.toml              # Netlify Build-Konfiguration
├── package.json              # Dependencies (nur @11ty/eleventy)
├── robots.txt                # Robots-Regeln
├── sitemap.njk               # Auto-generierte Sitemap
├── _headers                  # Netlify HTTP-Headers (CSP, etc.)
├── briefing.md               # Original-Briefing (Seitenstruktur, SEO, Content-Vorgaben)
└── textaenderungen.pdf       # Dokumentation der Textänderungen
```

---

## ⚠️ Zwei Versionen im Repository

Das Projekt enthält aktuell **zwei getrennte Versionen** der Website:

### 1. Aktive / Deployed: Wix-Nachbau (`index.njk` + `style.css`)
- **Eleventy-Template** mit Decap CMS für Content-Pflege
- Visueller Nachbau der alten Wix-Website
- Lila/weißes Farbschema (`#9a78ab`)
- Sektionen: About, Portfolio, Our Story, Services, Gallery, Contact
- Daten aus `_data/*.json`, editierbar über `/admin/`
- **Das ist, was aktuell unter cute-sprite-83682f.netlify.app live ist**

### 2. Redesign: "Clean Modern" (`index.html` + `css/style.css` + `js/main.js`)
- Eigenständige HTML-Datei (kein Eleventy-Template)
- Neues Design nach Option 1b: hell, editorial, Lila als Akzent (`#6B3FA0`)
- Sektionen: Hero, Selected Work, Proof Bar, Clients, Featured Case, Services, About, Team, DIFF, Contact, Footer
- **Hero-Crossfade-Slideshow** mit Ken-Burns-Zoom (6 Bilder, 24s Loop) — August 2026
- Bilder aktuell extern von `static.wixstatic.com`
- **Wird von Eleventy NICHT verarbeitet** (`.html` nicht in `templateFormats`)
- `design-reference.html` dient als Pixel-Referenz

### Warum wird nur `index.njk` deployed?

In `eleventy.config.js` ist `templateFormats: ["njk", "md"]` gesetzt. Eleventy ignoriert daher `index.html`. Da `index.njk` den Permalink `/index.html` hat, erzeugt es `_site/index.html`. Netlify deployt aus `_site/` (laut `netlify.toml`).

**Um das Redesign live zu schalten**, müsste `index.html` entweder:
- als Eleventy-Template konvertiert werden (→ `.njk` mit Daten aus `_data/`)
- oder direkt als Passthrough-Copy konfiguriert werden
- oder Eleventy umgangen und `index.html` direkt als `publish`-Verzeichnis gesetzt werden

---

## Workflow

### Inhalte bearbeiten (CMS)
1. Gehe zu **[/admin/](https://cute-sprite-83682f.netlify.app/admin/)**
2. Logge dich mit deinem Netlify Identity Account ein
3. Bearbeite Texte, Bilder, Galerie, Services etc.
4. Klicke **Publish** → Änderung wird als Git-Commit gespeichert
5. Netlify baut die Seite automatisch neu (ca. 30 Sekunden)

### Code bearbeiten (lokal)

```bash
git clone https://github.com/d4hb8myrcf-cmyk/https-www.pixelasia-dili.com-.git
npm install
npm start
```

Öffnet einen lokalen Dev-Server mit Live-Reload (Standard: `http://localhost:8080`).

### Build

```bash
npm run build
```

Erzeugt die statische Site in `_site/`.

### Deployment
**Automatisch via Netlify:** Jeder Push auf `main` triggert einen Build.
- Build-Command: `npm install && npx @11ty/eleventy`
- Publish-Verzeichnis: `_site`
- Node-Version: 20

---

## Kontaktformular (Netlify Forms)

Das Formular im Contact-Bereich nutzt **Netlify Forms**:
- Automatische Spam-Erkennung + Honeypot-Feld
- Eingegangene Nachrichten unter: **Netlify Dashboard → Forms → contact**
- E-Mail-Benachrichtigungen: **Forms → Form notifications → Email notification**

---

## CMS-Zugang verwalten

### Neuen Benutzer einladen
1. Netlify Dashboard → **Identity** → **Invite users**
2. E-Mail-Adresse eingeben → Einladung wird verschickt
3. Empfänger klickt Link → setzt Passwort → kann CMS nutzen

### Einstellungen
- **Registration:** "Invite only" (nur eingeladene Benutzer)
- **Git Gateway:** Aktiviert (CMS schreibt direkt ins Repo)

---

## Design Tokens (Redesign, Option 1b)

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

## Hero-Slideshow (Redesign)

Seit August 2026 enthält das Redesign (`index.html`) eine automatische **Crossfade-Slideshow mit Ken-Burns-Zoom**:

- **6 Projektbilder** übereinander positioniert (alle `position: absolute`, initial `opacity: 0`)
- Jedes Bild startet mit **4 Sekunden Versatz** (`animation-delay: 0s, 4s, 8s, 12s, 16s, 20s`)
- CSS-Keyframes `heroFade`: Bild blendet auf `opacity: 0.4` ein und zoomt von `scale(1)` auf `scale(1.08)`
- **Gesamter Loop: 24 Sekunden**, nahtloser Neustart
- Gradient-Overlay bleibt darüber bestehen

**Bilder austauschen:** `src`-URLs der 6 `<img>`-Tags ersetzen. Bei anderer Anzahl: `animation-delay`-Abstände und Dauer anpassen (`Dauer = Anzahl × 4s`).

---

## SEO

- **Schema Markup:** Organization, LocalBusiness, Service (in `index.njk`); zusätzlich VideoProductionCompany, FAQPage (in `index.html` Redesign)
- **Open Graph + Twitter Cards** in beiden Versionen
- **Canonical:** `https://www.pixelasia-dili.com`
- **Favicon:** PNG-Formate (16x16, 32x32, Apple Touch Icon)
- **robots.txt** vorhanden
- **Sitemap:** auto-generiert via `sitemap.njk`

---

## Status

- [x] Statischer One-Pager gebaut (Wix-Nachbau)
- [x] SEO-Optimierung (Schema.org, Meta-Tags, Sitemap, robots.txt)
- [x] Netlify Hosting eingerichtet
- [x] Netlify Forms aktiviert
- [x] Decap CMS integriert (alle Inhalte editierbar)
- [x] Netlify Identity + Git Gateway konfiguriert
- [x] Redesign "Clean Modern" (Option 1b) erstellt
- [x] Hero-Crossfade-Slideshow mit Ken-Burns-Zoom (im Redesign)
- [ ] Redesign (`index.html`) als deployed Version aktivieren / in Eleventy integrieren
- [ ] Custom Domain (pixelasia-dili.com) umstellen
- [ ] Bilder von `static.wixstatic.com` durch lokale, optimierte Assets ersetzen (WebP/AVIF)
- [ ] Team-Fotos (aktuell Platzhalter)
- [ ] Client-Logos (aktuell nur Text)
- [ ] Showreel-Video (MP4, 30–45 Sek.) für Hero
- [ ] OG-Image aktualisieren
- [ ] E-Mail auf `info@pixelasia-dili.com` umstellen (aktuell `dilipixelasia@gmail.com`)
- [ ] Instagram-Link ergänzen (fehlt in `site.json`)
- [ ] E-Mail-Benachrichtigung für Formulare einrichten
- [ ] Wix-Abo kündigen

---

## Kontakt

**Pixelasia Productions Dili, Unipessoal Lda**
Rua St. Antonio 11, Dili, Timor-Leste
+670 7802 4019 · info@pixelasia-dili.com
