---
description: React rules specific to React hooks
alwaysApply: false
globs:
  - "*.hook.ts"
  - "hooks/**"
---

# React Hook Rules

## Hooks

- Custom hooks MUST start with `use` prefix and `.hook.ts` suffix (e.g., `useUserData.hook.ts`, `useLocalStorage.hook.ts`).
- Always return an object from custom hooks for better destructuring.
- Always use `useCallback`, `useMemo` for functions and values
- Always include ALL dependencies in dependency arrays - use ESLint plugin to enforce this.
- Avoid calling hooks conditionally or in loops - always call at the top level.
- Always add JSDOC
