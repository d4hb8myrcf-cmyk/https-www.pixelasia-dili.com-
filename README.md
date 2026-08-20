# Handoff: Pixelasia Productions Dili — Website Redesign

## Overview
Onepager-Website für Pixelasia Productions Dili, eine Film- und Event-Produktionsfirma in Timor-Leste. Gewählte Richtung: **Option 1b "Clean Modern"** — hell, strukturiert, editorial/magazine-artig mit Lila als Akzentfarbe.

## About the Design Files
Die Dateien in diesem Bundle sind **Design-Referenzen in HTML** — Prototypen, die das gewünschte Aussehen und Verhalten zeigen. Sie sind KEIN Produktionscode. Die Aufgabe ist, diese Designs in einer echten Codebasis nachzubauen (empfohlen: **Astro** oder **Next.js** als statische Site mit CDN-Deployment, Asia-Pacific-Knoten).

**Referenz-Dateien:**
- `design-reference.html` — Der vollständige Onepager als HTML-Prototyp (Option 1b)
- `briefing.md` — Das Original-Briefing mit allen Sektionen, SEO-Anforderungen und technischen Vorgaben

## Fidelity
**High-fidelity (hifi)** — Pixel-perfekte Mockups mit finalen Farben, Typografie, Spacing und Hover-States. Der Entwickler soll das UI möglichst exakt nachbauen.

---

## Design Tokens

### Colors
| Token | Hex | Verwendung |
|-------|-----|------------|
| Primary | `#6B3FA0` | Buttons, Akzente, Tags, Highlights |
| Primary Hover | `#7d4fb5` | Button hover states |
| Primary Light | `rgba(107,63,160,0.08)` | Icon-Hintergründe, Social-Buttons |
| Primary Transparent | `rgba(107,63,160,0.4)` | Kategorie-Tags auf Bildern |
| Lavender | `rgba(200,170,255,0.9)` | Hero-Akzenttext, Kategorie-Labels |
| Lavender Muted | `rgba(200,170,255,0.7)` | DIFF Subtitel |
| Lavender Team | `rgba(200,170,255,0.8)` | Team-Rollen |
| Dark | `#1a1128` | Hero-Hintergrund, Proof Bar, DIFF, Footer |
| Text Primary | `#1a1128` | Überschriften auf hellem Grund |
| Text Body | `#2a2a2a` | Fließtext auf hellem Grund |
| Text Muted | `rgba(26,17,40,0.55)` | About-Text |
| Text Light | `rgba(26,17,40,0.4)` | Subtitel, Meta-Infos |
| Text Label | `rgba(26,17,40,0.3)` | Kontakt-Labels |
| Text Faint | `rgba(26,17,40,0.2)` | Client-Logos (Text-Platzhalter) |
| Background Main | `#fcfaf7` | Hero Content, Work, Featured Case, About, Contact |
| Background Alt | `#f5f2ed` | Services, Team, Client-Bar |
| White | `#fff` | Cards, Inputs, Buttons, Text auf Dark |
| Nav BG | `rgba(252,250,247,0.95)` | Sticky Nav mit Blur |
| Border Light | `rgba(0,0,0,0.06)` | Nav-Border |
| Border Card | `rgba(0,0,0,0.04)` | Service-Cards |
| Border Input | `rgba(0,0,0,0.08)` | Formularfelder |
| Border Card Subtle | `rgba(0,0,0,0.05)` | Case-Study-Cards |

