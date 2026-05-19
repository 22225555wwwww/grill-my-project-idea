#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'USAGE'
Install grill-my-project-idea as an AI skill/rule.

Usage:
  ./scripts/install.sh <target>

Targets:
  codex           Install Codex skill to ~/.codex/skills/grill-my-project-idea
  claude          Install Claude personal skill to ~/.claude/skills/grill-my-project-idea
  claude-project  Install Claude project skill to ./.claude/skills/grill-my-project-idea
  cursor          Install Cursor project rule to ./.cursor/rules/grill-my-project-idea.mdc
  all             Install codex, claude, and cursor

Examples:
  ./scripts/install.sh codex
  ./scripts/install.sh claude
  ./scripts/install.sh cursor
  ./scripts/install.sh all
USAGE
}

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
target="${1:-}"

copy_file() {
  local source="$1"
  local destination="$2"
  mkdir -p "$(dirname "$destination")"
  cp "$source" "$destination"
  printf 'Installed %s\n' "$destination"
}

install_codex() {
  copy_file \
    "$repo_root/adapters/codex/SKILL.md" \
    "$HOME/.codex/skills/grill-my-project-idea/SKILL.md"
}

install_claude() {
  copy_file \
    "$repo_root/adapters/claude/SKILL.md" \
    "$HOME/.claude/skills/grill-my-project-idea/SKILL.md"
}

install_claude_project() {
  copy_file \
    "$repo_root/adapters/claude/SKILL.md" \
    "$PWD/.claude/skills/grill-my-project-idea/SKILL.md"
}

install_cursor() {
  copy_file \
    "$repo_root/adapters/cursor/grill-my-project-idea.mdc" \
    "$PWD/.cursor/rules/grill-my-project-idea.mdc"
}

case "$target" in
  codex)
    install_codex
    ;;
  claude)
    install_claude
    ;;
  claude-project)
    install_claude_project
    ;;
  cursor)
    install_cursor
    ;;
  all)
    install_codex
    install_claude
    install_cursor
    ;;
  -h|--help|help|"")
    usage
    ;;
  *)
    printf 'Unknown target: %s\n\n' "$target" >&2
    usage >&2
    exit 1
    ;;
esac
