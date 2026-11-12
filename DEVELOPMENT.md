# Public documentation update workflow

Use this workflow whenever private application development adds or changes a model, operation, loader-dependent capability, feature or release.

## 1. Change and verify the private source

1. Implement the source/payload change in the private repository.
2. Add or update automated tests.
3. Run the relevant software checks and, where required, a controlled real-device test.
4. Record the result as available, model-dependent, hardware-unverified, limited or unavailable.
5. Do not copy source code, payload binaries, loaders, credentials, customer data, logs or private paths into this public repository.

## 2. Update public product data

- Model added or renamed: regenerate `site/data/catalog.json` with `tools/Update-PublicCatalog.ps1` and update `docs/SUPPORTED-MODELS.md` if catalogue totals change.
- Operation added or status changed: update `docs/SUPPORTED-OPERATIONS.md` and `site/features/index.html`.
- Customer-visible feature added: update `docs/FEATURES.md` and the website features page.
- Release prepared: move verified entries from `CHANGELOG.md` → `Unreleased` into a dated version section and update `site/changelog/index.html`.
- Download package changed: update the version, size, disk-space requirement, checksums and download page.

## 3. Review before publishing

1. Describe only behavior supported by source/test evidence.
2. Do not call catalogue presence “tested support.”
3. State hardware-test gaps and required helpers.
4. Run `pwsh -File tools/Test-PublicContent.ps1`.
5. Review the diff for secrets and private paths.
6. Open a pull request. After approval and merge to `main`, GitHub Pages deploys the `site` directory automatically.

## Release-note style

Publish customer-visible operational changes: newly supported models, new operations, reliability fixes, required drivers/helpers, payload changes and known limitations. Do not publish internal design work, security controls, keys, private infrastructure details or unverified claims.
