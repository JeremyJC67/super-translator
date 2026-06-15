# 🌐 Super Translator

A **mother-language-anchored, multilingual, self-evolving** translation & learning assistant — packaged as a [Claude Code](https://claude.com/claude-code) skill.

Most translators give you *a translation*. Super Translator helps you **understand**: it anchors every explanation in your mother language, shows the same meaning across several languages so you can triangulate the nuance, and **gets to know you** the more you use it — quietly adapting to your weak spots and, when needed, proposing changes to its own behaviour (with your approval).

Built for non-native English speakers who want to read English more deeply and write it more professionally.

## Why this is different

Existing tools (Nuance AI Translator, Learnables, Talkpal, Preply, Duolingo…) are strong but share three gaps:

| Gap in existing apps | Super Translator |
|---|---|
| Closed SaaS / mobile app | Open, local, lives in your terminal & agent workflow; composable with your other skills |
| Personalization is a black box | Your learner profile is a plain, **version-controlled** file you own and can read |
| Mostly L1 ↔ L2 only | **Mother-language anchor + multilingual triangulation** to expose nuance |
| The tool never changes for you | **Two-level self-evolution**: silent profile adaptation + approval-gated, auditable self-rewrite |

See [`docs/research-landscape.md`](docs/research-landscape.md) for the full competitive scan and the pitfalls we deliberately avoid.

## How it works

```
🌐 Super Translator · anchor: zh · intent: comprehend · lenses: multilingual, register

[multilingual anchor block]   ← meaning grounded in your mother language
[register / rewrite / vocab]  ← only the lenses this input needs
— learning note logged to profile.md —
```

Pipeline (see [`SKILL.md`](SKILL.md)):
1. Load your `config.md` (anchor + targets) and `profile.md` (what it knows about you).
2. Detect direction & intent (comprehend vs produce — interchangeable).
3. Multilingual anchor block (always).
4. Apply only the relevant **lenses** (`lenses/`): register, rewrite, grammar-vocab.
5. **Level-1 evolution**: append what it learned about you to `profile.md`.
6. **Level-2 evolution**: when the skill itself no longer fits, propose edits — apply on approval, commit to git.

## Install

```bash
git clone git@github.com:JeremyJC67/super-translator.git
cd super-translator
./install.sh        # symlinks this repo into ~/.claude/skills/super-translator
```

Then in Claude Code: `/super-translator <your sentence>`, or just send a sentence to translate.

Configure your languages in `config.md` (default anchor = Chinese, target = English; add a triangulation language anytime).

## Layout
```
SKILL.md            orchestrator (the skill entrypoint)
config.md           your settings: anchor, targets, preferences
profile.md          self-evolving learner memory (yours, version-controlled)
evolution.md        the two-level self-evolution protocol
lenses/             composable understanding modules (extensible)
docs/               research landscape & design notes
install.sh          symlink installer
```

## Status
MVP. Personal tool first; a possible research testbed for *self-evolving, measurable skills* second. Contributions / ideas welcome.

## License
MIT — see [LICENSE](LICENSE).
