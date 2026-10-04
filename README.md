# domaincentric.dev

Statische Landing Page für Domain-Centric Development in zwei Sprachen. Kein Build, keine
Abhängigkeiten außer den Google Fonts.

## Dateien

| Pfad | Inhalt |
|---|---|
| `index.html` | die Live-Seite unter `https://domaincentric.dev/`, heute der Platzhalter |
| `preview.html` | englische Seite, bis zur Veröffentlichung unter `/preview.html`; kanonisch schon `https://domaincentric.dev/` |
| `de/index.html` | deutsche Seite unter `/de/`; beide tragen `hreflang`-Alternates und den Sprachwechsel in Nav und Footer |
| `assets/` | `og-image.png` (1200 × 630), die vier Shop-Screenshots (Java/.NET, Desktop/Mobil, WebP) und das Factory-Video `factory-cockpit-demo.mp4` (DE) und `factory-cockpit-demo-en.mp4` (EN) mit Postern (Quellen: `../dca-demo/cockpit-demo.html` und `cockpit-demo-en.html`, KI-generiert aus dem Lauf vom 02.10.2026; neu aufnehmen mit `record.mjs`, dann H.264 mit ffmpeg); die älteren `factory-run-demo*` sind nicht mehr verlinkt |
| `favicon.svg`, `CNAME` | Marke und Domain für GitHub Pages |
| `robots.txt` | hält `/preview.html` und `/de/` aus Suchmaschinen, solange der Platzhalter live ist |

## Veröffentlichung

Dieses Repo ist das Pages-Repo: `origin` ist `domain-centric-development/domain-centric-development.github.io`,
GitHub Pages baut `main` aus dem Root, CNAME und HTTPS sind eingerichtet. Ein Push auf `main` ist sofort live.

Bis zur Veröffentlichung zeigt `index.html` den Platzhalter, die Seite liegt unter `/preview.html` und `/de/`.
Veröffentlichen ersetzt den Platzhalter:

```bash
git mv index.html placeholder.html
git mv preview.html index.html
printf 'User-agent: *\nAllow: /\n' > robots.txt
```

## Pflege

- **Zwei Sprachen, eine Quelle.** Jede Textänderung geht in `preview.html` und `de/index.html` und wird hier
  committet. Ein Push auf `main` veröffentlicht sie; gepusht wird nur auf Wunsch.
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
