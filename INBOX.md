## Project: ideas-repo-tooling

### README index generator

2026-07-27

Script/CI job reads refined entries and builds an index table (title, status, date, tags, link).

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

### Idea input

How can we minimize the time between idea and documentation?
Website + mobile app?
Always with me (or close by).
Could we get away with static github pages site?
Would need auth in order to commit.
Not sure how much heavy lifting for auth with gh pages.

### Refining ideas

Thinking start with markdown parser.
Extract the minimal format defined here.
KISS; md header + text until next header.
Project headers get special treatment of course.
Contemplating extracting (removing) from INBOX.md once refined.
Could keep all entries in INBOX.md indefinitely... still undecided.
Multi-step refinement?
Extract from INBOX.md -> move to e.g. ideas/extracted.md or ideas/project/extracted.md -> parse + convert into JSON.
Allows for human refinement post-inbox.

## Project: historian-replacement

Mom likes historian, but has some issues with it.
How can I help her with software?
Thinking write a custom tool just for this.

## Project: procon

Simple tool for weighing pros vs cons.
Website + mobile app.
Start small, session state only.
Plan to grow, add accounts, persist sessions, share across platforms, etc.
Concept is dead simple, focus on UX and distribution.

## Project: cookn-replacement

Mom has used cookn for years and hasn't been happy with some of the more recent changes.
Can we make a replacement for her?
See if we can follow a somewhat realistic product lifecycle.
Interview for use-cases, prioritize, design mockups.
I want to follow the product lifecycle, but don't want to burden mom with all this process and procedure.

## Project: erik

### Family tree visualizer

### Website

Would be cool to expose as a website for others to consume.
Must be auth gated of course given how personal I intend this to be.

### Relationship tracker

Notes and things about the people in my life.
Try to avoid being creepy.
Pseudo "contacts app", similar features.
Robust note-taking and display abilities.

## Project: wishlists

## Project: forkctl
