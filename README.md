# HDI_FormData

A 4D v17 **HDI** (How Do I) binary database demonstrating simplifyied communications with forms, converted to a 4D project using 4D 21. The codebase was then updated and cleaned up with the help of **GitHub Copilot**.

## Origin

This project started as a binary `.4DB` example database originally distributed with 4D v17. It was converted to the modern project architecture (`.4DProject`) using 4D 21's built-in binary-to-project conversion tool.

- **Blog post:** [Passing data back and forth between forms](https://blog.4d.com/passing-data-back-and-forth-between-forms/)
- **Original download:** [HDI_FormData.zip](https://download.4d.com/Demos/4D_v16_R5/HDI_FormData.zip)

## Branches

Each branch represents a distinct modernisation effort, guided by a corresponding Copilot instruction file.

| Branch | Description | Instructions |
|--------|-------------|--------------|
| [`miyako-fix-c-object-syntax-error`](../../tree/miyako-fix-c-object-syntax-error) | Replace deprecated `C_*` declarations with modern `var` / `#DECLARE` syntax and fix `C_OBJECT` syntax errors | [variable.declarations.instructions.md](.github/copilot/instructions/variable.declarations.instructions.md) |
| [`miyako-replace-menu-method-wrappers`](../../tree/miyako-replace-menu-method-wrappers) | Replace legacy menu method wrappers with 4D standard actions | [menu.instructions.md](.github/copilot/instructions/menu.instructions.md) |
| [`miyako-xliff-localization`](../../tree/miyako-xliff-localization) | Add XLIFF localisation for menus, forms, and method code | [localisation.instructions.md](.github/copilot/instructions/localisation.instructions.md) |
| [`miyako-reimagined-umbrella`](../../tree/miyako-reimagined-umbrella) | Hide subroutines and form-dependent methods from the Run Method dialog | [method.visibility.instructions.md](.github/copilot/instructions/method.visibility.instructions.md) |
| [`miyako-modernise-startup-dialog`](../../tree/miyako-modernise-startup-dialog) | Modernise the startup dialog pattern with form and object methods | [startup.instructions.md](.github/copilot/instructions/startup.instructions.md) |
| [`miyako-dark-mode-support`](../../tree/miyako-dark-mode-support) | Add dark mode support with CSS stylesheets and macOS Tahoe Liquid Glass appearance | [css.instructions.md](.github/copilot/instructions/css.instructions.md), [tahoe.css.instructions.md](.github/copilot/instructions/tahoe.css.instructions.md), [listbox.instructions.md](.github/copilot/instructions/listbox.instructions.md) |

## Copilot Token Usage

All sessions used **Claude Opus 4.6** via GitHub Copilot.

| Session | Input Tokens | Output Tokens | Turns |
|---------|-------------:|--------------:|------:|
| Sync main with origin | 7,147,562 | 20,999 | 116 |
| XLIFF localisation | 4,787,225 | 24,720 | 80 |

### Model Selection Guidance

| Session | Turns | Why cheaper works |
|---|---|---|
| **Token usage summary** | 13 | Pure data retrieval/reporting — Haiku 4.5 is fine |
| **Sync main with origin** | 116 | Git operations, no complex reasoning — Sonnet 5 |
| **Replace m_quit with quit action** | 23 | Mechanical rename/refactor — Sonnet 5 |
| **Hide subroutine methods** | 17 | Targeted, well-scoped code edit — Sonnet 5 |

### Borderline (Sonnet 5 likely sufficient):

| Session | Turns | Notes |
|---|---|---|
| **Liquid glass buttons** | 18 | UI styling — Sonnet handles CSS/UI well |
| **Disable truncate ellipsis** | 58 | Focused change, many turns suggest iteration — Sonnet |

### Mode Selection Guidance

**Interactive was the right call for most of these.** Many sessions had mid-stream corrections (wrong 4D command names, missed requirements, URL fixes). The XLIFF session (19 turns), modernise session (15 turns), and sync/setup session (25 turns) all needed real-time steering — autopilot would have gone off-track.

**Now with documented instructions, these types are autopilot-ready:**
- Simple property changes ("disable truncate ellipsis", "liquid glass buttons", "hide subroutine methods") — clear spec, mechanical edits
- "Replace m_quit with quit action" — well-scoped refactor
- PR creation / session summaries — formulaic end-of-session steps

**Plan mode would have helped with:**
- **XLIFF localisation** — complex multi-file task where the agent missed capitalised language codes and used wrong command names. A plan review would have caught scope issues before execution.

## Screenshots

<img width="724" height="592" alt="Screenshot 2026-07-22 at 14 33 37" src="https://github.com/user-attachments/assets/59d8d63c-9265-4be2-adc0-d594be493ab0" />
<img width="1160" height="702" alt="Screenshot 2026-07-22 at 14 33 47" src="https://github.com/user-attachments/assets/b49c1b8d-cb7f-45cc-8577-4f8d91494657" />
<img width="1160" height="702" alt="Screenshot 2026-07-22 at 14 33 55" src="https://github.com/user-attachments/assets/a3ba8131-997c-4a7b-8669-b62a9bce7dc7" />

