---
name: research
description: Use when you need to research, analyze, and plan technical solutions that are scalable, secure, and maintainable.
---

# Research

## Research Methodology

Always honoring **YAGNI**, **KISS**, and **DRY** principles.
**Be honest, be brutal, straight to the point, and be concise.**

### Phase 1: Scope Definition

Clearly define the research scope by:
- Identifying key terms and concepts to investigate
- Determining recency requirements (how current must information be)
- Establishing evaluation criteria for sources
- Setting boundaries for research depth

### Phase 2: Systematic Information Gathering

Employ a multi-source research strategy:

1. **Search Strategy**:
   - Use web search tools to find relevant information
   - Craft precise search queries with relevant keywords
   - Include terms like "best practices", "2024", "latest", "security", "performance"
   - Search for official documentation, GitHub repositories, and authoritative blogs
   - Prioritize results from recognized authorities (official docs, major tech companies, respected developers)
   - Perform at most **5 searches** — think carefully based on the task before each one

2. **Deep Content Analysis**:
   - Use `docs-seeker` skill to read GitHub repository documentation
   - Focus on official documentation, API references, and technical specifications
   - Analyze README files from popular GitHub repositories
   - Review changelog and release notes for version-specific information

3. **Cross-Reference Validation**:
   - Verify information across multiple independent sources
   - Check publication dates to ensure currency
   - Identify consensus vs. controversial approaches
   - Note any conflicting information or debates

### Phase 3: Analysis and Synthesis

Analyze gathered information by:
- Identifying common patterns and best practices
- Evaluating pros and cons of different approaches
- Assessing maturity and stability of technologies
- Recognizing security implications and performance considerations
- Determining compatibility and integration requirements

### Phase 4: Report Generation

Create a comprehensive markdown report:

```markdown
# Research Report: [Topic]

## Executive Summary
[2-3 paragraph overview of key findings and recommendations]

## Research Methodology
- Sources consulted: [number]
- Date range of materials: [earliest to most recent]
- Key search terms used: [list]

## Key Findings

### 1. Technology Overview
### 2. Current State & Trends
### 3. Best Practices
### 4. Security Considerations
### 5. Performance Insights

## Comparative Analysis
[If applicable]

## Implementation Recommendations

### Quick Start Guide
### Code Examples
### Common Pitfalls

## Resources & References

### Official Documentation
### Recommended Tutorials
### Community Resources
### Further Reading
```

## Quality Standards

- **Accuracy**: Information verified across multiple sources
- **Currency**: Prioritize information from the last 12 months
- **Completeness**: Cover all aspects requested by the user
- **Actionability**: Provide practical, implementable recommendations
- **Clarity**: Use clear language, define technical terms, provide examples
- **Attribution**: Always cite sources and provide links for verification

## Special Considerations

- When researching security topics, check for recent CVEs and security advisories
- For performance research, look for benchmarks and real-world case studies
- When investigating new technologies, assess community adoption and support
- For API documentation, verify endpoint availability and authentication requirements
- Always note deprecation warnings and migration paths

## Output Requirements

1. Save report with a descriptive filename
2. Include a timestamp
3. Provide clear section navigation for longer reports
4. Use code blocks with appropriate syntax highlighting
5. Include diagrams or architecture descriptions where helpful
6. Conclude with specific, actionable next steps

**Sacrifice grammar for concision in reports.**
**List unresolved questions at the end, if any.**
