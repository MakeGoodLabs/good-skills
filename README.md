# good-skills

Skills our team is using with our robots, and sharing with you and yours.

From [Make Good Labs](https://makegood.ventures) — tools for thinking clearly, building honestly, and doing both in public.

Each skill is a self-contained folder in the open [Agent Skills](https://agentskills.io) format: a `SKILL.md` with instructions, plus whatever references it needs. Plain markdown. No scripts, no network calls, nothing executes unless a skill's own README says otherwise. Audit any of them in one read.

## The skills

| Skill | What it does |
|---|---|
| [`critical-analysis`](critical-analysis/) | A ten-step, multi-agent pipeline for evidence-first analysis of contested claims — checks the evidence, then checks *you* against a written file of your own biases. Ends with Step 10: releasing the work so readers can break it. |

More coming. Each ships with its own README, changelog, and license.

## Install

Copy the folder for the skill you want (not the whole repo) into your skills directory:

- **Claude Code:** `~/.claude/skills/<skill-name>/` for personal use across projects, or `.claude/skills/<skill-name>/` inside a repo to share with your team via git.
- **Claude.ai:** upload the skill folder as a custom skill — see [Anthropic's skills docs](https://docs.claude.com/en/docs/agents-and-tools/agent-skills/overview) for current steps.
- **Other tools that read the standard** (Codex, Gemini CLI, Cursor, and others): use that tool's skills directory convention; the format is the same.
- **No skill support at all:** paste the skill's `SKILL.md` into context and ask your model to follow it. Slower, works everywhere.

Each skill's own README covers anything specific to it — including, for `critical-analysis`, the one file you must create yourself and never publish.

## House rules

Every skill in this repo holds to three standards:

1. **Auditable.** You can read everything a skill does before you run it.
2. **Failure-documented.** Rule changes trace to dated origin cases — the specific mistake that taught the rule. A process that hides its failures repeats them.
3. **Share-alike.** Licensed to be taken, improved, and returned. If a skill fails you in a new way and you figure out why, that's the contribution these projects want most. Open an issue or a discussion with what broke and what you'd change.

## Why "good"

Make Good Labs builds toward good growth: ventures and tools that create equity and durability while being unapologetically commercial. These skills are the thinking layer of that work, published because verification getting cheaper only matters if people actually pick up the tools.

Steal them. Make them better. Share them back.
