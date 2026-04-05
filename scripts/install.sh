#!/usr/bin/env bash
set -euo pipefail

REPO="docpler/docpler-cli"
BIN_DIR="${CLAUDE_PLUGIN_ROOT:-$(dirname "$(dirname "$0")")}/bin"

# Get latest version from GitHub API
VERSION=$(curl -fsSL "https://api.github.com/repos/${REPO}/releases/latest" | grep '"tag_name"' | sed 's/.*: "//;s/".*//')

if [ -z "$VERSION" ]; then
  echo "Error: Could not determine latest version"
  exit 1
fi

# Detect platform
OS="$(uname -s)"
ARCH="$(uname -m)"

case "${OS}-${ARCH}" in
  Linux-x86_64)   TARGET="x86_64-unknown-linux-gnu" ;;
  Darwin-arm64)   TARGET="aarch64-apple-darwin" ;;
  Darwin-x86_64)  TARGET="x86_64-apple-darwin" ;;
  *)              echo "Unsupported platform: ${OS}-${ARCH}"; exit 1 ;;
esac

BINARY="docpler-${TARGET}"
URL="https://github.com/${REPO}/releases/download/${VERSION}/${BINARY}"

echo "Downloading docpler ${VERSION} for ${TARGET}..."
curl -fsSL "${URL}" -o "${BIN_DIR}/docpler"
chmod +x "${BIN_DIR}/docpler"
echo "docpler installed to ${BIN_DIR}/docpler"
