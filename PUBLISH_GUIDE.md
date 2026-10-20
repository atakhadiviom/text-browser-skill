# Text Browser Skill - Publishing to ClawHub

## Skill Created ✅

**Structure:** ✅ Complete (SKILL.md present)
**Description:** Text-based browser automation for web research, scraping, and programmatic interactions

## Skill Content

The skill includes comprehensive guidance for:

- **Web Search** - Using `web_search` tool
- **Web Fetch** - Using `web_fetch` tool
- **Browser Automation** - Using `browser` tool
- **Workflow Patterns** - Research, scraping, interactive tasks
- **Best Practices** - Optimization, error handling, rate limiting
- **Common Use Cases** - Product research, news aggregation, data extraction

## Publishing to ClawHub

To publish this skill to ClawHub, we need GitHub authentication.

### Option 1: Use GitHub Personal Access Token

**Steps:**
1. Go to https://github.com/settings/tokens
2. Click "Generate new token" (classic or fine-grained)
3. Select scopes:
   - `repo` (for public/private repository access)
   - OR `public_repo` for public repos only
4. Generate and copy the token
5. Run:
   ```bash
   clawhub login --token YOUR_TOKEN_HERE
   ```

**Then publish:**
```bash
./publish.sh
# or manually:
clawhub publish . --slug text-browser --name "Text Browser" --version 1.0.0 --changelog "Initial release - Text-based browser automation skill for web research, scraping, and automation"
```

### Option 2: Browser Login (Recommended)

**Steps:**
1. Run login command:
   ```bash
   clawhub login
   ```
2. Browser will open to GitHub authorization page
3. Authorize ClawHub access
4. Token will be stored automatically

**Then publish:**
```bash
./publish.sh
# or manually:
clawhub publish . --slug text-browser --name "Text Browser" --version 1.0.0 --changelog "Initial release - Text-based browser automation skill for web research, scraping, and automation"
```

## Current Status

- ✅ Skill created and documented
- ✅ Git configured (user: Ata Khadivi)
- ⚠️  ClawHub authentication needed
- 📦 Ready to publish once authenticated

## Skill Details

- **Name:** text-browser
- **Slug:** text-browser
- **Version:** 1.0.0
- **Files:** SKILL.md (6.9KB)

## Next Steps

1. **Authenticate with ClawHub** using one of the options above
2. **Run publish command** to upload to ClawHub
3. **Skill will be available** at https://clawhub.com/skills/text-browser

---

**Which authentication method would you like to use?**
- Option 1: GitHub Personal Access Token (provide token)
- Option 2: Browser login (interactive)
