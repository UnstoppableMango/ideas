# AGENTS.md

Guidance for AI coding agents (Claude Code, GitHub Copilot, etc.) working in this repository.

## What this repo is

Personal idea-capture repo.
Not a task tracker, not polished writing.
Raw ideas go into `INBOX.md` with as little friction as possible.
See `GOALS.md` for the full rationale and the (future, undesigned) refine/lifecycle process.

## Commands

```
make build   # nix build .#
make update  # nix flake update
make check   # nix flake check (lint)
make format  # nix fmt
```

Dev shell (`nix develop`) provides `gnumake` and `nixfmt`.
Formatting is handled by treefmt across all file types in this repo (nix, markdown, Makefile, shell, json, yaml, GitHub Actions) — always run `make format` instead of hand-formatting.

## INBOX.md structure

Defined in full in `LAYOUT.md`. Key points:

- Single running file, no per-idea files, no frontmatter.
- Standalone idea: `## <title>` heading, then a plain date line (`YYYY-MM-DD`), then raw body text.
- Idea under a project: `## Project: <name>` groups `### <title>` entries beneath it.
- No status/tags/metadata at capture time — that's deferred to a future refine step (see `GOALS.md`).

When adding entries to `INBOX.md` (by hand or via tooling), match this structure exactly; don't invent frontmatter or metadata fields.

## Refine

The `/refine` skill (`.claude/skills/refine/SKILL.md`) promotes one INBOX.md
idea into `REFINED.md` or `REJECTED.md`, per the structure in `LAYOUT.md`.
Manual, human-triggered only — pick an idea, run `/refine` against it.

## index.html

Static, dependency-free GitHub Pages capture form (no build step — edit in place).
Lets a signed-in GitHub user append an entry to `INBOX.md` directly via the GitHub Contents API, from a phone or any browser, without cloning the repo.

- Auth: user pastes a fine-grained GitHub PAT (repo-scoped, "Contents: Read and write" permission), stored only in `sessionStorage`, never sent anywhere but `api.github.com`.
- Write flow: GET current file content + sha, append formatted entry client-side, PUT back; retries up to 3 times on 409 (concurrent edit changed sha).
- `formatEntry()` in the `<script>` block is the client-side twin of the structure in `LAYOUT.md` — keep the two in sync if either changes.
- `REPO_OWNER` / `REPO_NAME` / `FILE_PATH` constants at the top of the script are the only repo-specific wiring.
