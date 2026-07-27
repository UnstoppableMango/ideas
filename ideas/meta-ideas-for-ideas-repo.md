---
title: Meta-ideas for the ideas repo itself
status: proposed
date: 2026-07-27
tags: [meta, tooling]
---

Ideas about this repo, not a product idea.

- README.md generator: script/CI job reads frontmatter across ideas/*.md, builds index table (title, status, date, tags, link). Run in CI on push, commit generated README back or fail if stale.
- Status transition validation: lint frontmatter status field against allowed enum (proposed, greenlit, in-progress-ai, in-progress-human, done, rejected), fail CI on typo/invalid value.
- Tag index: secondary generated page or section grouping ideas by tag, helps find related ideas without grep.
- Simple state machine doc/diagram for the lifecycle in GOALS.md, useful once tooling starts enforcing transitions.
- Consider a `rejected` reason field (optional) in frontmatter, since rejected ideas without context are hard to learn from later.
