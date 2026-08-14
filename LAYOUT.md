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

## Refine output

Once an idea is refined (see GOALS.md and the `/refine` skill), it moves out
of `INBOX.md` into one of:

```
REFINED.md    # accepted, structured ideas
REJECTED.md   # declined ideas, kept for record
```

Lifecycle state is which file the entry lives in, not a status field.
Entries keep the same heading/date/body shape as `INBOX.md`
(including `## Project:` / `###` grouping), with one addition in
`REFINED.md`:

```markdown
## Cache the API responses
2026-07-27
source: TBD

Raw thought, unedited, whatever comes out.
```

- `source:` line sits directly under the date line, before the blank line
  and body. Value is `TBD`, `reality` (idea gets done directly in the world,
  no repo artifact), or `git` (implementation lives in a repo).
  `/refine` always sets it to `TBD`; a later step assigns the real value
  once work starts.
- `REJECTED.md` entries use the identical shape without a `source:` line.

## Rationale

- Single file, zero friction: capturing a thought is "add a heading and write," no file creation, no schema to fill in.
- Project grouping is a heading, not a folder or a tracked entity.
  An idea can reference a project that has one entry or twenty, and renaming the heading costs nothing (no file renames, no links to break).
- Structured metadata (status, tags, machine-readable fields) is intentionally deferred to a future refine step.
  Ideas start raw and only gain structure once someone decides they're worth refining.