### Typography
| Element | Font | Size | Weight | Extras |
|---------|------|------|--------|--------|
| H1 Hero | Playfair Display | 72px | 500 | line-height: 1.05, letter-spacing: -0.02em |
| H2 Section | Playfair Display | 44px | 500 | — |
| H2 Featured Case | Playfair Display | 40px | 500 | line-height: 1.15, max-width: 700px |
| H2 Contact | Playfair Display | 44px | 500 | line-height: 1.15 |
| H2 DIFF | Playfair Display | 44px | 500 | line-height: 1.15 |
| Work Card Title | Playfair Display | 26px | 500 | — |
| About Quote | Playfair Display | 22px | 500 | font-style: italic, line-height: 1.4 |
| Proof Bar Stat | Playfair Display | 32px | 500 | — |
| Team Name Large | Playfair Display | 22px | 500 | — |
| Team Name Small | Playfair Display | 20px | 500 | — |
| Nav Links | DM Sans | 14px | 500 | — |
| Nav CTA | DM Sans | 13px | 600 | — |
| Hero Subtitle | DM Sans | 12px | 500 | letter-spacing: 0.12em, uppercase |
| Hero Body | DM Sans | 18px | 400 | line-height: 1.6 |
| Body Text | DM Sans | 16px | 400 | line-height: 1.7 |
| Card Body | DM Sans | 15px | 400 | line-height: 1.6 |
| Service Title | DM Sans | 15px | 600 | — |
| Service Desc | DM Sans | 13px | 400 | line-height: 1.55 |
| Category Tag | DM Sans | 11px | 600 | letter-spacing: 0.08em, uppercase |
| Label | DM Sans | 11px-12px | 600 | letter-spacing: 0.1em, uppercase |
| Meta Small | DM Sans | 12px | 400-500 | — |
| Footer | DM Sans | 11px | 400 | — |
| Proof Sub | DM Sans | 12px | 400 | — |
| Clients | DM Sans | 16px | 600 | letter-spacing: 0.03em |
| Contact Info | DM Sans | 16px | 500 | — |

### Google Fonts Import
```
https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,600;0,700;1,400&family=Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400&display=swap
```

### Spacing
| Context | Value |
|---------|-------|
| Section Padding (horizontal) | 80px |
| Section Padding (vertical) | 100px |
| Nav Padding | 18px 48px |
| Grid Gap (Work) | 24px |
| Grid Gap (Services) | 16px |
| Grid Gap (Team) | 20px |
| Grid Gap (About Quotes) | 32px |
| Card Padding (Service) | 28px 24px |
| Card Padding (Case) | 24px |
| Form Gap | 14px |
| Contact Columns Gap | 80px |

### Border Radius
| Element | Radius |
|---------|--------|
| Buttons (Primary/Secondary) | 100px (pill) |
| Work Cards | 12px |
| Service Cards | 12px |
| Team Cards | 12px |
| Case Study Cards | 12px |
| About Quote Cards | 12px |
| Form Inputs | 8px |
| Icon Container | 10px |
| Category Tag | 100px (pill) |
| DIFF Image | 12px |

### Shadows
| Element | Shadow |
|---------|--------|
| Service Card Hover | `0 8px 30px rgba(107,63,160,0.08)` |
| Play Button | `0 4px 20px rgba(0,0,0,0.2)` |

---

## Screens / Views

### Navigation (sticky)
- **Layout:** Flexbox, space-between, vertically centered
- **Left:** Pixelasia purple logo, height 36px
- **Right:** Horizontal nav links ("Work", "Services", "About", "Contact") + CTA button "Get in touch"
- **Background:** `rgba(252,250,247,0.95)` with `backdrop-filter: blur(12px)`
- **Border-bottom:** `1px solid rgba(0,0,0,0.06)`
- **Nav links hover:** color changes to `#6B3FA0`
- **CTA:** Pill button, `#6B3FA0` bg, white text, hover `#7d4fb5`
- **Behavior:** Sticky top: 0, z-index: 100. Alle Links sind Anker-Links zu den Sektionen.

### Hero Section
- **Height:** 880px, position relative, overflow hidden
- **Background:** `#1a1128` base color
- **Background Image:** Full-cover, opacity 0.35, saturate(0.8)
  - In Produktion: Showreel als MP4-Video (autoplay, muted, loop) statt statischem Bild
- **Overlay:** `linear-gradient(160deg, rgba(26,17,40,0.8) 0%, rgba(107,63,160,0.3) 100%)`
- **Content:** Flex column, align start, justify end, padding bottom 100px, padding horizontal 80px
- **Subtitle:** "Pixelasia Productions Dili" mit 48px Linie davor, uppercase, 12px, letter-spacing 0.12em
- **H1:** "Film. Events. Impact." (erste Zeile, weiß) + "Made in Timor-Leste." (zweite Zeile, italic, Lavender)
- **Body:** Max-width 520px, 18px, rgba(255,255,255,0.55)
- **Buttons:**
  - Primary: White bg, dark text, pill, with play triangle icon + "Watch Showreel"
  - Secondary: Transparent bg, white text, pill, border rgba(255,255,255,0.2), "Get in Touch"

