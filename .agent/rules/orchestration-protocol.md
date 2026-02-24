# Orchestration Protocol

## Sequential Chaining

Chain tasks when they have dependencies or require outputs from previous steps:
* **Planning → Implementation → Testing → Review**: Use for feature development
* **Research → Design → Code → Documentation**: Use for new system components
* Each step completes fully before the next begins
* Pass context and outputs between steps in the chain

## Parallel Execution

Execute multiple independent tasks simultaneously:
* **Code + Tests + Docs**: When implementing separate, non-conflicting components
* **Multiple Feature Branches**: Different tasks working on isolated features
* **Cross-platform Development**: iOS and Android specific implementations
* **Careful Coordination**: Ensure no file conflicts or shared resource contention
* **Merge Strategy**: Plan integration points before parallel execution begins
