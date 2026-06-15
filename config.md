# Config

User-editable settings for Super Translator. The skill reads this at step 0.

## Anchor (mother language)
- `anchor: zh` — Chinese. All explanations ground here so the user always understands.

## Target languages
The languages the skill translates *into* / *from* alongside the anchor.
- `primary: en` — English (the main language being learned).
- `triangulation: []` — optional extra languages for cross-language nuance comparison.
  - To enable, add codes here, e.g. `triangulation: [ja]` for Japanese, `[ja, fr]` for Japanese + French.
  - When non-empty, the multilingual lens shows these renderings too, to help triangulate meaning.

## Output preferences
- `depth: adaptive` — let `profile.md` decide how much grammar/vocab detail to show (more for weak spots, less for mastered areas). Alternatives: `brief`, `full`.
- `register_ladder: on` — show casual / neutral-professional / formal-academic versions in produce intent.
- `back_translation_check: on` — back-translate produced text to the anchor to verify meaning is preserved.

## Notes
- This file is plain config the user can hand-edit. Keep it stable; behavior changes go through `evolution.md` Level 2 (approval-gated), not silent edits here.
