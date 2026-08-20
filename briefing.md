# Pixelasia Productions Dili — Onepager Struktur

> **Stand August 2026:** Dieses Briefing beschreibt die Zielstruktur der Website. Die Umsetzung ist als Redesign in `index.html` (Option 1b "Clean Modern") umgesetzt und **live via GitHub Pages** unter [d4hb8myrcf-cmyk.github.io/https-www.pixelasia-dili.com-](https://d4hb8myrcf-cmyk.github.io/https-www.pixelasia-dili.com-/). Details siehe `README.md`.

## Technische Rahmenbedingungen

- Kein Wix. Aktuell: Statisches HTML + GitHub Pages
- CDN mit Asia-Pacific-Knoten
- Schema-Markup: LocalBusiness + VideoProductionCompany + Service
- Ladezeit-Ziel: unter 1 Sekunde
- Alle Bilder/Videos: ausschließlich Eigenproduktionen, keine Stock-Fotos
- Open Graph + Twitter Cards vollständig
- hreflang für EN (primary) + PT (optional, Timor-Leste ist lusophon)

## Navigation (sticky, immer sichtbar)

```
[Logo]                    Work | Services | About | Contact    [CTA-Button: "Get in touch"]
```

- Logo links, compact
- Anker-Links zu den Sektionen
- CTA-Button rechts, visuell abgehoben
- Mobile: Hamburger mit denselben Ankern + CTA prominent
- Scroll-Verhalten: Navigation wird bei Scroll kompakter, bleibt sticky

---

## Sektion 1: Hero

**Zweck:** Innerhalb von 3 Sekunden zeigen, auf welchem Niveau Pixelasia arbeitet.

**Inhalt:**
- Fullscreen-Showreel als Hintergrund (30-45 Sek., Autoplay, muted, Loop)
- Schnitte aus den stärksten Produktionen: Dokumentarfilme, Commercials, Events, DIFF
- Darüber zentriert:
  - Logo (groß, weiß)
  - Positionierungssatz (1 Zeile): z.B. *"Film. Events. Impact. Made in Timor-Leste."*
  - Zwei Buttons: "Watch Showreel" (öffnet Showreel mit Ton) + "Get in touch" (scrollt zu Kontakt)

**Regeln:**
- Kein "We Make It", kein "Founded in 2011", keine Firmengeschichte
- Der Positionierungssatz muss spezifisch für Pixelasia sein, nicht generisch
- Das Showreel IST die Verkaufsargumentation

---

## Sektion 2: Selected Work

**Zweck:** Die 6 stärksten Projekte als Portfolio-Highlight zeigen.

**Inhalt:**
- Überschrift: "Selected Work"
- 6 Projekte als großformatige Kacheln (2x3 Grid Desktop, 1-spaltig Mobile)
- Jede Kachel:
  - Standbild oder kurzer Video-Loop (3-5 Sek.)
  - Hover/Tap: Projektname + Kunde + Kategorie einblenden
  - Klick: öffnet Lightbox mit Video-Embed (YouTube/Vimeo), 2-3 Sätze Projektbeschreibung, Kunde, Jahr
- Kategorien z.B.: Documentary | Commercial | Campaign | Event | Film Festival

**Regeln:**
- Nur die absolut besten Arbeiten
- Jedes Projekt braucht ein visuell starkes Standbild
- Keine Textbeschreibung außerhalb der Lightbox
- Reihenfolge: stärkstes Projekt zuerst

---

## Sektion 3: Proof Bar

**Zweck:** Kompetenz in einer Zeile beweisen.

**Inhalt:**
- Horizontale Zeile mit 4-5 Kennzahlen, z.B.:

```
Since 2011    |    100+ Productions    |    Crew from 6 Countries    |    Award-Winning Docs    |    UN & Government Clients
```

**Regeln:**
- Nur echte, belegbare Zahlen
- Keine Superlative ohne Substanz
- Visuell kompakt, eine Zeile, kein eigener Sektions-Header nötig
- Dient als Übergang zwischen Work und Clients

---

## Sektion 4: Clients

**Zweck:** Vertrauen durch bekannte Namen.

**Inhalt:**
- Logo-Leiste mit 8-12 Kunden-/Partnerlogos
- Z.B.: UNDP, UNICEF, IOM, Presidency of Timor-Leste, WHO, Australian Embassy, EU, private Unternehmen
- Kein Text, keine Beschreibung
- Logos in einheitlicher Größe, monochrom (grau oder weiß), dezent

**Regeln:**
- Nur Logos von Kunden, für die tatsächlich produziert wurde
- Autorisierung für Logo-Nutzung sicherstellen
- Reihenfolge: bekannteste/größte zuerst

---

## Sektion 5: Featured Case

**Zweck:** Einen starken Case im Detail zeigen (Challenge > Production > Result).

**Inhalt:**
- 1 Case, prominent dargestellt
- Struktur:
  - **Challenge:** 1-2 Sätze, was der Kunde brauchte
  - **Production:** 1-2 Sätze, was Pixelasia gemacht hat + Produktionsdetails (Drehorte, Teamgröße, Dauer)
  - **Result:** 1-2 Sätze + konkrete Zahlen (Reichweite, Screenings, Awards, Broadcast)
- Dazu: Video-Embed oder großformatiges Key Visual
- Optional: 2-3 Behind-the-Scenes-Fotos als kleine Galerie

**Regeln:**
- Den beeindruckendsten Case wählen (z.B. eine Social Behaviour Change Campaign mit messbarem Impact)
- Zahlen sind Pflicht - ohne Zahlen kein Case
- Kann bei genug Material auf 2 Cases erweitert werden (dann Tabs oder horizontaler Scroll)
- Kein langer Text - die Fakten sprechen

---

## Sektion 6: Services

**Zweck:** Klar zeigen, was Pixelasia anbietet - ohne Textwand.

**Inhalt:**
- Überschrift: "What We Do"
- 5 Service-Bereiche als kompakte Kacheln (Icons oder eigene Bilder, kein Stock):

```
Film & Documentary    |    Commercials & Campaigns    |    Events & Festivals    |    Radio & Audio    |    Production Services
```

- Jeder Bereich:
  - Eigenes Bild oder Icon
  - Name
  - 1 Satz Beschreibung
  - Optional: 1-2 Beispielprojekte als Links

**Beschreibungstexte (kurz):**

1. **Film & Documentary** - Feature-length and short documentaries for international and local audiences.
2. **Commercials & Campaigns** - TV, cinema and online spots. Social behaviour change campaigns with measurable impact.
3. **Events & Festivals** - Corporate events, concerts, conferences and the annual Dili International Film Festival (DIFF).
4. **Radio & Audio** - Radio spots in Tetun and English. Own station: M3 Radio Dili.
5. **Production Services** - Local production support for international crews and agencies filming in Timor-Leste.

**Regeln:**
- Keine langen Beschreibungstexte
- "Production Services" ist ein wichtiger Differentiator (internationale Kunden, die in TL drehen wollen) und gehört prominent rein
- DIFF als eigenes Asset hervorheben (nicht verstecken)

---

## Sektion 7: About / Why Pixelasia

**Zweck:** Kurzprofil und Differenzierung - erst NACH dem Portfolio.

**Inhalt:**
- Überschrift: "About" oder "Why Pixelasia"
- 3 starke Aussagen nebeneinander (keine langen Absätze):

```
"International experience.          "The only full-service production     "Deep roots in Timor-Leste.
Local expertise."                    house in Timor-Leste."               Since 2011."
```

- Darunter: 3-4 Sätze Kurztext, der die Essenz der Firma zusammenfasst
- Fokus auf: was Pixelasia einzigartig macht (Brücke international/lokal, 25 Jahre Regie-Erfahrung der Gründerin, multikulturelle Crew)

**Regeln:**
- Nicht die gesamte Firmengeschichte hier erzählen
- Keine Philosophie-Texte, keine Werte-Aufzählung
- Maximal 80 Wörter Fließtext

---

## Sektion 8: Team

**Zweck:** Menschen zeigen, nicht nur eine Firma.

**Inhalt:**
- 3-5 Kernpersonen
- Jede Person:
  - Authentisches Foto (am besten am Set oder bei der Arbeit, kein Studio-Portrait)
  - Name
  - Rolle (z.B. "Founder & Director", "Head of Production", "Lead Editor")
  - Optional: 1 Satz oder Fakt
- Gründerin Lena Lenzen prominent (erstes Profil, ggf. etwas größer)

**Regeln:**
- Keine Stock-Fotos
- Fotos müssen hochwertig sein - eine Produktionsfirma, die schlechte Teamfotos hat, verliert Glaubwürdigkeit
- Lieber 3 starke Portraits als 8 schwache

---

## Sektion 9: DIFF (Dili International Film Festival)

**Zweck:** DIFF als eigenständiges Asset und Differenzierungsmerkmal positionieren.

**Inhalt:**
- 1 starkes Eventfoto oder kurzer Video-Clip
- "Dili International Film Festival" als Headline
- 2-3 Sätze: Was ist DIFF, seit wann, was passiert dort (Screenings, Masterclasses, internationaler Austausch)
- Button: "Learn more" (verlinkt auf externe DIFF-Seite oder Social-Media-Kanal)

**Regeln:**
- DIFF ist ein Alleinstellungsmerkmal - es verdient eine eigene Sektion
- Kurz halten, nicht die gesamte Festival-Geschichte
- Wenn es eine eigene DIFF-Website gibt, dorthin verlinken

---

## Sektion 10: Contact / CTA

**Zweck:** Klarer Abschluss mit niedrigschwelligem Kontakt.

**Inhalt:**
- Überschrift: "Have a project in mind? Let's talk."
- Zwei Spalten:
  - Links: Kontaktformular (Vorname, E-Mail, Nachricht, Absenden-Button)
  - Rechts: Direkte Kontaktdaten
    - E-Mail (nicht Gmail - eigene Domain-Mail wirkt professioneller)
    - Telefon / WhatsApp (in TL sehr relevant)
    - Adresse: Rua St. Antonio 11, Dili, Timor-Leste
    - Social Links: YouTube, Facebook, Instagram (falls vorhanden)

**Regeln:**
- CTA-Text muss aktivierend sein, nicht "Send us a message"
- WhatsApp-Link ist in diesem Markt wichtiger als ein Kontaktformular
- E-Mail-Adresse sollte @pixelasia-dili.com sein, nicht @gmail.com
- Formular so kurz wie möglich

---

## Footer

```
[Logo]    © 2026 Pixelasia Productions Dili, Unipessoal Lda    |    Dili, Timor-Leste    |    [YouTube] [Facebook] [Instagram]
```

- Kompakt, eine Zeile
- Keine Wiederholung der Navigation (Onepager braucht das nicht)
- Copyright-Jahr aktuell halten

---

## SEO/GEO-Strukturmaßnahmen (im Code)

**Meta & Open Graph:**
- Title: "Pixelasia Productions Dili | Film, Events & Production Services in Timor-Leste"
- Description: spezifisch, mit Keywords "video production Dili", "film production Timor-Leste"
- OG-Image: Standbild aus dem Showreel, 1200x630px

**Schema-Markup:**
- LocalBusiness (Adresse, Telefon, Öffnungszeiten)
- VideoProductionCompany
- Service (für jeden Service-Bereich)
- Organization (Logo, Social Profiles)

**Heading-Hierarchie:**
- H1: Positionierungssatz im Hero (nur 1x)
- H2: Sektions-Headlines (Selected Work, What We Do, About, etc.)
- H3: Case-Titel, Service-Namen, Teamnamen

**Content für GEO:**
- FAQ-Block am Ende der Services-Sektion (collapsed/Accordion):
  - "What production services does Pixelasia offer in Timor-Leste?"
  - "Can Pixelasia support international film crews in Dili?"
  - "What is the Dili International Film Festival?"
- Strukturierte, zitierbare Fakten in jeder Sektion
- FAQPage Schema-Markup für die FAQ

**Performance:**
- Lazy Loading für alle Bilder unterhalb des Viewports
- Video: Showreel als optimiertes MP4 mit Poster-Image, nicht YouTube-Embed im Hero
- Bilder: WebP/AVIF, responsive srcset
- Kritisches CSS inline, Rest deferred

---

## Gewichtung der visuellen Aufmerksamkeit

```
Hero + Selected Work + Featured Case:     ~65%
Proof + Clients + Services:               ~20%
About + Team + DIFF + Contact:            ~15%
```

Die Seite soll sich anfühlen wie ein hochwertiges digitales Portfolio mit Firmenprofil -
nicht wie eine Corporate-Website mit angehängtem Portfolio.
