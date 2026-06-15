# Self-Evolution Protocol

Super Translator evolves at two levels. A markdown skill cannot silently rewrite itself at call time, so evolution is made explicit and safe here.

## Level 1 — Adapt to the user (automatic, every interaction)

After producing each card (SKILL.md step 4):

1. Identify at most **one or two** of the following from this interaction:
   - an **error** the user made or a misunderstanding they showed,
   - an item you just **taught** (word/phrase/structure),
   - a **preference** they revealed (register, phrasing, length).
2. Append them to `profile.md` using its entry format. Additive only.
3. Refresh the rolling **Summary** block in `profile.md` if a pattern is now clear (e.g. the same error 3+ times → add to "Recurring weak spots").

Constraints:
- Cheap and quiet: a few lines, no ceremony. One line of acknowledgement to the user max.
- Never delete or rewrite history; supersede with a newer dated entry.
- Use the profile next time: emphasize weak-spot lenses, resurface due review items, match preferred register, stop over-explaining mastered areas.

## Level 2 — Rewrite the skill (approval-gated, only when divergence is large)

Trigger when accumulated profile evidence shows the skill itself no longer fits — e.g.:
- a lens is consistently unhelpful or consistently missing,
- the user repeatedly asks for something the protocol doesn't cover,
- config defaults (anchor/targets/depth) are persistently overridden,
- the same class of need recurs 5+ times without a home.

Procedure:
1. **Summarize the evidence** — cite the profile entries that motivate the change.
2. **Propose concrete edits** — exact diffs to `SKILL.md`, `config.md`, or a new/edited `lenses/*.md`.
3. **Wait for approval.** Apply only what the user approves.
4. **Version it** — commit the change with a message referencing the evidence, so evolution is auditable in git.

Never silently edit the skill body. Transparency + version control is the point — it is what makes this safe and (for research) measurable.

## Why two levels
Level 1 = fast, personal, low-risk adaptation (the profile). Level 2 = slow, structural, auditable change (the skill). Separating them keeps the system both responsive and controllable — and lets us measure the effect of each independently.
