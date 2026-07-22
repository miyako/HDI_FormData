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

Actual per-session token usage, pulled from Copilot session records.

| Session | Branch | Model(s) | Input Tokens | Output Tokens | Turns |
|---------|--------|----------|-------------:|--------------:|------:|
| Add untracked project files | `miyako-glowing-funicular` | Claude Opus 4.6 | 376,155 | 996 | 7 |
| Fix c_object syntax error | `miyako-fix-c-object-syntax-error` | Claude Opus 4.6 | 3,334,377 | 14,968 | 48 |
| Add Branches section to README | `miyako-add-branches-to-readme` | Claude Sonnet 5 | 591,373 | 2,299 | 13 |
| Sync main branches | *(no dedicated branch)* | Claude Opus 4.6, Claude Sonnet 5 | 821,737 | 2,919 | 22 |
| Replace menu method wrappers | `miyako-replace-menu-method-wrappers` | Claude Sonnet 5 | 866,373 | 5,067 | 17 |
| XLIFF localisation | `miyako-xliff-localization` | Claude Opus 4.6 | 2,238,032 | 14,665 | 40 |
| Hide subroutines from Run Method dialog | `miyako-reimagined-umbrella` | Claude Sonnet 5 | 1,052,029 | 6,830 | 20 |
| Modernise startup dialog | `miyako-modernise-startup-dialog` | Claude Opus 4.6 | 5,239,027 | 23,743 | 58 |
| Dark mode support | `miyako-dark-mode-support` | Claude Opus 4.6 | 3,562,636 | 17,024 | 48 |
| Update README branches (chat) | *(no dedicated branch)* | Claude Opus 4.6 | 863,169 | 6,100 | 24 |
| Update Branches table | `miyako-update-readme-branches-table` | Claude Sonnet 5 | 608,436 | 3,399 | 13 |
| Add token usage section | `miyako-supreme-fiesta` | Claude Sonnet 5 | 1,059,388 | 6,008 | 21 |
| **Total** | | | **20,612,732** | **104,018** | **331** |

## Screenshots

<img width="724" height="592" alt="Screenshot 2026-07-22 at 14 33 37" src="https://github.com/user-attachments/assets/59d8d63c-9265-4be2-adc0-d594be493ab0" />
<img width="1160" height="702" alt="Screenshot 2026-07-22 at 14 33 47" src="https://github.com/user-attachments/assets/b49c1b8d-cb7f-45cc-8577-4f8d91494657" />
<img width="1160" height="702" alt="Screenshot 2026-07-22 at 14 33 55" src="https://github.com/user-attachments/assets/a3ba8131-997c-4a7b-8669-b62a9bce7dc7" />

