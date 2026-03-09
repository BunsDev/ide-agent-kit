#!/usr/bin/env bash
# codex_room_autopost.sh
# Dedicated room-duty wrapper for Codex agents.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

export POLLER_NAME="${POLLER_NAME:-codex}"
export SESSION="${SESSION:-codex-room-autopost}"
export AGENT_HANDLE="${AGENT_HANDLE:-@CodexMB}"
export SOURCE_TAG="${SOURCE_TAG:-[codex][tmux-ok]}"
export API_KEY_ENV_CANDIDATES="${API_KEY_ENV_CANDIDATES:-CODEXMB_API_KEY,CODEX_API_KEY,ANTIGRAVITY_API_KEY}"
export STATE_PREFIX="${STATE_PREFIX:-codex}"
export SMART_MODE="${SMART_MODE:-1}"
export MENTION_ONLY="${MENTION_ONLY:-0}"
export SKIP_PRESTART_BACKLOG="${SKIP_PRESTART_BACKLOG:-1}"
export NO_PLACEHOLDER_ACK="${NO_PLACEHOLDER_ACK:-1}"

exec "$SCRIPT_DIR/antigravity_room_autopost.sh" "$@"
