# Pixelasia Productions Dili — Website

Onepager-Website für **Pixelasia Productions Dili**, eine Film- und Event-Produktionsfirma in Dili, Timor-Leste.

---

## 🔗 Links

| Was | URL |
|-----|-----|
| **Live-Seite** | [cute-sprite-83682f.netlify.app](https://cute-sprite-83682f.netlify.app/) |
| **CMS (Admin)** | [cute-sprite-83682f.netlify.app/admin/](https://cute-sprite-83682f.netlify.app/admin/) |
| **Netlify Dashboard** | [app.netlify.com/projects/cute-sprite-83682f](https://app.netlify.com/projects/cute-sprite-83682f) |
| **GitHub Repo** | [github.com/d4hb8myrcf-cmyk/https-www.pixelasia-dili.com-](https://github.com/d4hb8myrcf-cmyk/https-www.pixelasia-dili.com-) |
| **Geplante Domain** | pixelasia-dili.com (DNS-Umstellung noch ausstehend) |

---

## 🏗️ Tech-Stack

| Komponente | Technologie |
|------------|-------------|
| Static Site Generator | [Eleventy (11ty) v3](https://www.11ty.dev/) |
| CMS | [Decap CMS](https://decapcms.org/) (ehemals Netlify CMS) |
| Hosting | [Netlify](https://www.netlify.com/) (kostenloser Plan) |
| Formulare | Netlify Forms (integriert, kein Backend nötig) |
| Authentifizierung | Netlify Identity + Git Gateway |
| Repository | GitHub |

---

## 📁 Dateistruktur

```
pixelasia-dili/
├── _data/                    # ← Editierbare Inhalte (JSON)
│   ├── site.json             #   Allgemeine Einstellungen (Name, Kontakt, SEO, Social)
│   ├── about.json            #   "WE MAKE IT" Sektion
│   ├── portfolio.json        #   Portfolio Sektion
│   ├── story.json            #   "Our Story" Sektion
│   ├── services.json         #   Services Intro + Karten
│   └── gallery.json          #   Galerie-Bilder
├── admin/
│   ├── index.html            # Decap CMS Einstiegsseite
│   └── config.yml            # CMS-Konfiguration (Felder, Collections)
├── images/                   # Alle Bilder (Logo, Services, Galerie, etc.)
├── index.njk                 # ← Haupt-Template (Nunjucks, liest _data/)
├── sitemap.njk               # Sitemap-Template
├── style.css                 # Stylesheet (Original-Design)
├── css/style.css             # Zusätzliches CSS (Hero-Slideshow)
├── js/main.js                # JavaScript (Navigation, Slideshow)
├── _headers                  # Netlify Security Headers (CSP etc.)
├── netlify.toml              # Netlify Build-Konfiguration
├── robots.txt                # SEO
├── eleventy.config.js        # Eleventy-Konfiguration
├── package.json              # Node.js Dependencies
├── design-reference.html     # Design-Prototyp (Referenz, nicht live)
├── briefing.md               # Original-Briefing
└── textaenderungen.pdf       # Dokumentation der Textänderungen
```

---

## 🔄 So funktioniert der Workflow

### Inhalte bearbeiten (CMS)
1. Gehe zu **[/admin/](https://cute-sprite-83682f.netlify.app/admin/)**
2. Logge dich mit deinem Netlify Identity Account ein
3. Bearbeite Texte, Bilder, Galerie, Services etc.
4. Klicke **Publish** → Änderung wird als Git-Commit gespeichert
5. Netlify baut die Seite automatisch neu (ca. 30 Sekunden)

### Code bearbeiten (lokal)
1. Repo klonen: `git clone https://github.com/d4hb8myrcf-cmyk/https-www.pixelasia-dili.com-.git`
2. `npm install` ausführen
3. `npm start` für lokalen Dev-Server
4. Änderungen committen und pushen → Netlify baut automatisch

### Build-Prozess
```
npm install && npx @11ty/eleventy
```
- **Input:** Alle Dateien im Root (Templates, Daten, Assets)
- **Output:** `_site/` Ordner (wird von Netlify veröffentlicht)
- **Node-Version:** 20 (konfiguriert in `netlify.toml`)

---

## 📧 Kontaktformular (Netlify Forms)

Das Formular im Contact-Bereich nutzt **Netlify Forms**:
- Automatische Spam-Erkennung + Honeypot-Feld
- Eingegangene Nachrichten unter: **Netlify Dashboard → Forms → contact**
- E-Mail-Benachrichtigungen: **Forms → Form notifications → Email notification**

---

## 🔐 CMS-Zugang verwalten

### Neuen Benutzer einladen
1. Netlify Dashboard → **Identity** → **Invite users**
2. E-Mail-Adresse eingeben → Einladung wird verschickt
3. Empfänger klickt Link → setzt Passwort → kann CMS nutzen

### Einstellungen
- **Registration:** "Invite only" (nur eingeladene Benutzer)
- **Git Gateway:** Aktiviert (CMS schreibt direkt ins Repo)

---

## 🌐 Custom Domain einrichten (noch ausstehend)

1. **Netlify:** Site configuration → Domain management → Add custom domain → `pixelasia-dili.com`
2. **Domain-Registrar:** DNS auf Netlify umstellen (CNAME oder A-Records)
3. **Warten:** 10–60 Minuten für DNS-Propagation
4. **HTTPS:** Netlify richtet automatisch ein SSL-Zertifikat ein
5. **Wix-Abo** kündigen, sobald die neue Seite unter der Domain läuft

---

## 📋 Status

- [x] Statischer One-Pager gebaut
- [x] SEO-Optimierung (Schema.org, Meta-Tags, Sitemap, robots.txt)
- [x] Netlify Hosting eingerichtet
- [x] Netlify Forms aktiviert
- [x] Decap CMS integriert (alle Inhalte editierbar)
- [x] Netlify Identity + Git Gateway konfiguriert
- [ ] Custom Domain (pixelasia-dili.com) umstellen
- [ ] E-Mail-Benachrichtigung für Formulare einrichten
- [ ] Wix-Abo kündigen