### Selected Work
- **Background:** `#fcfaf7`
- **Header:** Flex space-between. Left: "Selected Work" H2. Right: "6 projects" count text
- **Grid:** 2 columns, gap 24px
- **Each card:** aspect-ratio 16/9, border-radius 12px, overflow hidden, cursor pointer
  - **Image:** object-fit cover, full size
  - **Overlay:** `linear-gradient(0deg, rgba(26,17,40,0.75) 0%, transparent 60%)`
  - **Category Tag:** Pill badge, DM Sans 11px uppercase, lavender text on purple transparent bg
  - **Title:** Playfair Display 26px, white
  - **Meta:** DM Sans 12px, rgba(255,255,255,0.5)
  - **Hover:** `transform: translateY(-2px)`
- **In Produktion:** Klick öffnet Lightbox mit Video-Embed + Projektdetails

### Proof Bar
- **Background:** `#1a1128`
- **Layout:** Flex, space-between, centered, padding 52px 80px
- **4 Stats** mit vertikalen Trennlinien (1px, rgba(255,255,255,0.1), height 40px)
- **Stat Value:** Playfair Display 32px, white
- **Stat Label:** DM Sans 12px, rgba(255,255,255,0.35)

### Clients
- **Background:** `#f5f2ed`
- **Layout:** Flex, centered, wrap, gap 56px, padding 56px 80px
- **Client names** als Text (in Produktion: durch echte Logos ersetzen, monochrom, einheitliche Höhe)
- **Opacity:** sehr dezent, `rgba(26,17,40,0.2)`

### Featured Case
- **Background:** `#fcfaf7`
- **Headline:** "Featured Case" Label + Case-Titel als H2
- **Grid:** 1.2fr 1fr, gap 48px
- **Left:** Video/Image mit Play-Button-Overlay (weißer Kreis, purple Play-Triangle)
- **Right:** 3 gestapelte Cards:
  - Challenge (weiß, border)
  - Production (weiß, border)
  - Result (purple bg `#6B3FA0`, weiß text) — visueller Highlight

### Services ("What We Do")
- **Background:** `#f5f2ed`
- **Grid:** 5 columns, gap 16px
- **Each card:** White bg, border-radius 12px, padding 28px 24px, subtle border
  - **Icon:** 44px square, border-radius 10px, purple-transparent bg, unicode symbol
  - **Title:** DM Sans 15px, weight 600
  - **Description:** DM Sans 13px, muted color
  - **Hover:** box-shadow + border-color change

### About
- **Background:** `#fcfaf7`
- **3 Quote Cards** in 3-column grid, gap 32px
  - White bg, border-radius 12px, left border 3px solid `#6B3FA0`
  - Playfair Display 22px, italic
- **Body Text** below, max-width 800px, DM Sans 16px

### Team
- **Background:** `#f5f2ed`
- **Grid:** 1.3fr 1fr 1fr, gap 20px (Gründerin größer)
- **Each card:** aspect-ratio 3/4, border-radius 12px, overflow hidden
  - Platzhalter-Hintergrund `#e5e0d8` (in Produktion: echte Fotos)
  - Name + Rolle am unteren Rand über Gradient-Overlay

### DIFF Section
- **Background:** `#1a1128` mit Hintergrundbild (opacity 0.15)
- **Grid:** 1fr 1fr, gap 80px, centered
- **Left:** Text (Label, H2, Body, CTA Button)
- **Right:** Eventfoto, border-radius 12px

### Contact
- **Background:** `#fcfaf7`
- **Grid:** 1fr 1fr, gap 80px
- **Left:** H2 + Formular (Name, Email, Message, Submit-Button)
- **Right:** Kontaktdaten (Email, Phone/WhatsApp, Adresse) + Social Icons

### Footer
- **Background:** `#1a1128`
- **Layout:** Flex, space-between, padding 24px 80px
- **Left:** Logo (white, opacity 0.5, height 22px)
- **Right:** Copyright text

---

## Interactions & Behavior

| Element | Interaction |
|---------|-------------|
| Nav Links | Smooth scroll to anchor sections |
| CTA Buttons | Smooth scroll to #contact |
| Work Cards | Hover: translateY(-2px). Click: open lightbox with video + details |
| Service Cards | Hover: box-shadow + border-color animate (transition: all 0.2s) |
| Hero "Watch Showreel" | Opens showreel with sound (modal/lightbox) |
| Play Button (Featured Case) | Opens video in lightbox |
| "Learn More" (DIFF) | Links to external DIFF page |
| Contact Form | POST to backend / email service |
| Social Icons | Links to YouTube, Facebook, Instagram |
| Nav on scroll | Optional: wird kompakter (kleinerer Padding, kleineres Logo) |

