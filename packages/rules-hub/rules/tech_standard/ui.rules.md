---
description: UI and accessibility standards (WCAG 2.2 AA)
alwaysApply: false
---

# UI & Accessibility

## Accessibility (MUST)

- Follow WCAG 2.2 AA.
- Ensure semantic roles, names, and states are programmatically determinable (WCAG 4.1.2).
- Use proper WAI-ARIA attributes when native HTML cannot express states.
- Provide alt text for images, aria-labels, form labels.
- Include keyboard events with click events; keyboard + screen reader parity for all interactive elements.
- Set `lang` attribute, form labels (`htmlFor`), media captions, proper heading hierarchy.
- NO positive `tabIndex`, NO `autofocus`, NO ambiguous link text ("click here").
