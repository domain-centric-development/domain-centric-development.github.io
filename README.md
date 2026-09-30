# domaincentric.dev

Statische Landing Page für Domain-Centric Development in zwei Sprachen. Kein Build, keine
Abhängigkeiten außer den Google Fonts.

## Dateien

| Pfad | Inhalt |
|---|---|
| `index.html` | englische Seite, kanonisch unter `https://domaincentric.dev/` |
| `de/index.html` | deutsche Seite unter `/de/`; beide tragen `hreflang`-Alternates und den Sprachwechsel in Nav und Footer |
| `assets/` | `og-image.png` (1200 × 630), die vier Shop-Screenshots (Java/.NET, Desktop/Mobil, WebP) und das Factory-Video `factory-run-demo.mp4` (DE) und `factory-run-demo-en.mp4` (EN) mit Postern (Quellen: `../dca-demo/interactive-demo.html` und `interactive-demo-en.html`, KI-generiert aus dem Lauf vom 30.09.2026; neu aufnehmen mit `record.mjs`, dann H.264 mit ffmpeg) |
| `favicon.svg`, `CNAME` | Marke und Domain für GitHub Pages |

## Veröffentlichung

`domaincentric.dev` läuft bereits über GitHub Pages aus dem Repo
`domain-centric-development/domain-centric-development.github.io` (Checkout: `../website-placeholder`),
Branch `main`, Root, CNAME und HTTPS eingerichtet. Dort liegt heute der Platzhalter; diese Seite ist
unter `/preview/` und `/preview/de/` mit `noindex, nofollow` erreichbar.

Dieses Repo hat kein Remote. Veröffentlichen heißt: Inhalt dieses Repos in das Pages-Repo übernehmen
und den Platzhalter ersetzen. Die Entscheidung dazu ist offen.

## Pflege

- **Zwei Sprachen, eine Quelle.** Jede Textänderung geht in `index.html` und `de/index.html` und wird hier
  committet. Die Preview unter `../website-placeholder/preview/` ist ein Snapshot mit einer `noindex`-Zeile,
  nie von Hand bearbeitet: `./snapshot-preview.sh` schreibt ihn und bricht ab, wenn eine Seite sich über
  diese Zeile hinaus unterscheidet; danach dort committen (siehe `AGENTS.md`).
- **Stimme.** Prosa folgt `../branding/voice.md`: konkrete Subjekte (DCA, Guide, Tests, Plugins), kein
  Projekt-„wir“, „you/ihr“ nur für Nutzen und Einstieg, Fachbegriffe englisch, keine Sprüche. Der Hero
  schreibt „Domain-Centric Architecture (DCA)“ einmal aus; der Abschnitt „Why it is built this way“
  erklärt den Unterschied zu Domain-Centric Development.
- **Gestaltung.** Farben und Schriften nach `../branding/README.md`: Teal `#148f96`, Space Grotesk,
  Newsreader, JetBrains Mono. Die Marke ist der Hex Graph ohne Speichen.
- **Zahlen sind geprüft.** 113 gemeinsame Regel-Ids (Java: 108 erzwungen, 5 informativ), .NET 119
  (112 erzwungen, 4 informativ, 3 nicht anwendbar) aus `rules.json` der Bibliotheken; „über 500 Knoten“
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
