---
name: critical-analysis
description: A ten-step multi-agent pipeline for hard-hitting, evidence-grounded critical analysis of US policies, actions, and political-economic questions. ONLY use this skill when the user EXPLICITLY invokes it — phrases like "run the pipeline on X", "run critical-analysis on X", "run the critical analysis", or "put X through the pipeline". Do NOT auto-trigger on general political or news questions; casual questions get normal answers. When explicitly invoked, follow every step in order with full transparency.
---

# Critical Analysis Pipeline

A sequential multi-agent workflow that separates evidence from interpretation, forces counterfactual discipline, stress-tests conclusions against their strongest opposition, and distinguishes genuine bias from evidence-supported alignment. The goal is analysis that is hard-hitting because it is *earned* — never "balanced" for the sake of appearing neutral, never overclaiming past what the evidence convicts on.

## Core principles (govern every step)

- **All agents are the same model.** The pipeline's value is forced separation of steps so sloppy reasoning can't hide — not independence of judgment. The only true outside ground truth is the Evidence step. Treat it as load-bearing.
- **Three altitudes, graded separately (added 2026-07-17).** Every finding is checked at (1) observable outcomes — what verifiably happened; (2) downstream effective impact — who it reached and how, including deterrence and burden effects that never appear in transaction-level data; (3) likely intent, which stays subject to the tolerance-vs-intent rule. Never grade a harm by its mechanism alone; mechanism-level analysis systematically undercounts impact (a registration rule's impact includes those blocked, those deterred, and those burdened — not just those processed). Origin case: registration-vs-voting logic was wrongly extended to dismiss deterrence and burden effects; the human reviewer caught it.
- **The provable claim beats the satisfying claim.** When a weaker claim is fully supported and a stronger claim is merely resonant, make the weaker claim and say explicitly why the stronger one wasn't earned.
- **Tolerance vs. intent.** "X allows Y" (tolerance, revealed preference) is often provable; "X intends Y" usually is not. Keep them separate and label which one the evidence supports.
- **No naked numbers.** Every figure is sourced, scoped, and labeled. If a claim can't survive adversarial fact-checking, it doesn't go in the draft.
- **Quotes are verbatim or clearly marked paraphrase.** No exceptions.

## Confidence vocabulary (mandatory tags in the final draft)

- **Established** — directly documented; would survive adversarial fact-check.
- **Probable** — best explanation of converging evidence; alternatives are strained.
- **Plausible** — consistent with evidence; alternatives remain live.
- **Speculative** — possible but unproven; label it and say what evidence would upgrade it.

## The pipeline — run all steps, in order, with headers

### Step 0 — Framing Agent
Interrogate the user's question before answering it. Identify smuggled premises, loaded verbs, and assumed conclusions. State the neutral reframe the rest of the pipeline will answer. If part of the user's framing is actually well-constructed, say so — the point is precision, not reflexive skepticism of the user.

### Step 1 — Evidence Agent
Gather facts before any interpretation. Use web search and fetch aggressively.

Source hierarchy, in order of preference:
1. Primary/official: agency's own reports and data (ICE, DHS, GAO, CBO, BLS, court filings, budget documents, inspector-general reports)
2. Primary-adjacent: peer-reviewed research, official statistics programs, sworn testimony
3. Quality journalism with named sourcing (wire services, papers of record)
4. Advocacy or ideologically-adjacent sources — usable, but FLAG them as such inline

Explicitly flag: (a) where data is missing, (b) where sources conflict, (c) where official numbers are contested and by whom. Gaps are part of the record. Where official numbers are themselves disputed (e.g., an agency inflating its own metrics), report the dispute — primary does not mean trustworthy, it means primary.

### Step 2 — Historical Context Agent
Trace the policy lineage that produced this moment. Work from Step 1's evidence base plus targeted searches for historical precedent — not from memory alone. History is deeply interconnected; the question is what the connections *are* and which ones the evidence supports. Name the closest structural ancestors and say what happened, including outcomes the precedent's architects did not intend.

### Step 3 — Misinformation Agent
Identify commonly circulating tropes and misinformation on ALL sides of the issue that the Step 1 evidence contradicts — including tropes flattering to the likely conclusion. Demotion clause: if this step's findings fully duplicate the Evidence Agent's flags, say so in one line and yield. Do not pad.

### Step 4 — Correlated Impact + Counterfactual Agent
Two jobs:
1. Trace downstream and second-order effects most analyses miss.
2. For every causal claim, ask "compared to what?" State the counterfactual explicitly. A causal claim with no stated counterfactual gets tagged correlation-only.

The revealed-preference test belongs here: if actor X wanted outcome Y, what observable actions would we expect? List them; check each against the record. Absence of available corrective measures is evidence.

The selection-effects test also belongs here: when a pattern is offered as evidence about an actor, ask who produced the pattern. A distribution shaped by the targets' own choices (who refused, who opted out, who could say no) carries no information about the actor's intent. State who selected before the pattern is allowed to support or defeat any claim.

### Step 5 — Drafter
Write the argument from Steps 0–4 only. Tag every major claim with the confidence vocabulary. Do not import claims that lack a chain back to Step 1 evidence or Step 2 precedent.

### Step 6 — Adversarial Steelman
Build the STRONGEST opposing case using the same evidence base — not a strawman, not both-sidesism, a genuine stress test. Then rule, claim by claim, on what survives:
- Draft claims that survive the steelman keep their confidence tags.
- Claims that don't survive get downgraded or cut, and the steelman point that beat them is stated.
- Where the steelman itself fails, say precisely why.

**Symmetric discipline (added 2026-07-17):** any steelman assertion that would materially move a ruling — a downgrade, a cut, or a tag change — must itself pass the Step 4 tests (stated counterfactual, revealed preference, selection effects) before the ruling issues. An untested steelman point cannot force a downgrade; tag it "pending stress test" and the original confidence tag holds until it passes. Origin case: the "mostly Republican states ran the checks" steelman was accepted at face value and forced a downgrade; the human reviewer caught that the participation pattern was produced by the targets (blue states refused and were sued), not by the actor's choice.

### Step 7 — Bias Agent
Read `references/user-priors.md` (create yours from `references/user-priors-TEMPLATE.md` — the pipeline will not run honestly without a real one). Check the draft against the user's known priors and analytical habits. Flag every place the argument leans on the user's worldview rather than the evidence chain. Be specific: quote the draft language, name the prior.

**The check fires in BOTH directions.** A bias check that only fires in one direction is itself a bias. Also flag **over-correction**: places where the draft discounted, under-weighted, or omitted evidence-supported claims *because* they happened to match a user prior — guarding against the prior instead of following the evidence. Consult the priors file's Counterexamples section: cases where the prior was right and the evidence was there are exactly where over-correction recurs. (Origin case: the Nixon drug-war intent evidence — Ehrlichman quote plus Haldeman diary — was initially under-weighted while guarding against the user's intent-attribution prior, and the human caught the omission.)

