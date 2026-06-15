# Research Landscape & Differentiation

A scan of existing translation-for-learning products (June 2026), the pitfalls they reveal, and where Super Translator stakes new ground. Kept honest on purpose — this doc also feeds the question of whether there is a publishable contribution here.

## Existing products

| Product | What it does well | Gap we exploit |
|---|---|---|
| **Nuance – AI Translator & Tone** (iOS) | Explains hidden nuance a literal translation misses; tone analysis (polite/formal/casual/too direct); tap-a-word usage | Closed iOS app; L1↔L2; no persistent learner model; no multilingual triangulation |
| **Learnables** | Comprehensible-input bilingual stories; L1 shown alongside L2; tap-to-translate; native audio | Content-consumption model, not your-own-text; no adaptation surface you control |
| **OpenL Doc Translator** | Side-by-side original/translation in context | Pure translation, no pedagogy, no memory |
| **Talkpal** | AI conversation partner; flags pronunciation; suggests natural phrasing; adapts difficulty over time | Black-box adaptation; speaking-focused; closed |
| **Preply + AI** | Per-lesson AI feedback on grammar/vocab/pronunciation; huge tutor marketplace | Adaptation is server-side & opaque; built around paid human tutors |
| **Duolingo Max / Babbel / Busuu / Mondly** | Broad, gamified, structured courses | Curriculum-driven, not your-real-text; fatigue; black-box personalization |

Sources: OpenL blog, Lingopie, Learnables, PolyChat, Apple App Store (Nuance), Translated.com (context-aware nuance), Coursebox, OpenAI×Preply.

## Pitfalls observed (and our response)
1. **Literal translation hides nuance** → the multilingual lens always ends in an anchor-language *nuance* note; triangulation is designed to surface what one rendering hides.
2. **Gamified grind / curriculum fatigue** → no curriculum; the unit of work is *your own real text*, in your own workflow.
3. **Black-box personalization** → the learner model is a plain, human-readable, version-controlled file (`profile.md`) the user owns.
4. **App lock-in** → open, local, composable skill; data stays with the user.
5. **One-size depth** → adaptive depth from the profile: deeper on weak spots, lighter on mastered areas.

## Where we are genuinely new
- **Mother-language anchor + multilingual triangulation** as the comprehension primitive (vs ubiquitous L1↔L2).
- **Transparent, user-owned, version-controlled self-evolution** with an explicit **two-level** split:
  - Level 1: silent, additive learner-profile adaptation.
  - Level 2: approval-gated, auditable rewrite of the skill itself.
- Translator delivered as an **agent-native, composable skill**, not a standalone app.

## Honest novelty check (for the paper question)
The *translation* and *comprehensible-input* pieces are not novel. Self-evolving / experience-driven agents already exist (e.g. AutoSkill-style lifelong skill evolution). The defensible kernel, if any, is the **mechanism**, not the domain:

> *Does an approval-gated, version-controlled two-level self-evolution loop make a skill measurably and monotonically better in sustained real use, without losing control — and can we evaluate that?*

Translation here is the **testbed / case study**, not the contribution. A workshop paper would still need: a crisp claim, a benchmark over real learner-input sequences, baselines (static skill / no-profile / fully-automatic-no-approval), and ablations (drop profile, drop approval gate, drop triangulation). This ties into the author's existing skill-eval harness and skill-contract reliability work — likely one research program, not a separate paper. Decide on evidence, not enthusiasm.
