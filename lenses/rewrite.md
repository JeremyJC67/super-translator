# Lens: Professional Rewrite & Register Ladder

Apply mainly in **produce** intent (user wrote in the anchor language and wants polished target-language output), or when foreign input could be expressed better.

## What to produce
**Polished version** — the recommended target-language phrasing.

**Register Ladder（语域阶梯）** — same meaning at three levels (if `register_ladder: on`):
- Casual
- Neutral / Professional
- Formal / Academic

**Back-Translation Check（回译核对）** — if `back_translation_check: on`: back-translate the recommended version into the anchor language and state in one line whether meaning is preserved; flag drift.

## Principles
- "Professional" = precise word choice + clear structure + right register. Not longer, not more Latinate for its own sake.
- Preserve the user's intent and voice; improve, don't replace, their meaning.
- If the original is already good, say so plainly instead of inventing changes.

## Example
中文 input: "这个方案我觉得还行，但是时间太赶了。"
- **Polished**: "The proposal looks solid to me, but the timeline feels too tight."
- **Ladder**: Casual "The plan's okay, but it's super rushed." / Neutral "The proposal looks solid, but the timeline feels too tight." / Formal "The proposal is sound; however, the schedule appears overly compressed."
- **回译核对**：「这个方案我觉得挺可靠的，但时间安排太紧了」——与原意一致 ✓
