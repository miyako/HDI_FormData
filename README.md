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

## Model Selection Assessment

Every session in this project used either **Claude Opus 4.6** or **Claude Sonnet 5**. The table below reviews each session against the actual task complexity to assess whether the model choice was cost-effective.

### Sessions where model choice was appropriate

These sessions used a model that matched the task complexity.

| Session | Model | Turns | Task | Why it fits |
|---------|-------|------:|------|-------------|
| Replace menu wrappers | Sonnet 5 | 17 | Mechanical refactor guided by instructions | Pattern-based replacement -- no deep reasoning needed |
| Hide subroutines | Sonnet 5 | 20 | Targeted property edits on method files | Well-scoped, single-concern edit |
| Add Branches section | Sonnet 5 | 13 | README text editing | Simple documentation task |
| Update Branches table | Sonnet 5 | 13 | Table update | Formulaic content insertion |
| Add token usage section | Sonnet 5 | 21 | Data entry and formatting | Straightforward markdown authoring |
| XLIFF localisation | Opus 4.6 | 40 | Multi-file XML generation with 4D-specific conventions | Cross-file reasoning, domain-specific edge cases (capitalised language codes, XLIFF structure) |
| Modernise startup dialog | Opus 4.6 | 58 | Architectural redesign of dialog lifecycle | Design decisions about form/object method decomposition; highest complexity in the project |

### Sessions where Opus was likely overkill

These sessions used Opus 4.6 for tasks that Sonnet 5 (or even Haiku 4.5) could handle, representing avoidable token spend.

| Session | Model | Turns | Input Tokens | Task | Recommended model |
|---------|-------|------:|-------------:|------|-------------------|
| Add untracked project files | Opus 4.6 | 7 | 376,155 | `git add` and commit | Haiku 4.5 -- trivial file operations |
| Fix c_object syntax error | Opus 4.6 | 48 | 3,334,377 | Replace `C_*` declarations with `var`/`#DECLARE` | Sonnet 5 -- mechanical find-and-replace refactor |
| Sync main branches | Opus 4.6 + Sonnet 5 | 22 | 821,737 | Git fetch, merge, push | Sonnet 5 -- git operations need no deep reasoning |
| Update README branches (chat) | Opus 4.6 | 24 | 863,169 | Edit README text | Sonnet 5 -- plain text editing |

The "Fix c_object syntax error" session is the largest overspend: 3.3M input tokens on Opus for what amounts to a pattern-based replacement task with clear instruction files.

### Borderline -- Sonnet 5 probably sufficient

| Session | Model | Turns | Task | Notes |
|---------|-------|------:|------|-------|
| Dark mode support | Opus 4.6 | 48 | CSS stylesheets + macOS Tahoe Liquid Glass | Sonnet handles CSS/UI well, but Liquid Glass is a very new API and may benefit from Opus's broader training. Borderline call. |

### Mode Selection Guidance

**Interactive mode was the right choice for most sessions.** Many sessions had mid-stream corrections -- wrong 4D command names, missed requirements, or URL fixes. The XLIFF session (40 turns), modernise startup dialog (58 turns), and dark mode session (48 turns) all needed real-time steering that autopilot would not have handled.

**With documented instruction files, these task types are now autopilot-ready:**
- Mechanical refactors with clear specs (variable declarations, menu wrappers, method visibility)
- README/documentation updates (branches table, token usage sections)
- Git housekeeping (adding files, syncing branches)

**Plan mode would have helped with:**
- **XLIFF localisation** -- complex multi-file task where the agent missed capitalised language codes and used wrong 4D command names. A plan review step would have caught scope issues and domain conventions before execution began.
- **Modernise startup dialog** -- the 58-turn count suggests significant back-and-forth. An upfront plan could have reduced iteration by agreeing on the dialog lifecycle architecture first.
