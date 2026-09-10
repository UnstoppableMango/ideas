# Idea File Layout

## File

```
INBOX.md   # single running file, all raw ideas appended here
```

No per-idea files, no frontmatter.
One file, ideas appended as you think of them.

## Structure

Standalone idea:

```markdown
## Cache the API responses
2026-07-27

Raw thought, unedited, whatever comes out.
```

Idea under a project (loose grouping, heading only):

```markdown
## Project: checkout-revamp

### Add saved-cart recovery
2026-07-27

Raw thought...

### Speed up payment step
2026-07-27

Raw thought...
```

- `## Project: <name>` groups related `###` idea entries underneath it.
- Standalone ideas (no project) are plain `##` headings at the top level.
- Date line directly under the heading, plain text, no frontmatter key.
- No status, tags, or other metadata at capture time.
  See GOALS.md, that's deferred to a future refine process.

## Rationale

- Single file, zero friction: capturing a thought is "add a heading and write," no file creation, no schema to fill in.
- Project grouping is a heading, not a folder or a tracked entity.
  An idea can reference a project that has one entry or twenty, and renaming the heading costs nothing (no file renames, no links to break).
- Structured metadata (status, tags, machine-readable fields) is intentionally deferred to a future refine step.
  Ideas start raw and only gain structure once someone decides they're worth refining.
