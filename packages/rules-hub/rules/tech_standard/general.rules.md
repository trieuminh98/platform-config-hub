---
alwaysApply: true
---

# Core Standards

## Core Rules

- Make the SMALLEST reasonable changes. Prioritize readability > maintainability > performance > other else.
- NEVER modify unrelated code or `.cursor/rules` without permission.
- MUST use TypeScript. Follow existing patterns. Always handle Promise rejections.
- ALWAYS HAVE 3 state view: Empty, Loading, and Error (API Error and Network Error)
- ALWAYS keep in mind with pattern: DRY.

## File Naming

- Follow the current repository file naming pattern.

## Lint & Format

- Code comments MUST be in English (explain why/how).
- Enable Prettier + ESLint (auto-fix on save).
- pass lint, format, and tests.

# Async Patterns

- Prefer `async`/`await` over callbacks or chained `.then` promises.
