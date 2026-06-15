# Lens: Multilingual Anchor

The core lens. Always applied. Renders the input across the anchor + target languages, grounding all explanation in the anchor so the user understands by cross-language comparison (triangulation).

## What to produce

**Anchor (中文) — meaning**
Idiomatic anchor-language rendering. This is the comprehension ground truth.

**Target(s)** — for each language in `config.md` (primary + any triangulation):
- the natural rendering in that language,
- if it is the language being learned, also a *plainer* version (comprehensible-input i+1).

**Nuance (explained in anchor language)**
1–3 lines, in the anchor language, on what the comparison reveals: connotation, what a literal translation would miss, where the languages diverge. This is where triangulation pays off — differences between renderings expose the real meaning.

## Principles
- Idiomatic over literal, always. If a literal reading is a trap, say so.
- Keep target renderings natural to a native speaker of that language, not calques of the anchor.
- Only include triangulation languages that are actually configured. Do not invent extras.
- The nuance note is the highest-value part for learning — never skip it.

## Example (anchor zh, primary en)
Input: "It slipped my mind."
- **中文**：我一时没想起来 / 我给忘了。
- **English (plain)**: I forgot it for a moment.
- **Nuance（中文解释）**：口语、语气轻松，不带责备，强调"无意中忘记"而非"不重视"；正式场合宜用 "It escaped my attention." 直译"它从我脑子滑走了"会显得奇怪。
