---
name: text-browser
description: Use text-based browser tools for web browsing, scraping, and automation tasks without GUI. Use when you need to navigate websites, extract content, search the web, or interact with web pages programmatically.
---

# Text-Based Browser

This skill provides guidance for using text-based browser tools to interact with the web without a graphical interface. Perfect for automated scraping, content extraction, web research, and programmatic web interactions.

## Available Tools

### Web Search
**Tool:** `web_search`
**Use when:** You need to search the web for information
**Parameters:**
- `query`: Search terms
- `count`: Number of results (1-10)
- `country`: 2-letter country code for regional results
- `search_lang`: Language code for results
- `freshness`: Filter by discovery time

**Example:**
```bash
web_search(query="python web scraping", count=5)
```

### Web Fetch
**Tool:** `web_fetch`
**Use when:** You need to extract readable content from a specific URL
**Parameters:**
- `url`: HTTP or HTTPS URL to fetch
- `extractMode`: "markdown" or "text" (default: markdown)
- `maxChars`: Maximum characters to return

**Example:**
```bash
web_fetch(url="https://example.com", extractMode="markdown", maxChars=10000)
```

### Browser Automation
**Tool:** `browser`
**Use when:** You need to navigate, click, type, or interact with a website
**Actions:**
- `snapshot` - Get page structure and elements
- `navigate` - Go to a URL
- `act` - Perform actions (click, type, press, select, fill, wait)
- `screenshot` - Capture page visual
- `focus` - Switch to a specific tab

**Profiles:**
- `openclaw` - Isolated browser (default)
- `chrome` - Extension relay (requires user to attach tab)

**Example:**
```bash
browser(action="snapshot", profile="openclaw")
browser(action="navigate", targetUrl="https://example.com")
browser(action="act", request={"kind": "click", "ref": "submit-button"})
```

## Workflow Patterns

### Pattern 1: Quick Research
Use `web_search` + `web_fetch` for fast information gathering:
1. Search for topic
2. Fetch relevant URLs
3. Extract and summarize content

### Pattern 2: Page Scraping
Use `web_fetch` for straightforward content extraction:
1. Get URL
2. Fetch with markdown mode
3. Parse and extract needed information

### Pattern 3: Interactive Tasks
Use `browser` automation for complex interactions:
1. Navigate to page
2. Snapshot to understand structure
3. Perform actions (click, type, wait)
4. Capture results

### Pattern 4: Multi-Page Research
Combine tools for comprehensive research:
1. Search for multiple terms
2. Fetch top results
3. Use browser automation for sites requiring JavaScript
4. Aggregate findings

## Best Practices

### Choose the Right Tool

- **web_search** - When you don't know specific URLs
- **web_fetch** - When you have a URL and just need content
- **browser** - When you need to interact (forms, dynamic content, complex navigation)

### Optimize for Speed

- Use `web_fetch` whenever possible (fastest)
- Prefer `snapshot` over full-page interactions when possible
- Use `refs="aria"` for stable element references
- Set appropriate `limit` and `maxChars` to avoid bloat

### Handle Errors Gracefully

- Network errors: Retry with timeout
- 404/403: Check URL or try alternative
- Parse errors: Try different extract mode or use browser automation
- Rate limiting: Add delays between requests

### Respect Rate Limits

- Add delays between repeated requests to same domain
- Use `count` parameter wisely (3-5 is usually sufficient)
- Cache results when appropriate

## Advanced Techniques

### Pagination Handling
For paginated content, use browser automation:
1. Snapshot page
2. Extract next button reference
3. Click and wait
4. Repeat until end

### Form Submission
Use browser automation for forms:
1. Snapshot to find form fields
2. Use `act` with `kind: "fill"` for multiple fields
3. Submit with button click
4. Wait and verify results

### Content Extraction Strategy
1. Try `web_fetch` with markdown mode first (fastest)
2. If insufficient, use `browser` snapshot for structure
3. Use specific selectors or aria refs for precise extraction
4. Combine with regex parsing if needed

### Working with JavaScript Sites
When `web_fetch` returns incomplete content:
1. Use `browser` automation
2. Navigate to URL
3. Wait for page load (use `act` with `kind: "wait"` and `timeMs`)
4. Snapshot to get rendered content
5. Extract needed information

## Common Use Cases

### Product Research
Search for products, compare prices, extract specs:
```bash
web_search(query="laptop comparison", count=5)
# Fetch top 3 results
web_fetch(url="result1", extractMode="markdown")
web_fetch(url="result2", extractMode="markdown")
web_fetch(url="result3", extractMode="markdown")
```

### News Aggregation
Gather news from multiple sources:
```bash
web_search(query="tech news", count=5, freshness="pd")
web_fetch(url="news1", extractMode="markdown")
web_fetch(url="news2", extractMode="markdown")
```

### Documentation Lookup
Find and extract API docs or guides:
```bash
web_search(query="Python requests docs", count=3)
web_fetch(url="docs_url", extractMode="markdown", maxChars=50000)
```

### Data Extraction from Forms
Submit forms and scrape results:
```bash
browser(action="navigate", targetUrl="https://example.com/search")
browser(action="act", request={"kind": "fill", "fields": [{"ref": "query", "text": "search term"}]})
browser(action="act", request={"kind": "click", "ref": "search-button"})
browser(action="act", request={"kind": "wait", "timeMs": 2000})
browser(action="snapshot")
```

## Troubleshooting

### "Content not loading"
- Switch from `web_fetch` to `browser` automation
- Add wait times for dynamic content
- Check for JavaScript rendering requirements

### "Can't find element"
- Use `refs="aria"` for stable references
- Take new snapshot after page changes
- Verify element still exists after actions

### "Rate limit errors"
- Add delays between requests (1-3 seconds)
- Reduce `count` parameter
- Respect robots.txt and terms of service

### "Slow performance"
- Use `web_fetch` instead of `browser` when possible
- Reduce `maxChars` to only what's needed
- Cache results when repeating same queries

## Security Considerations

- Always respect robots.txt
- Don't overwhelm servers (add delays)
- Don't bypass authentication unless authorized
- Handle sensitive data carefully
- Log actions for transparency

## When to Use This Skill

Use text-browser when:
- You need to search the web
- You need to extract content from URLs
- You need to interact with web pages
- You need to scrape or research programmatically
- You need to work with web APIs that don't have direct integration

## See Also

- Agent Browser skill - For GUI-based browser automation
- web_search tool - For quick searches
- web_fetch tool - For content extraction
