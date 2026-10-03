# AGENTS.md

Guidance for AI coding agents working in this repository — the site of **domaincentric.dev**, served by GitHub
Pages from `domain-centric-development/domain-centric-development.github.io`, branch `main`, root. Static content
only, no build step. `README.md` carries the maintenance rules (languages, voice, design, checked figures, layout);
read it before a change.

## Live page and preview in one repository

| File | What it is |
|---|---|
| `index.html` | the live page at `https://domaincentric.dev/` — today the placeholder |
| `preview.html` | the English site, reachable at `/preview.html` until it is published |
| `de/index.html` | the German site at `/de/` |
| `robots.txt` | keeps `/preview.html` and `/de/` out of search engines while the placeholder is live |

Every text change goes into `preview.html` and `de/index.html`, in both languages, and is committed here.
Pushing `main` publishes it at once; push only when asked. Publishing the site replaces the placeholder:

```bash
git mv index.html placeholder.html
git mv preview.html index.html
printf 'User-agent: *\nAllow: /\n' > robots.txt
```

The pages carry their final addresses already (canonical, `hreflang`, the language switch), so nothing else changes.

## Principles of the DCA project (apply here too)

This repository presents Domain-Centric Architecture; it is not a knowledge source for the other artifacts. What it
says must match them, and it must not contradict the principles every DCA repository follows:

1. **The samples exist to make the AI harness deterministic, not to ship features** — catalog, rules, markers and
   plugins are the product; the shops are the experiment field.
2. **Rules, markers and the knowledge catalog are general** — any industry, never shop-specific.
3. **The core libraries are framework-neutral** — framework code lives in satellite artifacts and presets, not in
   the rule vocabulary.
4. **Each reader artifact stands alone** — guide, book and catalog bundle are independently readable; no links across
   repository boundaries.

When the site claims something about DCA, check it against `dca-guide` (patterns) and `dca-java` / `dca-dotnet`
(rules) in the monorepo checkout before publishing. Links point at the published repositories under
`github.com/domain-centric-development` and the packages on Maven Central (`dev.domaincentric`) and NuGet
(`DomainCentric.*`) — verify a version before naming it.

Prose follows `../branding/voice.md`. A figure on the page is read from its source before it changes (README).
