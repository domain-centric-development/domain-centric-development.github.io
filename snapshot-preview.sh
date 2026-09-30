#!/usr/bin/env bash
# Takes the snapshot of this site into the preview of the Pages repository: the two pages with a
# `noindex, nofollow` line before the canonical link, the assets and the favicon. This repository is the
# source; the preview is never edited by hand. Commit here first, then run this and commit there.
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)"
target="${1:-$here/../website-placeholder/preview}"
[ -d "$target" ] || { echo "snapshot: no preview at $target" >&2; exit 2; }
noindex='<meta name="robots" content="noindex, nofollow">'
for page in index.html de/index.html; do
  mkdir -p "$(dirname "$target/$page")"
  grep -q 'rel="canonical"' "$here/$page" || { echo "snapshot: $page has no canonical link" >&2; exit 1; }
  awk -v line="$noindex" '/rel="canonical"/ && !done { print line; done = 1 } { print }' "$here/$page" > "$target/$page"
  diff <(grep -v 'name="robots"' "$target/$page") "$here/$page" > /dev/null || { echo "snapshot: $page differs beyond the noindex line" >&2; exit 1; }
done
rsync -a --delete "$here/assets/" "$target/assets/"
cp "$here/favicon.svg" "$target/favicon.svg"
echo "snapshot: preview matches $(git -C "$here" rev-parse --short HEAD)$(git -C "$here" diff --quiet || echo ' + uncommitted changes')"
