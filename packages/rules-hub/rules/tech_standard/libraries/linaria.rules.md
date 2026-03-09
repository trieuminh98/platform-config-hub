---
description: Linaria usage standards
alwaysApply: false
globs:
  - "*.tsx"
  - "*.ts"
---

# Linaria Rules

<!-- target:all -->

- When defining styled components with props, always prefix props with `$` (e.g., `styled.div<{ $isVisible: boolean }>` and use `$isVisible` in the template).
- Before adding new styles, check `utilities.style.ts`. If a reusable style exists, use it; if a new style is likely reusable, extract and export it there.
- Prefer `styled.div` (or other `styled.<tag>`) over the `css` function.
- Keep declaration order as: `Types > Component > Styling` (put `Styling` at the bottom).
