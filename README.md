# Text Browser Skill - Complete

**Created:** 2026-02-06 12:20 Muscat
**Status:** ✅ Ready to publish
**Location:** `/home/ubuntu/.openclaw/workspace/text-browser/`

---

## Skill Overview

**Name:** text-browser
**Description:** Use text-based browser tools for web browsing, scraping, and automation tasks without GUI. Use when you need to navigate websites, extract content, search the web, or interact with web pages programmatically.

## Features Covered

### Web Search
- Search the web with customizable parameters
- Regional results with country codes
- Freshness filters (past day/week/month/year)
- Language filtering

### Web Fetch
- Extract content from URLs in markdown or text format
- Character limits for optimized performance
- Fast content extraction without browser overhead

### Browser Automation
- Navigate, click, type, and interact with web pages
- Work with dynamic/JavaScript sites
- Form submission and data extraction
- Two profiles: isolated browser and Chrome extension relay

### Workflow Patterns
1. **Quick Research** - web_search + web_fetch for fast info gathering
2. **Page Scraping** - web_fetch for straightforward extraction
3. **Interactive Tasks** - browser automation for complex interactions
4. **Multi-Page Research** - Combine tools for comprehensive research

### Best Practices
- Choose the right tool for each task
- Optimize for speed and performance
- Handle errors gracefully
- Respect rate limits

### Common Use Cases
- Product research and price comparison
- News aggregation
- Documentation lookup
- Data extraction from forms
- API documentation scraping

## Files

```
text-browser/
├── SKILL.md           (6.9KB) - Complete skill documentation
├── PUBLISH_GUIDE.md   (2.5KB) - Publishing instructions
└── publish.sh         (1KB)   - Automated publish script
```

## Publishing to ClawHub

### Authentication Required

Choose one of these methods:

**Option 1: GitHub Personal Access Token**
1. Go to https://github.com/settings/tokens
2. Generate new token with `repo` scope
3. Run: `clawhub login --token YOUR_TOKEN`

**Option 2: Browser Login (Recommended)**
1. Run: `clawhub login`
2. Browser opens to GitHub
3. Authorize ClawHub

### Publish Commands

**Automated script:**
```bash
cd /home/ubuntu/.openclaw/workspace/text-browser
./publish.sh
```

**Manual command:**
```bash
cd /home/ubuntu/.openclaw/workspace/text-browser
clawhub publish . --slug text-browser --name "Text Browser" --version 1.0.0 --changelog "Initial release"
```

### Expected Result

After successful publish:
- ✅ Skill uploaded to ClawHub
- 📦 Available at: https://clawhub.com/skills/text-browser
- 🔗 Installable by: `clawhub install text-browser`

## Usage After Publishing

Once published, users can install the skill:

```bash
clawhub install text-browser
```

And use it for web browsing tasks:
- "Research laptop prices"
- "Extract content from this URL"
- "Scrape this website"
- "Submit this form and get results"

## Next Steps

1. **Authenticate with ClawHub** (required for publishing)
2. **Run publish script** or manual command
3. **Verify publication** at ClawHub
4. **Test installation** on fresh system

---

**Skill is complete and ready to publish once authenticated!**
