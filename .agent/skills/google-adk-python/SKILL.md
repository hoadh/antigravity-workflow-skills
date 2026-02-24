---
name: google-adk-python
description: Build AI agents with Google Agent Development Kit (ADK) Python. Create single or multi-agent systems with tool integration, workflow orchestration (sequential, parallel, loop), Google Search and Code Execution tools, deployment to Vertex AI or Cloud Run, and human-in-the-loop approval flows.
---

# Google ADK Python

Open-source, code-first toolkit for building, evaluating, and deploying AI agents.

## Agent Types

- **LlmAgent**: LLM-powered with dynamic routing and tool use
- **SequentialAgent**: Execute agents in defined order
- **ParallelAgent**: Run multiple agents concurrently
- **LoopAgent**: Repeat execution with iteration logic

## Quick Start

```bash
pip install google-adk
```

```python
from google.adk.agents import LlmAgent
from google.adk.tools import google_search

agent = LlmAgent(
    name="assistant",
    model="gemini-2.5-flash",
    instruction="You are a helpful assistant.",
    tools=[google_search]
)
```

## Resources

- GitHub: https://github.com/google/adk-python
- Docs: https://google.github.io/adk-docs/
