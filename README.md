![version](https://img.shields.io/badge/version-20%2B-E23089)
![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm%20|%20win-64&color=blue)

# HDI_FormData

Passing structured data back and forth between a parent form and a modal dialog using plain 4D objects and the `Form` command. Originally published by 4D as a **HDI** (*How Do I*) example for **4D v17**; converted from the binary `.4DB` to the `.4DProject` architecture so it runs on current 4D releases.

## What it demonstrates

- Displaying an object's properties on a form by binding form controls directly to `Form.property` expressions rather than to process variables.
- Passing an object as the data context of a dialog: `DIALOG("Edit_Address"; InvoiceAddress1)` hands the object to the form, whose fields read and write it through the `Form` command.
- Editing a copy in a modal window and reading the edited object back into the parent (`Result:=InvoiceAddress1`) after the dialog closes.
- Building address objects entirely in code with `New object` (`New_Addresses`), including a default record and two alternates.
- Swapping a nested `Label` sub-object at runtime to relabel the address display in English or French, forcing a redraw by re-assigning the object variable to itself (`InvoiceAddress:=InvoiceAddress`).
- Loading demo text from a JSON file with `JSON Parse` and a collection `query` (`Initinfo`).
- Showing and hiding groups of result widgets by name wildcard with `OBJECT SET VISIBLE(*; "RES@"; ...)`.

## Key commands

| Command | Used for |
|---|---|
| `DIALOG` | Opening `Edit_Address` with an address object as its data context |
| `Form` | Binding the dialog's fields to the passed object (`Form.CompanyName`, etc.) |
| `Open form window` | Creating the movable dialog window before `DIALOG` |
| `New object` | Constructing the invoice/delivery address objects in code |
| `JSON Parse` | Parsing `Samples.json` into a collection in `Initinfo` |
| `File` / `Localized document path` | Locating the localised `Samples.json` sample file |
| `OBJECT SET VISIBLE` | Toggling `RES@` result widgets before and after editing |
| `CALL WORKER` / `CALL FORM` | Re-centring the singleton splash window from `00_Start` |

## How it works

`00_Start` is the startup method: on first call it opens the `HDI` splash form (title, blog link, info text) and re-uses a single window through `CALL WORKER`/`CALL FORM`. The splash's demo button opens `HDI2`, the actual demo.

`HDI2/method.4dm` drives the demo. On `On Load` it calls `Initinfo`, which reads `Samples.json` via `Localized document path` + `File.getText()`, parses it with `JSON Parse`, and pulls a labelled string with `query`. On `On Page Change` it calls `New_Addresses`, which builds `InvoiceAddress`, `InvoiceAddress1` and `InvoiceAddress2` with `New object` and attaches an English `Label` object.

The form displays these objects by binding controls to dot-notation data sources (`InvoiceAddress`, `Result`, `TextInfo`). The most interesting piece is the round-trip: `HDI2/ObjectMethods/Button4.4dm` hides the previous result, opens `Edit_Address` with `Open form window`, then `DIALOG("Edit_Address"; InvoiceAddress1)`. Inside `Edit_Address/form.4DForm` every field binds to `Form.CompanyName`, `Form.LastName`, and so on -- the `Form` command exposes the passed object as the form's data. After `CLOSE WINDOW` the edited object is copied back with `Result:=InvoiceAddress1` and the result widgets are revealed.

`Bouton image` and `Bouton image1` re-language the display by replacing `InvoiceAddress.Label` with the `Address_FR` or `Address_EN` object and re-assigning `InvoiceAddress` to itself to trigger a refresh.

## Points of interest

- There is no table or field in the structure -- the whole demo runs on in-memory objects, so `Form` here refers to the object passed to `DIALOG`, not a record.
- Re-assigning `InvoiceAddress:=InvoiceAddress` is the idiom used to force a bound display object to redraw after a nested property changes.
- The two edit buttons pass *different* objects (`InvoiceAddress1` vs `InvoiceAddress2`) to the same `Edit_Address` form, showing the form is fully data-driven.
- Sample text is externalised to a localised `Samples.json` resolved through `Localized document path`, so the JSON follows the current language.

## Modernisation notes

Converted from the original binary `.4DB` to a 4D project. Each branch below is a self-contained modernisation step.

| Branch | Description | Guidance |
|--------|-------------|----------|
| [`miyako-fix-c-object-syntax-error`](../../tree/miyako-fix-c-object-syntax-error) | Replace deprecated `C_*` declarations with modern `var` / `#DECLARE` syntax and fix `C_OBJECT` syntax errors | [`4dmodernise`](https://github.com/miyako/skills/tree/main/4d-skills/skills/4dmodernise) |
| [`miyako-replace-menu-method-wrappers`](../../tree/miyako-replace-menu-method-wrappers) | Replace legacy menu method wrappers with 4D standard actions | [`4dproject`](https://github.com/miyako/skills/tree/main/4d-skills/skills/4dproject) |
| [`miyako-xliff-localization`](../../tree/miyako-xliff-localization) | Add XLIFF localisation for menus, forms, and method code | [`4dlocalise`](https://github.com/miyako/skills/tree/main/4d-skills/skills/4dlocalise) |
| [`miyako-reimagined-umbrella`](../../tree/miyako-reimagined-umbrella) | Hide subroutines and form-dependent methods from the Run Method dialog | [`4dmethods`](https://github.com/miyako/skills/tree/main/4d-skills/skills/4dmethods) |
| [`miyako-modernise-startup-dialog`](../../tree/miyako-modernise-startup-dialog) | Modernise the startup dialog pattern with form and object methods | [`4dstartup`](https://github.com/miyako/skills/tree/main/4d-skills/skills/4dstartup), [hdi.startup.instructions.md](.github/instructions/hdi.startup.instructions.md) |
| [`miyako-dark-mode-support`](../../tree/miyako-dark-mode-support) | Add dark mode support with CSS stylesheets and macOS Tahoe Liquid Glass appearance | [`4dcss`](https://github.com/miyako/skills/tree/main/4d-skills/skills/4dcss), [`4dform`](https://github.com/miyako/skills/tree/main/4d-skills/skills/4dform) |

## References

- [4D blog: Passing data back and forth between forms](https://blog.4d.com/passing-data-back-and-forth-between-forms/)
- [4D documentation: DIALOG](https://developer.4d.com/docs/commands/dialog)
- [4D documentation: Form (command)](https://developer.4d.com/docs/commands/form)
- [4D documentation: JSON Parse](https://developer.4d.com/docs/commands/json-parse)
- Original download: [HDI_FormData.zip](https://download.4d.com/Demos/4D_v16_R5/HDI_FormData.zip)
- Index of v16/v17 HDIs: [miyako/4d-hdi](https://github.com/miyako/4d-hdi)

## Screenshots

<img width="724" height="592" alt="Screenshot 2026-07-22 at 14 33 37" src="https://github.com/user-attachments/assets/59d8d63c-9265-4be2-adc0-d594be493ab0" />
<img width="1160" height="702" alt="Screenshot 2026-07-22 at 14 33 47" src="https://github.com/user-attachments/assets/b49c1b8d-cb7f-45cc-8577-4f8d91494657" />
<img width="1160" height="702" alt="Screenshot 2026-07-22 at 15 22 01" src="https://github.com/user-attachments/assets/04e73222-3597-4279-957b-4ee89bd1f37a" />
