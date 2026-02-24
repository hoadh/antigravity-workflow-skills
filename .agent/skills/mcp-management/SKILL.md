---
name: mcp-management
description: Manage Model Context Protocol (MCP) servers - discover, analyze, and execute tools/prompts/resources. Use when working with MCP integrations, discovering capabilities, filtering tools for tasks, executing tools programmatically, or implementing MCP client functionality.
---

# MCP Management

Manage and interact with MCP servers for tool discovery and execution.

## Capabilities

1. **Configuration**: MCP servers configured via IDE settings
2. **Discovery**: List tools, prompts, and resources across servers
3. **Tool Selection**: Analyze which tools are relevant for a task
4. **Execution**: Call MCP tools with proper parameter handling

## Quick Start

```bash
# List available tools
npx tsx scripts/cli.ts list-tools

# Execute a tool
npx tsx scripts/cli.ts call-tool <server> <tool> '<json-args>'
```

## References

- `references/configuration.md` - Server configuration
- `references/mcp-protocol.md` - Protocol details