---

## Responsive Behavior

| Breakpoint | Changes |
|------------|---------|
| ≤1024px | Work grid → 1 column. Services → 2 columns + 1. Team → 1 column. Contact/DIFF → stacked. |
| ≤768px | Nav → Hamburger menu. Hero H1 → ~44px. Section padding → 48px 24px. Proof Bar → 2x2 grid. About quotes → stacked. |
| ≤480px | Full mobile. Hero buttons stacked. Single column everything. |

---

## SEO Requirements (aus Briefing)

- **Title:** "Pixelasia Productions Dili | Film, Events & Production Services in Timor-Leste"
- **Meta Description:** Spezifisch mit Keywords "video production Dili", "film production Timor-Leste"
- **OG Image:** 1200x630px Standbild aus Showreel
- **Schema Markup:** LocalBusiness, VideoProductionCompany, Service, Organization, FAQPage
- **hreflang:** EN (primary), PT (optional)
- **H1:** Nur 1x im Hero
- **FAQ Accordion** am Ende der Services-Sektion (collapsed):
  - "What production services does Pixelasia offer in Timor-Leste?"
  - "Can Pixelasia support international film crews in Dili?"
  - "What is the Dili International Film Festival?"

## Performance Requirements
- Ladezeit-Ziel: unter 1 Sekunde
- Lazy Loading für alle Bilder unterhalb des Viewports
- Video: optimiertes MP4 mit Poster-Image (kein YouTube-Embed im Hero)
- Bilder: WebP/AVIF, responsive srcset
- Kritisches CSS inline, Rest deferred

---

## Assets

### Images (Platzhalter-URLs aus Wix — in Produktion durch optimierte lokale Assets ersetzen)
| Usage | URL |
|-------|-----|
| Logo (Purple) | `https://static.wixstatic.com/media/6f8c19_837efa9dcf284117a199dfb55e485e0e~mv2_d_11811_4134_s_4_2.png/...` |
| Logo (White) | `https://static.wixstatic.com/media/90d6ae_32fd21cd81304e23954f3f437c14e68a~mv2.png/...` |
| Hero BG | `https://static.wixstatic.com/media/6f8c19_68cc4aab968440ad85e3d28e7503abe3~mv2.jpg/...` |
| Work 1 (Running Far) | `https://static.wixstatic.com/media/6f8c19_c2197b9363244cdcbc26461908d0fe81~mv2.jpg/...` |
| Work 2 (Feto Fantastiku) | `https://static.wixstatic.com/media/bd5377_54235eb23448489dbe8a31f2ed24769e~mv2.jpg/...` |
| Work 3 (Super Trainer) | `https://static.wixstatic.com/media/bd5377_f60b9f6e387c4086a1d8101b03832a64~mv2.jpg/...` |
| Work 4 (DIFF) | `https://static.wixstatic.com/media/4135ad_ffc23657b6454cac96097c8c4802f519~mv2.jpg/...` |
| Work 5 (Road to Acceptance) | `https://static.wixstatic.com/media/6f8c19_8b1e7fdcb2fb4c5da1ab40ef2b1982d3~mv2.jpg/...` |
| Work 6 (Social Behaviour) | `https://static.wixstatic.com/media/6f8c19_79bf1509696f489da4d8481736c5cef7~mv2.jpg/...` |
| Featured Case | `https://static.wixstatic.com/media/90d6ae_80f7fccc28964797985324c9e414fea0~mv2.jpg/...` |
| DIFF BG | `https://static.wixstatic.com/media/6f8c19_c585bad50c9d416aa44e10cf734d62a6~mv2.jpg/...` |
| DIFF Right Image | `https://static.wixstatic.com/media/6f8c19_49265699ad7a42848c910c182444e364~mv2.jpg/...` |

### Noch zu beschaffen
- Team-Fotos (3 Personen, authentisch, am Set)
- Client-Logos (UNDP, UNICEF, IOM, WHO, EU, Australian Embassy, Presidency TL, UN Women)
- Showreel-Video (MP4, 30-45 Sek.)
- Poster-Image für Video
- Favicon + OG Image

---

## Files
- `design-reference.html` — Vollständiger Onepager als interaktiver HTML-Prototyp
- `briefing.md` — Original-Briefing mit Struktur, SEO und technischen Anforderungen
