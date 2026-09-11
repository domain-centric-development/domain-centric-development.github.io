# domaincentric.dev

Statische Landing Page für Domain-Centric Development. Eine Datei, kein Build.

## Deployment (GitHub Pages)

1. Repo anlegen (z. B. `domain-centric-development/website` oder
   `domain-centric-development/domain-centric-development.github.io`) und diesen
   Ordner pushen (`index.html`, `favicon.svg`, `CNAME`).
2. Repo → Settings → Pages → Source: `main`, root.
3. Custom Domain: `domaincentric.dev` eintragen (die `CNAME`-Datei liegt schon bei).
4. **DNS beim Registrar** (Apex-Domain → A/AAAA auf GitHub Pages):

   ```
   A     @    185.199.108.153
   A     @    185.199.109.153
   A     @    185.199.110.153
   A     @    185.199.111.153
   AAAA  @    2606:50c0:8000::153
   AAAA  @    2606:50c0:8001::153
   AAAA  @    2606:50c0:8002::153
   AAAA  @    2606:50c0:8003::153
   CNAME www  <org>.github.io.
   ```

5. In den Pages-Settings „Enforce HTTPS" aktivieren, sobald das Zertifikat
   provisioniert ist (automatisch via Let's Encrypt; .dev erzwingt HTTPS ohnehin).

## Pflege

- Farben/Typo folgen `../branding/README.md` (Teal `#148f96`, Space Grotesk + Newsreader + JetBrains Mono).
- Die Karte „Knowledge catalog" hat noch keinen Link — nachtragen, sobald das
  Catalog-Repo ein öffentliches Remote hat.
- GitHub-Links zeigen seit 2026-08-31 auf `domain-centric-development/*`. Einzige
  Ausnahme: `dca-marketplace` liegt noch unter `chbloemer/` (Transfer offen, WP-01) —
  nach dem Umzug nachziehen.
- Stand der Artefakt-Karten (6): Guide, Building Blocks (`dca-java` auf Maven Central
  `0.1.0` + `dca-dotnet`), Java-Sample, .NET-Sample, Knowledge Catalog (coming soon),
  Tooling. NuGet-Release für `dca-dotnet` steht noch aus — erst dann die Karte um
  Paketkoordinaten ergänzen.
