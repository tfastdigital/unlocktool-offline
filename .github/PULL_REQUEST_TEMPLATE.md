## Public change

- [ ] Model catalogue
- [ ] Operation/status
- [ ] Customer-visible feature
- [ ] Changelog/release
- [ ] Documentation only

## Evidence

Describe the source change, automated test and any real-device validation. State explicitly if hardware validation was not performed.

## Publishing checklist

- [ ] Public wording matches the verified behavior.
- [ ] Catalogue presence is not presented as universal hardware support.
- [ ] Known limitations and required helpers are documented.
- [ ] No source code, payload, loader, credential, customer data, log or private path is included.
- [ ] `pwsh -File tools/Test-PublicContent.ps1` passes.
- [ ] Models, operations, features and changelog pages were updated together where applicable.
