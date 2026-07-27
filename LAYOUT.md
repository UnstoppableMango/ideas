# Idea File Layout

## Directory structure

```
ideas/
  slug.md           # one file per idea, flat, no status subdirs
README.md            # generated index: title, status, date, tags, link
```

## Filenames

`slug.md`, no date prefix. Date lives in frontmatter only (single source of truth, avoids filename/frontmatter drift).

## Frontmatter

```markdown
---
title: Short title
status: proposed   # proposed | greenlit | in-progress-ai | in-progress-human | done | rejected
date: 2026-07-27
tags: [tag1, tag2]
---

Raw idea body, unedited.
```

## Rationale

- Status changes over an idea's lifecycle, storing it only in frontmatter avoids file moves/renames (which break links and add noisy git history).
- Frontmatter is the single source of truth for tooling (per GOALS.md); no duplicate date in filename to drift out of sync.
- `README.md` is a generated index, not hand-maintained, regenerate from frontmatter across all `ideas/*.md` files.
