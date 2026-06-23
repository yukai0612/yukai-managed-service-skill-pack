#!/usr/bin/env bash
set -euo pipefail

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="${HOME}/.claude/skills"

mkdir -p "${TARGET_DIR}"
cp -R "${SOURCE_DIR}/.claude/skills/"* "${TARGET_DIR}/"

echo "Installed Yukai Managed Service Skill Pack to ${TARGET_DIR}"
echo "Restart Claude Code only if the top-level skills directory did not exist before this install."
