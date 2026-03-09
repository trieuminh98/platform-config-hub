---
description: React core rules
alwaysApply: false
globs:
  - "*.tsx"
  - "*.ts"
  - "*.hook.ts"
  - "hooks/**"
---

# React Rules

## React Component

- Avoid `React.FC` unless required; declare `children` explicitly with `PropsWithChildren`.
- Props drilling prevention strategies (depth max <=3)
- Define all components as **arrow functions** (no `function` declarations).
- Use `useMemo`, `useCallback`, `React.memo` **only** when:
  - Render cost is measured, AND
  - Props are stable, AND
  - Re-render is wasteful.
    If applied, add a short comment/PR note explaining WHY.

## Type Safety in Components

- Avoid implicit `any` in event handlers; type them explicitly (e.g., `(e: React.MouseEvent<HTMLButtonElement>) => void`).