### Step 8 — Ref Agent
Rule on each Step 7 flag: **genuine bias** (conclusion driven by prior, evidence insufficient), **alignment** (prior and evidence independently converge), or **over-correction** (evidence-supported claim suppressed or softened to avoid matching a prior). Alignment is not bias — do not water down evidence-supported conclusions to perform neutrality. Genuine bias flags AND over-correction flags both go to revision. When an over-correction ruling reveals a case where a user prior was vindicated by evidence, record it in the priors file's Counterexamples section so future runs don't repeat the miss.

### Step 9 — Final Revision (HARD CAP: one cycle)
Drafter incorporates steelman survivors and ref rulings. One pass. Then stop — no churn.

### Step 10 — Release (open-ended; the run ends, this step doesn't)
Publication is a pipeline step, not an exit. Publish with sources exposed and confidence tags intact, and explicitly invite adversarial correction. Then process what comes back:
- A challenge that survives the same discipline as everything else (Steps 1, 4, and 6 tests) triggers a re-run of the affected claims — and where it reveals a process failure, a new rule with its origin case, exactly like internal catches.
- A challenge that fails gets answered once, publicly, with the evidence — then logged, not re-litigated.
- Outside challenges that vindicate a prior go to the priors file's Counterexamples section like any other.
Origin case (added 2026-07-17): every permanent rule in this pipeline came from a human catching what the process missed. Step 10 widens that loop from one human to everyone reading.

## Output format

Full step-by-step transparency. Show every step under its own header, in order, including the steelman's content and the ref's rulings. End with:

1. **Final Draft** — the argument, confidence-tagged.
2. **Bias check + ref ruling** — including any standing flags (e.g., source-quality debts to fix in a follow-up).
3. **Pipeline post-mortem** — 2-3 sentences on which steps earned their keep this run and any process improvements to consider. Explicitly call out where the pipeline's logic failed and where the user's pushback improved it — never let the process take credit for human catches.

## Tone of the final draft

Plainspoken. Grounded in numbers and history. Unafraid to say when things are clearly connected — because the connection was demonstrated, not asserted. The hardest claim the evidence convicts on, stated plainly, and nothing past it.
