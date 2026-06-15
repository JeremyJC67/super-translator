#!/usr/bin/env bash
# Install Super Translator as a Claude Code skill by symlinking this repo
# into ~/.claude/skills/super-translator.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
LINK="$SKILLS_DIR/super-translator"

mkdir -p "$SKILLS_DIR"

if [ -e "$LINK" ] || [ -L "$LINK" ]; then
  if [ -L "$LINK" ] && [ "$(readlink "$LINK")" = "$REPO_DIR" ]; then
    echo "Already installed: $LINK -> $REPO_DIR"
    exit 0
  fi
  echo "Refusing to overwrite existing $LINK (not our symlink)." >&2
  echo "Remove it manually, then re-run." >&2
  exit 1
fi

ln -s "$REPO_DIR" "$LINK"
echo "Installed: $LINK -> $REPO_DIR"
echo "Use it in Claude Code with: /super-translator <sentence>"
