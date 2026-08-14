---
name: refine
description: >
  Promote one idea from INBOX.md into REFINED.md (accepted) or REJECTED.md
  (declined), per the structure in LAYOUT.md. Manual, human-triggered only.
  Use when the user says "refine this idea", "/refine", or names/pastes a
  specific INBOX.md entry to promote or reject.
---

Promote exactly one INBOX.md idea per invocation. Never batch-scan INBOX.md
looking for candidates — the human names the idea.

## Steps

1. Identify the target entry in `INBOX.md` from what the user named or
   pasted. If ambiguous, ask which one.
2. Read the full entry: its `##`/`###` heading, date line, and body. If it's
   a `### ` entry under a `## Project:` heading, note the project name too.
3. Ask the user: promote to `REFINED.md`, or move to `REJECTED.md`? Skip
   asking if they already said which in their request.
4. Remove the entry from `INBOX.md`. If it was the last entry under a
   `## Project:` heading, remove that now-empty project heading too.
5. Append the entry to the chosen destination file, same heading/date/body
   shape (including `## Project:` grouping if it had one — reuse an existing
   `## Project:` heading in the destination file if one already matches,
   otherwise add it).
   - If destination is `REFINED.md`, add a `source: TBD` line directly under
     the date line, before the blank line and body.
   - If destination is `REJECTED.md`, no `source:` line.
6. Run `make format` (treefmt) to clean up formatting after editing.

## Rules

- One idea per run. Don't touch other INBOX.md entries.
- Don't invent extra fields beyond `source:` — see `LAYOUT.md` for the exact
  shape.
- Don't set `source:` to `reality` or `git` yourself — always `TBD` at this
  step. That gets assigned later, when work actually starts (not this
  skill's job).
- If `REFINED.md` or `REJECTED.md` don't exist, create them with a one-line
  `# Refined Ideas` / `# Rejected Ideas` heading first.
