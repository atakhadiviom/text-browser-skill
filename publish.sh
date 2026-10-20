#!/bin/bash
# Publish text-browser skill to ClawHub

set -e

echo "==================================="
echo "Text Browser Skill Publisher"
echo "==================================="
echo ""

# Check if logged in
if ! clawhub whoami &>/dev/null; then
    echo "❌ Not authenticated with ClawHub"
    echo ""
    echo "Please authenticate first:"
    echo "  Option 1: clawhub login --token YOUR_GITHUB_TOKEN"
    echo "  Option 2: clawhub login (opens browser)"
    echo ""
    exit 1
fi

echo "✅ Authenticated as: $(clawhub whoami)"
echo ""

# Navigate to skill directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Publish skill
echo "📦 Publishing skill to ClawHub..."
echo ""

clawhub publish . \
    --slug text-browser \
    --name "Text Browser" \
    --version 1.0.0 \
    --changelog "Initial release - Text-based browser automation skill for web research, scraping, and automation"

echo ""
echo "✅ Skill published successfully!"
echo ""
echo "📦 Skill URL: https://clawhub.com/skills/text-browser"
echo ""
