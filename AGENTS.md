# AGENTS.md

Guidance for AI coding agents working in this repository — the source of the site for **domaincentric.dev**.
`README.md` carries the maintenance rules (languages, voice, design, checked figures, layout); read it before a change.

## This repository is the source of truth

The page exists once, here. `../website-placeholder/preview/` is a **snapshot** of it with a `noindex, nofollow`
line and nothing else — never edit it by hand, never fix something there first.

1. Change `index.html` and `de/index.html` here (every text change in both languages) and commit here.
2. Take the snapshot: `./snapshot-preview.sh`. It writes both pages with the `noindex` line, mirrors `assets/`
   and the favicon, and fails if a page differs from this one beyond that line.
3. Commit the snapshot in `website-placeholder` with the source commit in the message
   (`chore(preview): snapshot of website <sha>`). Pushing it publishes `/preview/`; push only when asked.

Prose follows `../branding/voice.md`. A figure on the page is read from its source before it changes (README).
