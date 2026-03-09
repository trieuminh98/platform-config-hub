---
description: React component design and composition rules
alwaysApply: false
globs:
  - "*.tsx"
  - "components/**"
---

# React Component Rules

## Responsibility and Boundaries

- Prefer **pure UI** components: zero business logic. Push data shaping, validation, and side-effects up to containers/hooks.
- When a component needs data fetching or side effects, split into:
  - `Container` (data/logic) + `View` (presentational), or
  - `useSomething` hook + pure UI component.
- Keep component props minimal and intentional; avoid "god" props. Prefer cohesive prop groups.
- Expose stable, semantic `className`/slot props only when customization is necessary; avoid leaking DOM structure.
- Keep props drilling depth <=3; refactor with composition/compound or state management when it grows.

## Composition Patterns

- If a component has multiple optional subcomponents inside, consider **Composition Components Pattern** (pass children/slots) to keep APIs flexible.
- If parent and child components need shared data/behavior, consider **Compound Components Pattern** using `useContext` (keep the context private to the compound root).
