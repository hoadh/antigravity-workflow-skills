# Root Cause Tracing

Systematically trace bugs backward through call stack to find original trigger.

## Core Principle

**Trace backward through call chain until finding original trigger, then fix at source.**

Bugs often manifest deep in call stack. Instinct is to fix where error appears, but that's treating symptom.

## When to Use

**Use when:**
- Error happens deep in execution (not at entry point)
- Stack trace shows long call chain
- Unclear where invalid data originated
- Need to find which test/code triggers problem

## The Tracing Process

### 1. Observe the Symptom
```
Error: git init failed in /Users/jesse/project/packages/core
```

### 2. Find Immediate Cause
What code directly causes this?
```typescript
await execFileAsync('git', ['init'], { cwd: projectDir });
```

### 3. Ask: What Called This?
```typescript
WorktreeManager.createSessionWorktree(projectDir, sessionId)
  → called by Session.initializeWorkspace()
  → called by Session.create()
  → called by test at Project.create()
```

### 4. Keep Tracing Up
What value was passed?
- `projectDir = ''` (empty string!)
- Empty string as `cwd` resolves to `process.cwd()`
- That's the source code directory!

### 5. Find Original Trigger
Where did empty string come from?
```typescript
const context = setupCoreTest(); // Returns { tempDir: '' }
Project.create('name', context.tempDir); // Accessed before beforeEach!
```

## Adding Stack Traces

When can't trace manually, add instrumentation:

```typescript
async function gitInit(directory: string) {
  const stack = new Error().stack;
  console.error('DEBUG git init:', {
    directory,
    cwd: process.cwd(),
    stack,
  });
  await execFileAsync('git', ['init'], { cwd: directory });
}
```

**Critical:** Use `console.error()` in tests (not logger — may not show)

**Run and capture:**
```bash
npm test 2>&1 | grep 'DEBUG git init'
```

## Key Principle

**NEVER fix just where error appears.** Trace back to find original trigger.

When found immediate cause:
- Can trace one level up? → Trace backwards
- Is this the source? → Fix at source
- Then add validation at each layer (see defense-in-depth.md)
