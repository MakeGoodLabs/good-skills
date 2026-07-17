# The Critical Analysis Pipeline

A ten-step, multi-agent process for evidence-first analysis of contested claims — built to check the evidence *and* check the person running it.

The premise: the same AI tools that made lying cheap just made checking cheap. This pipeline is one way to do the checking with discipline. It separates evidence from interpretation, forces every causal claim to answer "compared to what?", stress-tests conclusions against their strongest opposition, and — the part people find strange — checks every draft against a written file of *your own* biases, in both directions.

Steal it. Make it better. Share it back.

## What's in here

- **`SKILL.md`** — the full pipeline: a ten-step run (Steps 0–9), each step with one job, plus Step 10 — a release step that never closes, plus the core principles that govern every step and the confidence vocabulary (established / probable / plausible / speculative) that every claim must carry.
- **`references/user-priors-TEMPLATE.md`** — the template for your bias file. The pipeline will not run honestly without a real one. Copy it to `references/user-priors.md`, delete the worked example (a hypothetical centrist — nobody's actual file), and write your own with the same candor.

## Install

This is a standard [Agent Skill](https://agentskills.io) — plain markdown, no scripts, no network calls, nothing executes. Audit it in one read.

**Claude Code:** copy this folder to `~/.claude/skills/critical-analysis/` (personal, all projects) or `.claude/skills/critical-analysis/` inside a repo (project-level, shared with your team via git).

**Claude.ai:** upload the folder as a custom skill (see [Anthropic's skills documentation](https://docs.claude.com/en/docs/agents-and-tools/agent-skills/overview) and [support.claude.com](https://support.claude.com) for current steps on your plan).

**Any other tool that reads the Agent Skills standard** (Codex, Gemini CLI, Cursor, and others): consult that tool's skills directory convention; the format is the same.

**With any capable AI model, no skill support needed:** paste `SKILL.md` and your filled-in priors file as context, then ask it to run the pipeline on your question — all steps, in order, with full transparency.

**Without AI at all:** the steps work as a manual checklist. Slower, still better than your gut.

Then: copy `references/user-priors-TEMPLATE.md` to `references/user-priors.md` and fill it in honestly. The `.gitignore` already excludes your filled-in copy so a fork can't accidentally publish it.

Invoke it explicitly — "run the pipeline on X." It is deliberately written not to auto-trigger on casual questions; a critical-analysis pipeline that ambushes small talk is a bug, not a feature.

## Changelog

Rule changes live in [CHANGELOG.md](CHANGELOG.md); each maps to a dated origin case in `SKILL.md` describing the failure that taught it.

## The rules that came from failures

Every hard rule in this pipeline exists because the process got something wrong and a human caught it. The file says so inline ("origin case"), because a process that hides its failures will repeat them. The current ones:

1. **Over-correction is a bias too** — guarding against your own leaning can suppress claims the evidence supports. The Bias Agent fires in both directions.
2. **Steelman claims get no free pass** — an opposing argument that would change a conclusion must survive the same counterfactual, revealed-preference, and selection-effects tests as everything else.
3. **Three altitudes, graded separately** — observable outcomes, downstream impact, and likely intent are different questions. Grading a harm by its mechanism alone systematically undercounts who it actually reaches.
4. **Publication is a step, not an exit** — Step 10 treats readers as the pipeline's outermost check: surviving challenges change the conclusions and become new rules, credited; failed challenges get answered once, publicly, and logged.

If the pipeline fails you in a new way and you figure out why: that's the contribution this project wants most.

## One warning

Your filled-in `user-priors.md` should be more honest about you than you would ever be in public. That is the point, and it is why you should keep it private. Share the template; never your copy.

## License

CC BY-SA 4.0 — use it, adapt it, and share your improvements under the same terms. (That's "share it back," enforced by license.)
