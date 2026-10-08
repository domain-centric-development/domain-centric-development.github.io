# domaincentric.dev

Statische Landing Page für Domain-Centric Development in zwei Sprachen. Kein Build, keine
Abhängigkeiten; die Schriften liegen unter `assets/fonts/`, kein Aufruf geht an einen fremden Server.

## Dateien

| Pfad | Inhalt |
|---|---|
| `index.html` | englische Seite, live unter `https://domaincentric.dev/` |
| `de/index.html` | deutsche Seite unter `/de/`; beide tragen `hreflang`-Alternates und den Sprachwechsel in Nav und Footer |
| `assets/` | `og-image.png` (1200 × 630), die vier Shop-Screenshots (Java/.NET, Desktop/Mobil, WebP) und das Factory-Video `factory-cockpit-demo.mp4` (DE) und `factory-cockpit-demo-en.mp4` (EN) mit Postern (Quellen: `../dca-demo/cockpit-demo.html` und `cockpit-demo-en.html`, KI-generiert aus dem Lauf vom 02.10.2026; neu aufnehmen mit `record.mjs`, dann H.264 mit ffmpeg); die älteren `factory-run-demo*` sind nicht mehr verlinkt |
| `favicon.svg`, `CNAME` | Marke und Domain für GitHub Pages |
| `imprint.html`, `privacy.html`, `de/impressum.html`, `de/datenschutz.html` | Impressum und Datenschutzerklärung, von jeder Seite und vom Platzhalter verlinkt; die deutsche Fassung ist verbindlich. Erklärt: keine Cookies, keine Zählung, nichts von fremden Servern — wer ein Embed, ein Analytics-Skript oder fremde Schriften einbaut, ändert beide Erklärungen mit |
| `assets/fonts/` | Space Grotesk, Newsreader, JetBrains Mono als WOFF2 (latin, latin-ext) mit `fonts.css` und den OFL-Lizenzen |
| `robots.txt` | erlaubt alles |
| `placeholder.html` | der frühere Platzhalter, nicht mehr verlinkt |

## Veröffentlichung

Dieses Repo ist das Pages-Repo: `origin` ist `domain-centric-development/domain-centric-development.github.io`,
GitHub Pages baut `main` aus dem Root, CNAME und HTTPS sind eingerichtet. Ein Push auf `main` ist sofort live.


## Pflege

- **Zwei Sprachen, eine Quelle.** Jede Textänderung geht in `index.html` und `de/index.html` und wird hier
  committet. Ein Push auf `main` veröffentlicht sie; gepusht wird nur auf Wunsch.
- **Stimme.** Prosa folgt `../branding/voice.md`: konkrete Subjekte (DCA, Guide, Tests, Plugins), kein
  Projekt-„wir“, „you/ihr“ nur für Nutzen und Einstieg, Fachbegriffe englisch, keine Sprüche. Der Hero
  schreibt „Domain-Centric Architecture (DCA)“ einmal aus; der Abschnitt „Why it is built this way“
  erklärt den Unterschied zu Domain-Centric Development.
- **Gestaltung.** Farben und Schriften nach `../branding/README.md`: Teal `#148f96`, Space Grotesk,
  Newsreader, JetBrains Mono. Die Marke ist der Hex Graph ohne Speichen.
- **Zahlen sind geprüft.** 121 gemeinsame Regel-Ids (Java: 115 erzwungen, 6 informativ), .NET 127
  (121 erzwungen, 5 informativ, 1 nicht anwendbar) aus `rules.json` der Bibliotheken (05.10.2026); „über 500 Knoten“
  aus `manifest.json` des Katalog-Bundles (545). Vor einer Änderung der Zahl die Quelle lesen.
- **Layout.** Die Kopfzeile steht fest (`.topbar`, `position: sticky`); Sprungziele haben `scroll-margin-top`, damit
  eine Überschrift nicht unter ihr landet. Unter 960 px verschwinden die Abschnittslinks, unter 380 px schrumpft der Header, damit
  der Sprachwechsel bei 320 px im Bild bleibt. Nach Änderungen am Header bei 320, 390 und 1280 px
  prüfen; die Seite darf nie horizontal scrollen.

## Stand der Artefakt-Karten

Sechs Karten: Guide, Building Blocks (`dca-java` auf Maven Central, `dca-dotnet` auf NuGet),
Java-Sample, .NET-Sample, Knowledge Catalog, Tooling (`dca-marketplace`). Alle Links zeigen auf
`github.com/domain-centric-development/*`; die Regel-Links auf die `RULES.md` von `dca-java` und
`dca-dotnet`.
