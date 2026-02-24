---
name: mcp-builder
description: Guide for creating high-quality MCP (Model Context Protocol) servers that enable LLMs to interact with external services through well-designed tools. Use when building MCP servers to integrate external APIs or services, in Python (FastMCP) or Node/TypeScript (MCP SDK).
---

# MCP Server Development

Create MCP servers that enable LLMs to interact with external services.

## Development Phases

### Phase 1: Research & Planning
- Study MCP protocol: fetch `https://modelcontextprotocol.io/llms-full.txt`
- Study target API documentation exhaustively
- Plan tools, shared utilities, input/output design, error handling

### Phase 2: Implementation
- Set up project structure (Python or TypeScript)
- Implement shared utilities first
- Implement tools systematically with proper validation and documentation

### Phase 3: Review & Refine
- DRY check, composability, consistency, error handling, type safety
- Build and verify

### Phase 4: Create Evaluations
- 10 complex, realistic questions testing tool effectiveness
- Each independent, read-only, verifiable

## References

- `reference/mcp_best_practices.md` - Universal MCP guidelines
- `reference/python_mcp_server.md` - Python implementation
- `reference/node_mcp_server.md` - TypeScript implementation
- `reference/evaluation.md` - Evaluation creation
