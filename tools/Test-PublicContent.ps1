[CmdletBinding()]
param([string] $RepositoryRoot = (Split-Path -Parent $PSScriptRoot))

$ErrorActionPreference = 'Stop'
$failures = [System.Collections.Generic.List[string]]::new()

function Require-File([string] $RelativePath) {
    $path = Join-Path $RepositoryRoot $RelativePath
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
        $failures.Add("Missing required file: $RelativePath")
    }
}

@(
    'CHANGELOG.md',
    'DEVELOPMENT.md',
    'docs/FEATURES.md',
    'docs/SUPPORTED-MODELS.md',
    'docs/SUPPORTED-OPERATIONS.md',
    'site/data/catalog.json',
    'site/assets/catalog.js',
    'site/features/index.html',
    'site/models/index.html',
    'site/changelog/index.html'
) | ForEach-Object { Require-File $_ }

$catalogPath = Join-Path $RepositoryRoot 'site/data/catalog.json'
if (Test-Path -LiteralPath $catalogPath -PathType Leaf) {
    try {
        $catalog = Get-Content -LiteralPath $catalogPath -Raw | ConvertFrom-Json
        $count = [int](($catalog.catalogues | Measure-Object count -Sum).Sum)
        if ($catalog.schemaVersion -ne 1) { $failures.Add('Unsupported catalogue schema version.') }
        if ($catalog.catalogues.Count -lt 1) { $failures.Add('Catalogue contains no brands.') }
        if ($catalog.totalModels -ne $count) { $failures.Add("Catalogue total mismatch: totalModels=$($catalog.totalModels), sum=$count") }
        foreach ($entry in $catalog.catalogues) {
            if ($entry.count -ne $entry.models.Count) { $failures.Add("Model count mismatch for $($entry.brand).") }
        }
    } catch {
        $failures.Add("Invalid catalogue JSON: $($_.Exception.Message)")
    }
}

$publicFiles = Get-ChildItem -LiteralPath $RepositoryRoot -Recurse -File | Where-Object {
    $_.FullName -notmatch '[\\/]\.git[\\/]'
}
$forbiddenPatterns = @(
    'C:\\UNLOCKTOOL OFFLINE',
    '-----BEGIN (RSA |EC |OPENSSH )?PRIVATE KEY-----',
    'bot[0-9]{8,}:[A-Za-z0-9_-]{20,}',
    'license\.key'
)
foreach ($file in $publicFiles) {
    if ($file.Length -gt 5MB) { $failures.Add("Unexpected public file larger than 5 MB: $($file.FullName)"); continue }
    $text = Get-Content -LiteralPath $file.FullName -Raw -ErrorAction SilentlyContinue
    foreach ($pattern in $forbiddenPatterns) {
        if ($text -match $pattern) { $failures.Add("Forbidden public content in $($file.FullName): $pattern") }
    }
}

if ($failures.Count -gt 0) {
    $failures | ForEach-Object { Write-Error $_ }
    exit 1
}

Write-Host "PASS: public catalogue, documentation and exposure checks passed."
