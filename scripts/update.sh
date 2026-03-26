#!/bin/bash
# Ktirio AI Skill — Auto-update check
# Runs on every skill load. Pulls latest content from GitHub if available.
# Users never need to reinstall — updates flow automatically.

SKILL_DIR="${CLAUDE_SKILL_DIR:-$(cd "$(dirname "$0")/.." && pwd)}"

if [ -d "$SKILL_DIR/.git" ]; then
  cd "$SKILL_DIR" || exit 0
  git fetch origin main --quiet 2>/dev/null
  LOCAL=$(git rev-parse HEAD 2>/dev/null)
  REMOTE=$(git rev-parse origin/main 2>/dev/null)
  if [ "$LOCAL" != "$REMOTE" ] && [ -n "$REMOTE" ]; then
    git pull origin main --quiet 2>/dev/null
    echo "[ktirio-ai] Updated to latest version. New prompts, workflows, or glossary entries may be available."
  else
    echo "[ktirio-ai] Up to date."
  fi
else
  echo "[ktirio-ai] Running from local copy."
fi
