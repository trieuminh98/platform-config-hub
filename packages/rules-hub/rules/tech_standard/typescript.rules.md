---
description: TypeScript core type safety and module rules
alwaysApply: false
globs:
  - "*.tsx"
  - "*.ts"
---

# TypeScript Rules

## Types and Type Safety

- Avoid explicit type annotations when TypeScript can infer types.
- Avoid implicitly `any` variables; explicitly type when necessary (e.g., `let a: number` instead of `let a`).
- Use the most accurate type possible (e.g., prefer `Record<PropertyKey, unknown>` over `object` and `any`).
- Prefer `type` over `interface` for object shapes. Use `interface` only when need declaration merging or extending.
- Prefer `as const satisfies XyzInterface` over plain `as const` when suitable.
- Prefer `@ts-expect-error` over `@ts-ignore` over `as any`.
- Avoid meaningless null/undefined parameters; design strict function contracts.
- Use `Generic types` for reusable components if needed.
- If updating `tsconfig.json`, use context7 to get latest docs for best practice setup.

## Imports and Modules

- Prefer type-only imports/exports: `import type { Foo } from 'pkg'`.

## Advanced Patterns

- Use type predicates: `value is string`, discriminated unions, `typeof`, `instanceof`.
- Constrain generics: `<T extends U>`, use generic constraints for inference.
- Use utility types: `Partial`, `Required`, `Readonly`, `Pick`, `Omit`, `Record`, `ReturnType`, `Parameters`.
- Use `as const` for readonly literals, `satisfies` for type checking without widening.
- Use function overloads for type-safe variants (most specific first).
- Use template literal types for string manipulation: `on${Capitalize<T>}`.
