# UnlockTool Offline changelog

Customer-facing changes are recorded here and on the [public changelog](https://tfastdigital.github.io/unlocktool-offline/changelog/). Keep internal security details, private paths, credentials and implementation secrets out of this file.

## Unreleased

### Added

- Searchable public model catalogue generated from the application catalogues.
- Public feature and operation-status documentation.
- A repeatable workflow for publishing model, operation and release-note changes.

## 2026.11.15.0 — Application Hotfix

Released 15 November 2026.

### Fixed

- Corrected the false `Unexpected file: Uninstall.exe` installation-integrity warning.
- Kept validation for unrelated or modified application files.

### Update instructions

- Existing users install the application update over `C:\UnlockTool`.
- Existing payload, licence, configuration and logs are preserved.
- The 7 GB payload does not need to be downloaded again.
- Added the official [installation and activation video guide](https://youtu.be/gk_cdvRZn0A).

## 2026.11.08.0 — Full Setup + Payload

Released 12 November 2026.

### Added

- Expanded Apple USB device-information output.
- Organised per-operation logs and clearer failure reports.
- Telegram licence activation and official-channel membership checks.
- One-PC email licence binding and administration controls.
- Bundled runtime dependencies.
- Eight-part payload package and branded extractor.
- Disk-space and archive verification before extraction.

### Known limitations

- Real USB operations were not comprehensively hardware-tested across every listed model and firmware version.
- Samsung operations that depend on the absent compatible automated Odin helper remain unavailable; the clean bundled Odin tool is for supported manual workflows and is not a drop-in replacement.
- Some catalogue actions may report missing data or an unsupported loader. Those actions must not be presented as verified support.
