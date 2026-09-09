# AGENTS.md

Guidance for AI coding agents working in this repository — the placeholder site for **domaincentric.dev**
(`domain-centric-development.github.io`), currently the live site. Static content only; the full site sources live
elsewhere in the monorepo checkout (`website/`, `dca-site*/`) and are not published yet.

## Principles of the DCA project (apply here too)

This repository presents Domain-Centric Architecture; it is not a knowledge source for the other artifacts. What it
says must match them, and it must not contradict the principles every DCA repository follows:

1. **The samples exist to make the AI harness deterministic, not to ship features** — catalog, rules, markers and
   plugins are the product; the shops are the experiment field.
2. **Rules, markers and the knowledge catalog are general** — any industry, never shop-specific.
3. **The core libraries are framework-neutral** — Spring lives in `dca-spring` and in presets, not in the rule
   vocabulary.
4. **Each reader artifact stands alone** — guide, book and catalog bundle are independently readable; no links across
   repository boundaries.

When the talk or the site claims something about DCA, check it against `dca-guide` (patterns) and `dca-java` /
`dca-dotnet` (rules) in the monorepo checkout before publishing.

## Working here

- Keep it static and small; no build step unless the full site replaces it.
- Links point at the published repositories under `github.com/domain-centric-development` and the packages on
  Maven Central (`dev.domaincentric`) and NuGet (`DomainCentric.*`) — verify a version before naming it.
- Copy that describes DCA is checked against the guide; no claims the rules do not enforce.
