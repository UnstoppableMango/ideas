## Project: ideas-repo-tooling

### README index generator

2026-07-27

Script/CI job reads refined entries and builds an index table (title, status, date, tags, link).
Run in CI on push, commit generated README back or fail if stale.

### Status transition validation

2026-07-27

Lint refined entry status field against allowed enum (proposed, greenlit, in-progress-ai, in-progress-human, done, rejected), fail CI on typo/invalid value.

### Tag index

2026-07-27

Secondary generated page or section grouping ideas by tag, helps find related ideas without grep.

### Lifecycle state machine diagram

2026-07-27

Simple state machine doc/diagram for the lifecycle in GOALS.md, useful once tooling starts enforcing transitions.

### Rejected reason field

2026-07-27

Consider a `rejected` reason field (optional) once the refine format is designed, since rejected ideas without context are hard to learn from later.
