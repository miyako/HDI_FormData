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
