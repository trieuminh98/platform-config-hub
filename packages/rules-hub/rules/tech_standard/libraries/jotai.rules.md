---
description: Jotai atom standards
alwaysApply: false
globs:
  - "atoms/**/*.ts"
  - "atoms/**/*.tsx"
---

# Jotai Rules

<!-- target:all -->

- All atoms live under an `atoms/` folder and files use the `.atom.ts` suffix (e.g., `onboarding.atom.ts`).
- For atoms that need manual triggering, create a `getDefaultStore()` and expose typed helpers that wrap `store.set(...)` instead of calling atoms directly.
- Keep atom APIs focused: avoid leaking internal state shapes; export helpers/selectors as needed.
